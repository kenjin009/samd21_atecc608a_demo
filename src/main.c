/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include "cryptoauthlib.h"

typedef struct 
{
	uint8_t pubKey[64];
} ASYMM_PUBLIC_KEY;
static uint8_t cipherText[16];

#define DEFAULT_ADDR 0xc0
extern ATCAIfaceCfg atecc608a_0_init_data;

uint8_t configZoneRead[128];

#define CHECK_STATUS(s)                                         \
    if(s != ATCA_SUCCESS) {                                     \
        printf("Error: Line %d in %s\r\n", __LINE__, __FILE__); \
        return;                                                 \
    }
	

ASYMM_PUBLIC_KEY remotePublicKeyStore[]=
{
    {{0x64, 0x81, 0x69, 0x0a, 0xb7, 0x53, 0x91, 0x51,
0x14, 0xdd, 0xad, 0x9d, 0xa9, 0xe9, 0x87, 0xa0,
0xce, 0x9b, 0x01, 0xb1, 0x1e, 0x28, 0xe7, 0xa9,
0x80, 0x31, 0x13, 0xc9, 0x83, 0x3f, 0x0a, 0x2e,
0xd9, 0x89, 0x86, 0xed, 0xe6, 0x71, 0x87, 0x68,
0x6c, 0xc3, 0x6b, 0x80, 0xe7, 0xe1, 0x3b, 0x25,
0xce, 0x84, 0xa3, 0x4d, 0x56, 0x52, 0xae, 0x59,
0x49, 0x49, 0x81, 0xb8, 0xb4, 0x5b, 0x4e, 0x39,}},
};

void PrintBytes(const uint8_t * ptr, uint16_t length) 
{
    uint16_t i = 0;
    uint8_t line_count = 0;
    for(;i < length; i++) 
    {
        printf("0x%02x, ",ptr[i]);
        line_count++;
        if(line_count == 8) 
        {
            printf("\r\n");
            line_count = 0;
        }
    }

    printf("\r\n");
}

void CommandInit(SYS_CMD_DEVICE_NODE* pCmdIO, int argc, char** argv)
{
    ATCA_STATUS status;
	if( argc>1 )
	{
		unsigned char SlaveAddr;
		SlaveAddr = (unsigned char)strtol(argv[1], NULL, 16)<<1;
		atecc608a_0_init_data.atcai2c.slave_address = SlaveAddr;
		printf("\r\nInitial CryptoAuthLib:\r\n");
		printf("- i2caddr Byte = %X\r\n", SlaveAddr);
		
		// Inititalize CryptoAuthLib
		status = atcab_init(&atecc608a_0_init_data);
		CHECK_STATUS(status);
	}
	else
	{
		printf("\r\nMust have a address, e.g. init 60\r\n");		
	}
}

void CommandReadSN(SYS_CMD_DEVICE_NODE* pCmdIO, int argc, char** argv)
{
    ATCA_STATUS status;
    bool isLocked;
    uint8_t eccVersion[ATCA_WORD_SIZE];
    uint8_t serialNumber[ATCA_SERIAL_NUM_SIZE];    
	// Wake up
	status = atcab_wakeup();
	CHECK_STATUS(status);

	// Read ECC chip version
    status = atcab_info((uint8_t*)&eccVersion);
    CHECK_STATUS(status);
    printf("\r\nECC version:");
    PrintBytes(eccVersion,ATCA_WORD_SIZE);
    printf("\r\n");
	
	// Read serial number
    status = atcab_read_serial_number((uint8_t*)&serialNumber);
    CHECK_STATUS(status);
    printf("\r\nSerial Number:");
    PrintBytes(serialNumber,ATCA_SERIAL_NUM_SIZE);
    printf("\r\n");
    
	status = atcab_is_locked(LOCK_ZONE_CONFIG, &isLocked); 
	CHECK_STATUS(status); 
	if(isLocked) 
    { 
		printf("\r\nChip already configured and locked\r\n");
	} 
    else 
    { 
		printf("\r\nConfig zone is unlocked and ready for programming\r\n"); 
	}    
} 

void CommandReadConfig(SYS_CMD_DEVICE_NODE* pCmdIO, int argc, char** argv)
{
    ATCA_STATUS status;
    
	status = atcab_read_config_zone(configZoneRead); 
	CHECK_STATUS(status); 
	atcab_printbin_label("Config Zone data:\r\n",configZoneRead, 128); 
}

void CommandProvision(SYS_CMD_DEVICE_NODE* pCmdIO, int argc, char** argv)
{
    ATCA_STATUS status;
    uint8_t AESKeySlot = 4;    
    uint8_t symmetricSlot = 5;
    uint8_t privateKeySolt = 0;
	uint8_t slaveAddr;
    
    atecc608a_0_init_data.atcai2c.slave_address = DEFAULT_ADDR;
    
	if( argc>1 )
	{
		slaveAddr = (uint8_t)strtol(argv[1], NULL, 16)<<1;
		printf("- i2caddr Byte = %X\r\n", slaveAddr);
		status = atcab_init(&atecc608a_0_init_data);
		CHECK_STATUS(status);
	}
	else
	{
		printf("\r\nMust have a address, e.g. provision 60\r\n");	
        return;
	}
    
	// Un-programmed configuration zone image
	uint8_t configZone[128] = 
    {
	
		//Bytes 0 - 15
		0x01, 0x23, 0xFF, 0xFF, 0x00, 0x00, 0x60, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0xEE, 0x01, 0x35, 0x00,
		
		//I2C address (bytes 16 - 19)
		0xC0, 0x00, 0x00, 0x00,
		
		//Start of SlotConfig slots 0 - 15
		//Bytes 20 - 51
		0x00, 0x00, 
		0x00, 0x00, 
		0x00, 0x00, 
		0x00, 0x00, 
		0x00, 0x00, 
		0x00, 0x00, 
		0x00, 0x00, 
		0x00, 0x00, 
		0x00, 0x00, 
		0x00, 0x00, 
		0x00, 0x00, 
		0x00, 0x00, 
		0x00, 0x00, 
		0x00, 0x00, 
		0x00, 0x00, 
		0x00, 0x00, 
		
		//Counters
		0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 
		0xFF, 0xFF, 0xFF, 0xFF,	0x00, 0x00, 0x00, 0x00, 
		
		//Bytes 68 - 95		
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
		0x00, 0x00, 0x00, 0x00, 0x55, 0x55, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		
		//KeyConfig slots 0 - 15
		//Bytes 96 - 128
		0x1C, 0x00, 
		0x1C, 0x00, 
		0x1C, 0x00, 
		0x1C, 0x00,  
		0x1C, 0x00, 
		0x1C, 0x00, 
		0x1C, 0x00, 
		0x1C, 0x00,
		0x1C, 0x00, 
		0x1C, 0x00,
		0x1C, 0x00, 
		0x1C, 0x00,  
		0x1C, 0x00, 
		0x1C, 0x00, 
		0x1C, 0x00, 
		0x1C, 0x00	
	
	};	    
    
    
    /*1. Read the configure zone*/
    printf("\r\n 1. Start to read Config Zone\r\n");
	status = atcab_read_config_zone(configZoneRead); 
	CHECK_STATUS(status); 
    printf("Config Zone data:\r\n");
    PrintBytes(configZoneRead,128);
    printf("\r\n");
    if(configZoneRead[86]!=0x55 || configZoneRead[87]!=0x55)
    {
        printf("\r\n---FAILED---\r\nChip already configured and locked\r\n");
        return;
    }
    /*2. Configure the symmetric key slot*/
    printf("\r\n 2. Start to configure the symmetric key slot\r\n");
    configZone[20+(AESKeySlot*2)] = (1 << 7);//IsSecrete
    configZone[21+(AESKeySlot*2)] = (1 << 7);//Never Writable
    configZone[96+(AESKeySlot*2)] = (6<<2);//AES KEY
    configZone[13] |= 0x01;//Enable AES
    
    configZone[20+(symmetricSlot*2)] = (1 << 7);//IsSecrete
    configZone[21+(symmetricSlot*2)] = (1 << 7);//Never Writable 
    configZone[96+(symmetricSlot*2)] = (7<<2);//SHA KEY
    /*3. Configure the asymmetric key slot*/
    printf("\r\n 3. Start to configure the asymmetric key slot\r\n"); 
    configZone[96+(privateKeySolt*2)] = (4<<2);//P256 NIST ECC KEY
    configZone[96+(privateKeySolt*2)] |= 0x01;//Private
    configZone[96+(privateKeySolt*2)] |= (0x01<<1);//Can generate public key
    configZone[20+(privateKeySolt*2)] = (0x01<<7);//IsSecrete
    configZone[20+(privateKeySolt*2)] |= 0x01;//External signatures
    configZone[20+(privateKeySolt*2)] |= (0x01<<2);//ECDH operation is permitted
    configZone[16] = slaveAddr; // I2C address
    /*4. Lock the configuration zone*/
    printf("\r\n 4. Start to lock the configuration zone\r\n");     
    status = atcab_write_config_zone(configZone); 
	CHECK_STATUS(status); 
	status = atcab_lock_config_zone(); 
	CHECK_STATUS(status); 
    /*5. Write the data zone*/
    printf("\r\n 5. start to Write the data zone\r\n");  
 	const uint8_t key4[] = 
    { 
		0xf5, 0x11, 0x11, 0x11,0x11, 0x11, 0x11, 0x11,
	    0x11, 0x11, 0x11, 0x11,0x11, 0x11, 0x11, 0x11, 
		0x11, 0x11, 0x11, 0x11,0x11, 0x11, 0x11, 0x11, 
		0x11, 0x11, 0x11, 0x11,0x11, 0x11, 0x11, 0x5f,
	};
 	const uint8_t key5[] = 
    { 
		0xf5, 0x22, 0x22, 0x22,0x22, 0x22, 0x22, 0x22,
	    0x22, 0x22, 0x22, 0x22,0x22, 0x22, 0x22, 0x22, 
		0x22, 0x22, 0x22, 0x22,0x22, 0x22, 0x22, 0x22, 
		0x22, 0x22, 0x22, 0x22,0x22, 0x22, 0x22, 0x5f,
	};
	status = atcab_write_bytes_zone(ATCA_ZONE_DATA, 4, 0, key4, 32); 
	CHECK_STATUS(status);    
	status = atcab_write_bytes_zone(ATCA_ZONE_DATA, 5, 0, key5, 32); 
	CHECK_STATUS(status);
    printf("Wrote symmetric key\r\n");
    uint8_t pubkey[64]; 
    status = atcab_genkey(0, pubkey); 
    CHECK_STATUS(status); 
    printf("Created Private key\r\n");
    /*6. lock the data zone*/
    printf("\r\n 6. start to lock the data zone\r\n"); 
    status = atcab_lock_data_zone(); 
	CHECK_STATUS(status);
    printf("\r\n------The chip was successfully provisioned------\r\n");
}
void CommandSymmetricAuth(SYS_CMD_DEVICE_NODE* pCmdIO, int argc, char** argv)
{
	volatile ATCA_STATUS status;
    uint8_t hostAddr, remoteAddr;
    
	if( argc>2 )
	{
		hostAddr = (uint8_t)strtol(argv[1], NULL, 16)<<1;
		printf("- host i2c addr Byte = %X\r\n", hostAddr);
		remoteAddr = (uint8_t)strtol(argv[2], NULL, 16)<<1;
		printf("- remote i2c addr Byte = %X\r\n", remoteAddr);
	}
	else
	{
		printf("\r\nMust have host and remote address, e.g. symmetric 60 61\r\n");	
        return;
	}
    
	printf("\r\nSymmetric Authentication in progress\n\r");  
    atecc608a_0_init_data.atcai2c.slave_address = hostAddr;
	status = atcab_init( &atecc608a_0_init_data ); 
	CHECK_STATUS(status);
	uint8_t serial_number[ATCA_SERIAL_NUM_SIZE]; 
	status = atcab_read_serial_number(serial_number);
	CHECK_STATUS(status);
	printf("Serial Number of host\r\n"); 
	PrintBytes(serial_number, 9); 

	uint8_t nonce[32]; 
	status = atcab_random(nonce); 
	CHECK_STATUS(status); 
	printf("Random from host\r\n"); 
	PrintBytes(nonce, 32);

    atecc608a_0_init_data.atcai2c.slave_address = remoteAddr;
    status = atcab_init( &atecc608a_0_init_data); 
	CHECK_STATUS(status);
    status = atcab_read_serial_number(serial_number); 
	CHECK_STATUS(status);
	printf("Serial Number of remote\r\n"); 
	PrintBytes(serial_number, 9); 

	uint8_t mac[32]; 
	uint8_t slot = 5; 
	uint8_t mode = (1<<6); // include serial number 
	status = atcab_mac(mode, slot, nonce, mac); 
	CHECK_STATUS(status); 
	printf("MAC from remote\r\n");
	PrintBytes(mac, 32);

    atecc608a_0_init_data.atcai2c.slave_address = hostAddr;
	status = atcab_init( &atecc608a_0_init_data ); 
	uint8_t otherdata[CHECKMAC_OTHER_DATA_SIZE]; 
	memset(otherdata, 0x00, CHECKMAC_OTHER_DATA_SIZE); 
	otherdata[0] = 0x08; //match to mac command byte opp code 
	otherdata[1] = mode;
	otherdata[2] = slot; 
	otherdata[3] = 0x00;
	otherdata[7] = serial_number[4]; 
	otherdata[8] = serial_number[5];
	otherdata[9] = serial_number[6]; 
	otherdata[10] = serial_number[7];
	otherdata[11] = serial_number[2]; 
	otherdata[12] = serial_number[3];
	mode = 0;
	status = atcab_checkmac(mode, slot, nonce, mac, otherdata); 
	if(status == ATCA_SUCCESS) {
		printf("Authenticated by host\r\n\r\n"); 
	} else { 
		printf("Failed to authenticate\r\n\r\n"); 
	}  
}

void CommandAsymmetricAuth(SYS_CMD_DEVICE_NODE* pCmdIO, int argc, char** argv)
{
	volatile ATCA_STATUS status;
    uint8_t hostAddr, remoteAddr;
    
	if( argc>2 )
	{
		hostAddr = (uint8_t)strtol(argv[1], NULL, 16)<<1;
		printf("- host i2c addr Byte = %X\r\n", hostAddr);
		remoteAddr = (uint8_t)strtol(argv[2], NULL, 16)<<1;
		printf("- remote i2c addr Byte = %X\r\n", remoteAddr);
	}
	else
	{
		printf("\r\nMust have host and remote address, e.g. asymmetric 60 61\r\n");
        return;
	}
    printf("\r\nAsymmetric Authentication in progress\r\n");      
    atecc608a_0_init_data.atcai2c.slave_address = hostAddr;
	status = atcab_init( &atecc608a_0_init_data); 
    CHECK_STATUS(status);

    uint8_t nonce[32]; 
    uint8_t signature[64];
    status = atcab_random(nonce); 
    CHECK_STATUS(status); 
    printf("Random from host\r\n"); 
    PrintBytes(nonce, 32);
    
    atecc608a_0_init_data.atcai2c.slave_address = remoteAddr;
    status = atcab_init( &atecc608a_0_init_data );
    CHECK_STATUS(status);
    uint8_t slot = 0; 
    status = atcab_sign(slot, nonce, signature); 
    CHECK_STATUS(status); 
    printf("Signature from remote\r\n"); 
    PrintBytes(signature, 64);
    
    uint8_t tempPubk[64]; 
    status = atcab_get_pubkey(slot, tempPubk); 
    CHECK_STATUS(status); 
    printf("Remote disposable public key\r\n"); 
    PrintBytes(tempPubk, 64);

    atecc608a_0_init_data.atcai2c.slave_address = hostAddr;  
    status = atcab_init( &atecc608a_0_init_data ); 
    CHECK_STATUS(status);
    bool verify = false; 
    bool keyFound = false; 
    uint8_t i = 0; 
    for(;i < sizeof(remotePublicKeyStore)/sizeof(ASYMM_PUBLIC_KEY);i++)
    { 
        if(memcmp(&remotePublicKeyStore[i], tempPubk, 64) == 0)
        { 
            keyFound = true;
            break; 
        }
    }
    if(keyFound)
    { 
        status = atcab_verify_extern(nonce, signature, remotePublicKeyStore[i].pubKey, &verify); 
    }
    else
    {
        printf("Remote public key not found\r\n");
        printf("Failed to authenticate\r\n");
        return;
    }
    if(verify)
    {
        printf("Authenticated by host\r\n"); 
    } 
    else 
    { 
        printf("Failed to authenticate\r\n");
    }    
}

void CommandECDH1(SYS_CMD_DEVICE_NODE* pCmdIO, int argc, char** argv)
{
    volatile ATCA_STATUS status;
    uint8_t tempHostPubk[64];
    uint8_t tempRemotePubk[64]; 
    uint8_t premasterHost[32];
    uint8_t premasterRemote[32];
    uint8_t hostAddr, remoteAddr;

	if( argc>2 )
	{
		hostAddr = (uint8_t)strtol(argv[1], NULL, 16)<<1;
		printf("- host i2c addr Byte = %X\r\n", hostAddr);
		remoteAddr = (uint8_t)strtol(argv[2], NULL, 16)<<1;
		printf("- remote i2c addr Byte = %X\r\n", remoteAddr);
	}
	else
	{
		printf("\r\nMust have host and remote address, e.g. ecdh1 60 61\r\n");
        return;
	}    
    
    printf("\r\nECDH in progress\r\n");
    
    atecc608a_0_init_data.atcai2c.slave_address = hostAddr;
	status = atcab_init( &atecc608a_0_init_data); 
    CHECK_STATUS(status);    
    printf("Temporarily generated host public key:\r\n"); 
    atcab_genkey(ATCA_TEMPKEY_KEYID,tempHostPubk);    
    PrintBytes(tempHostPubk, 64); 
    
    atecc608a_0_init_data.atcai2c.slave_address = remoteAddr;
	status = atcab_init( &atecc608a_0_init_data); 
    CHECK_STATUS(status);    
    printf("Temporarily generated remote public key:\r\n"); 
    atcab_genkey(ATCA_TEMPKEY_KEYID,tempRemotePubk);    
    PrintBytes(tempRemotePubk, 64);
    
    atecc608a_0_init_data.atcai2c.slave_address = hostAddr;
	status = atcab_init( &atecc608a_0_init_data); 
    CHECK_STATUS(status);      ; 
    printf("Use remote public key to generate host ECDH premaster key :\r\n");
    atcab_ecdh_tempkey(tempRemotePubk,premasterHost); 
    PrintBytes(premasterHost, 32);
    
    atecc608a_0_init_data.atcai2c.slave_address = remoteAddr;
	status = atcab_init( &atecc608a_0_init_data); 
    CHECK_STATUS(status);      
    printf("Use host public key to generate remote ECDH premaster key :\r\n"); 
    atcab_ecdh_tempkey(tempHostPubk,premasterRemote);
    PrintBytes(premasterHost, 32);
    
    if(memcmp(premasterRemote,premasterHost,32)==0)
    {
        printf("ECDH successful!!\r\n"); 
        printf("Generated the same premaster key in the host and remote\r\n"); 
    }
    else
    {
        printf("ECDH failed!!\r\n"); 
        printf("Generated different premaster key in the host and remote\r\n");    
    }
}

void CommandECDH2(SYS_CMD_DEVICE_NODE* pCmdIO, int argc, char** argv)
{
    volatile ATCA_STATUS status;
    uint8_t tempHostPubk[64];
    uint8_t tempRemotePubk[64]; 
    uint8_t hostAddr, remoteAddr;
    uint8_t mode;

	if( argc>2 )
	{
		hostAddr = (uint8_t)strtol(argv[1], NULL, 16)<<1;
		printf("- host i2c addr Byte = %X\r\n", hostAddr);
		remoteAddr = (uint8_t)strtol(argv[2], NULL, 16)<<1;
		printf("- remote i2c addr Byte = %X\r\n", remoteAddr);
	}
	else
	{
		printf("\r\nMust have host and remote address, e.g. ecdh2 60 61\r\n");
        return;
	}    
    
    printf("\r\nECDH in progress\r\n");
    
    atecc608a_0_init_data.atcai2c.slave_address = hostAddr;
	status = atcab_init( &atecc608a_0_init_data); 
    CHECK_STATUS(status);    
    printf("Temporarily generated host public key:\r\n"); 
    atcab_genkey(ATCA_TEMPKEY_KEYID,tempHostPubk);    
    PrintBytes(tempHostPubk, 64); 
    
    atecc608a_0_init_data.atcai2c.slave_address = remoteAddr;
	status = atcab_init( &atecc608a_0_init_data); 
    CHECK_STATUS(status);    
    printf("Temporarily generated remote public key:\r\n"); 
    atcab_genkey(ATCA_TEMPKEY_KEYID,tempRemotePubk);    
    PrintBytes(tempRemotePubk, 64);
    
    printf("\r\nRun ECDH in host, generate premaster key in ECC608A.\r\n"); 
    atecc608a_0_init_data.atcai2c.slave_address = hostAddr;
	status = atcab_init( &atecc608a_0_init_data); 
    CHECK_STATUS(status);  
    mode = ECDH_MODE_SOURCE_TEMPKEY | ECDH_MODE_OUTPUT_CLEAR | ECDH_MODE_COPY_TEMP_KEY;
    status=atcab_ecdh_base(mode, 0, tempRemotePubk, NULL, NULL);
    CHECK_STATUS(status); 
    
    printf("\r\nRun ECDH in remote, generate premaster key in ECC608A.\r\n"); 
    atecc608a_0_init_data.atcai2c.slave_address = remoteAddr;
	status = atcab_init( &atecc608a_0_init_data); 
    CHECK_STATUS(status);       
    mode = ECDH_MODE_SOURCE_TEMPKEY | ECDH_MODE_OUTPUT_CLEAR | ECDH_MODE_COPY_TEMP_KEY;
    status = atcab_ecdh_base(mode, 0, tempHostPubk, NULL, NULL);
    CHECK_STATUS(status);  
    
    uint8_t i;
    uint8_t plainText[16];
    uint8_t cipherText[16];
    uint8_t recoverText[16];
    uint32_t plainSrc = SYS_TIME_CounterGet();    
    /*Get random plain text*/
    for(i=0;i<4;i++)
    {
        plainText[i*4]=plainSrc&0xff;
        plainText[i*4+1]=(plainSrc>>8)&0xff;
        plainText[i*4+2]=(plainSrc>>16)&0xff;
        plainText[i*4+3]=(plainSrc>>24)&0xff;
    }
    printf("\r\nExample message to be sent to remote:\r\n"); 
    PrintBytes(plainText, 16);
     
    atecc608a_0_init_data.atcai2c.slave_address = hostAddr;
	status = atcab_init( &atecc608a_0_init_data); 
    CHECK_STATUS(status);      
    status = atcab_aes_encrypt(ATCA_TEMPKEY_KEYID,0,plainText,cipherText);
    CHECK_STATUS(status);
    printf("\r\nHost encrypt the message, the cypher text:\r\n"); 
    PrintBytes(cipherText, 16);  
      
    atecc608a_0_init_data.atcai2c.slave_address = remoteAddr;
	status = atcab_init( &atecc608a_0_init_data); 
    CHECK_STATUS(status);      
    status = atcab_aes_decrypt(ATCA_TEMPKEY_KEYID,0,cipherText,recoverText);
    CHECK_STATUS(status);
    printf("\r\nRemote decrypted it, get the plain text:\r\n"); 
    PrintBytes(recoverText, 16);
    
    
    if(memcmp(recoverText,plainText,16)==0)
    {
        printf("\r\nRemote recover the cypher text successfully using the premaster key\r\n"); 
    }
    else
    {
        printf("ECDH failed!!\r\n"); 
        printf("Host and remote donot have the same premaster key\r\n");    
    }
}


void CommandAESEncrypt(SYS_CMD_DEVICE_NODE* pCmdIO, int argc, char** argv)
{
    volatile ATCA_STATUS status;
    uint8_t AESKeySlot = 4; 
    uint8_t keyBlock=0;
    uint8_t addr,i;
 	uint8_t plainText[16]; 
    uint32_t plainSrc = SYS_TIME_CounterGet();

	if( argc>1 )
	{
		addr = (uint8_t)strtol(argv[1], NULL, 16)<<1;
        atecc608a_0_init_data.atcai2c.slave_address = addr;
		status = atcab_init(&atecc608a_0_init_data);
		CHECK_STATUS(status);
	}
	else
	{
		printf("\r\nMust have a address, e.g. aesen 60\r\n");	
        return;
	}           
    
    /*Get random plain text*/
    for(i=0;i<4;i++)
    {
        plainText[i*4]=plainSrc&0xff;
        plainText[i*4+1]=(plainSrc>>8)&0xff;
        plainText[i*4+2]=(plainSrc>>16)&0xff;
        plainText[i*4+3]=(plainSrc>>24)&0xff;
    }
    
    printf("\r\nAES Encrypt in progress\r\n");
    printf("Random plain text\r\n"); 
    PrintBytes(plainText, 16); 
    
    status = atcab_aes_encrypt(AESKeySlot,keyBlock,plainText,cipherText);
    CHECK_STATUS(status); 
    printf("Ciphertext\r\n"); 
    PrintBytes(cipherText, 16);
    printf("\r\nAES Encrypt Done\r\n");
}

void CommandAESDecrypt(SYS_CMD_DEVICE_NODE* pCmdIO, int argc, char** argv)
{    
    volatile ATCA_STATUS status;
    uint8_t AESKeySlot = 4;  
    uint8_t keyBlock=0;
    uint8_t addr;
    uint8_t plainText[16];
    
	if( argc>1 )
	{
		addr = (uint8_t)strtol(argv[1], NULL, 16)<<1;
        atecc608a_0_init_data.atcai2c.slave_address = addr;
		status = atcab_init(&atecc608a_0_init_data);
		CHECK_STATUS(status);
	}
	else
	{
		printf("\r\nMust have a address, e.g. aesde 60\r\n");	
        return;
	}
    
    printf("\r\nAES Decrypt in progress\r\n");
    printf("Ciphertext\r\n"); 
    PrintBytes(cipherText, 16); 
    
    status = atcab_aes_decrypt(AESKeySlot,keyBlock,cipherText,plainText);;
    CHECK_STATUS(status); 
    printf("Plain text\r\n"); 
    PrintBytes(plainText, 16);
    printf("\r\nAES Decrypt Done\r\n"); 
    
}

static const SYS_CMD_DESCRIPTOR CryptoCmdTbl[]=
{
    {"init",CommandInit,": Initial CryptoAuthLib with i2c addr."},
    {"readsn",CommandReadSN,": Read Serial Number of SE."},
    {"readcfg",CommandReadConfig,": Read Config Zone."},
    {"provision",CommandProvision,": Provision the SE."}, 
    {"symmetric",CommandSymmetricAuth,": Symmetric authentication."},
    {"asymmetric",CommandAsymmetricAuth,": Asymmetric authentication."},
    {"ecdh1",CommandECDH1,": ECDH;output the premaster key"},
    {"ecdh2",CommandECDH2,": ECDH;directly use the key to do AES"},  
    {"aesen",CommandAESEncrypt,": AES Encryption."},
    {"aesde",CommandAESDecrypt,": AES Decryption."},    
};
int main ( void )
{
    SYS_TIME_HANDLE timer=SYS_TIME_HANDLE_INVALID;    
    /* Initialize all modules */
    SYS_Initialize ( NULL );
	printf("Hello World\r\n");
    SYS_TIME_DelayMS(1000,&timer);
    SYS_CMD_ADDGRP(CryptoCmdTbl,sizeof(CryptoCmdTbl)/sizeof(SYS_CMD_DESCRIPTOR),
        "CRYPTOCMD", ": Crypto Commands");
    while ( true )
    {      
        if(SYS_TIME_DelayIsComplete(timer))
        {
            LED_Toggle();
            SYS_TIME_DelayMS(1000,&timer);
        }        
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

