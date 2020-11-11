#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/atsamd21_ecc608a_demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/atsamd21_ecc608a_demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=..\src\config\default\library\cryptoauthlib\atcacert\atcacert_client.c ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_date.c ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_def.c ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_der.c ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_host_hw.c ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_host_sw.c ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_pem.c ..\src\config\default\library\cryptoauthlib\calib\calib_aes.c ..\src\config\default\library\cryptoauthlib\calib\calib_aes_gcm.c ..\src\config\default\library\cryptoauthlib\calib\calib_basic.c ..\src\config\default\library\cryptoauthlib\calib\calib_checkmac.c ..\src\config\default\library\cryptoauthlib\calib\calib_command.c ..\src\config\default\library\cryptoauthlib\calib\calib_counter.c ..\src\config\default\library\cryptoauthlib\calib\calib_derivekey.c ..\src\config\default\library\cryptoauthlib\calib\calib_ecdh.c ..\src\config\default\library\cryptoauthlib\calib\calib_execution.c ..\src\config\default\library\cryptoauthlib\calib\calib_gendig.c ..\src\config\default\library\cryptoauthlib\calib\calib_genkey.c ..\src\config\default\library\cryptoauthlib\calib\calib_hmac.c ..\src\config\default\library\cryptoauthlib\calib\calib_info.c ..\src\config\default\library\cryptoauthlib\calib\calib_kdf.c ..\src\config\default\library\cryptoauthlib\calib\calib_lock.c ..\src\config\default\library\cryptoauthlib\calib\calib_mac.c ..\src\config\default\library\cryptoauthlib\calib\calib_nonce.c ..\src\config\default\library\cryptoauthlib\calib\calib_privwrite.c ..\src\config\default\library\cryptoauthlib\calib\calib_random.c ..\src\config\default\library\cryptoauthlib\calib\calib_read.c ..\src\config\default\library\cryptoauthlib\calib\calib_secureboot.c ..\src\config\default\library\cryptoauthlib\calib\calib_selftest.c ..\src\config\default\library\cryptoauthlib\calib\calib_sha.c ..\src\config\default\library\cryptoauthlib\calib\calib_sign.c ..\src\config\default\library\cryptoauthlib\calib\calib_updateextra.c ..\src\config\default\library\cryptoauthlib\calib\calib_verify.c ..\src\config\default\library\cryptoauthlib\calib\calib_write.c ..\src\config\default\library\cryptoauthlib\crypto\hashes\sha1_routines.c ..\src\config\default\library\cryptoauthlib\crypto\hashes\sha2_routines.c ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_hw_aes_cbc.c ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_hw_aes_cmac.c ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_hw_aes_ctr.c ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_sw_ecdsa.c ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_sw_rand.c ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_sw_sha1.c ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_sw_sha2.c ..\src\config\default\library\cryptoauthlib\hal\atca_hal.c ..\src\config\default\library\cryptoauthlib\hal\hal_i2c_harmony.c ..\src\config\default\library\cryptoauthlib\hal\hal_harmony_init.c ..\src\config\default\library\cryptoauthlib\hal\hal_cortex_m_delay.c ..\src\config\default\library\cryptoauthlib\hal\ATECC608A_0.c ..\src\config\default\library\cryptoauthlib\host\atca_host.c ..\src\config\default\library\cryptoauthlib\jwt\atca_jwt.c ..\src\config\default\library\cryptoauthlib\atca_basic.c ..\src\config\default\library\cryptoauthlib\atca_cfgs.c ..\src\config\default\library\cryptoauthlib\atca_command.c ..\src\config\default\library\cryptoauthlib\atca_debug.c ..\src\config\default\library\cryptoauthlib\atca_device.c ..\src\config\default\library\cryptoauthlib\atca_helpers.c ..\src\config\default\library\cryptoauthlib\atca_iface.c ..\src\config\default\peripheral\clock\plib_clock.c ..\src\config\default\peripheral\evsys\plib_evsys.c ..\src\config\default\peripheral\nvic\plib_nvic.c ..\src\config\default\peripheral\nvmctrl\plib_nvmctrl.c ..\src\config\default\peripheral\port\plib_port.c ..\src\config\default\peripheral\sercom\i2c_master\plib_sercom2_i2c_master.c ..\src\config\default\peripheral\sercom\usart\plib_sercom3_usart.c ..\src\config\default\peripheral\tc\plib_tc3.c ..\src\config\default\stdio\xc32_monitor.c ..\src\config\default\system\command\src\sys_command.c ..\src\config\default\system\console\src\sys_console.c ..\src\config\default\system\console\src\sys_console_uart.c ..\src\config\default\system\int\src\sys_int.c ..\src\config\default\system\time\src\sys_time.c ..\src\config\default\initialization.c ..\src\config\default\interrupts.c ..\src\config\default\exceptions.c ..\src\config\default\startup_xc32.c ..\src\config\default\libc_syscalls.c ..\src\config\default\tasks.c ..\src\main.c ..\src\app.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/868908375/atcacert_client.o ${OBJECTDIR}/_ext/868908375/atcacert_date.o ${OBJECTDIR}/_ext/868908375/atcacert_def.o ${OBJECTDIR}/_ext/868908375/atcacert_der.o ${OBJECTDIR}/_ext/868908375/atcacert_host_hw.o ${OBJECTDIR}/_ext/868908375/atcacert_host_sw.o ${OBJECTDIR}/_ext/868908375/atcacert_pem.o ${OBJECTDIR}/_ext/1251950395/calib_aes.o ${OBJECTDIR}/_ext/1251950395/calib_aes_gcm.o ${OBJECTDIR}/_ext/1251950395/calib_basic.o ${OBJECTDIR}/_ext/1251950395/calib_checkmac.o ${OBJECTDIR}/_ext/1251950395/calib_command.o ${OBJECTDIR}/_ext/1251950395/calib_counter.o ${OBJECTDIR}/_ext/1251950395/calib_derivekey.o ${OBJECTDIR}/_ext/1251950395/calib_ecdh.o ${OBJECTDIR}/_ext/1251950395/calib_execution.o ${OBJECTDIR}/_ext/1251950395/calib_gendig.o ${OBJECTDIR}/_ext/1251950395/calib_genkey.o ${OBJECTDIR}/_ext/1251950395/calib_hmac.o ${OBJECTDIR}/_ext/1251950395/calib_info.o ${OBJECTDIR}/_ext/1251950395/calib_kdf.o ${OBJECTDIR}/_ext/1251950395/calib_lock.o ${OBJECTDIR}/_ext/1251950395/calib_mac.o ${OBJECTDIR}/_ext/1251950395/calib_nonce.o ${OBJECTDIR}/_ext/1251950395/calib_privwrite.o ${OBJECTDIR}/_ext/1251950395/calib_random.o ${OBJECTDIR}/_ext/1251950395/calib_read.o ${OBJECTDIR}/_ext/1251950395/calib_secureboot.o ${OBJECTDIR}/_ext/1251950395/calib_selftest.o ${OBJECTDIR}/_ext/1251950395/calib_sha.o ${OBJECTDIR}/_ext/1251950395/calib_sign.o ${OBJECTDIR}/_ext/1251950395/calib_updateextra.o ${OBJECTDIR}/_ext/1251950395/calib_verify.o ${OBJECTDIR}/_ext/1251950395/calib_write.o ${OBJECTDIR}/_ext/1293311211/sha1_routines.o ${OBJECTDIR}/_ext/1293311211/sha2_routines.o ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_cbc.o ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_cmac.o ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_ctr.o ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_ecdsa.o ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_rand.o ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_sha1.o ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_sha2.o ${OBJECTDIR}/_ext/856801649/atca_hal.o ${OBJECTDIR}/_ext/856801649/hal_i2c_harmony.o ${OBJECTDIR}/_ext/856801649/hal_harmony_init.o ${OBJECTDIR}/_ext/856801649/hal_cortex_m_delay.o ${OBJECTDIR}/_ext/856801649/ATECC608A_0.o ${OBJECTDIR}/_ext/791061130/atca_host.o ${OBJECTDIR}/_ext/856804261/atca_jwt.o ${OBJECTDIR}/_ext/2058734010/atca_basic.o ${OBJECTDIR}/_ext/2058734010/atca_cfgs.o ${OBJECTDIR}/_ext/2058734010/atca_command.o ${OBJECTDIR}/_ext/2058734010/atca_debug.o ${OBJECTDIR}/_ext/2058734010/atca_device.o ${OBJECTDIR}/_ext/2058734010/atca_helpers.o ${OBJECTDIR}/_ext/2058734010/atca_iface.o ${OBJECTDIR}/_ext/1929065681/plib_clock.o ${OBJECTDIR}/_ext/1926916195/plib_evsys.o ${OBJECTDIR}/_ext/630845857/plib_nvic.o ${OBJECTDIR}/_ext/1244152207/plib_nvmctrl.o ${OBJECTDIR}/_ext/630899008/plib_port.o ${OBJECTDIR}/_ext/69476125/plib_sercom2_i2c_master.o ${OBJECTDIR}/_ext/911089225/plib_sercom3_usart.o ${OBJECTDIR}/_ext/1979229458/plib_tc3.o ${OBJECTDIR}/_ext/1785698216/xc32_monitor.o ${OBJECTDIR}/_ext/479667431/sys_command.o ${OBJECTDIR}/_ext/22955251/sys_console.o ${OBJECTDIR}/_ext/22955251/sys_console_uart.o ${OBJECTDIR}/_ext/1711969675/sys_int.o ${OBJECTDIR}/_ext/1107797567/sys_time.o ${OBJECTDIR}/_ext/2062370875/initialization.o ${OBJECTDIR}/_ext/2062370875/interrupts.o ${OBJECTDIR}/_ext/2062370875/exceptions.o ${OBJECTDIR}/_ext/2062370875/startup_xc32.o ${OBJECTDIR}/_ext/2062370875/libc_syscalls.o ${OBJECTDIR}/_ext/2062370875/tasks.o ${OBJECTDIR}/_ext/1362277832/main.o ${OBJECTDIR}/_ext/1362277832/app.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/868908375/atcacert_client.o.d ${OBJECTDIR}/_ext/868908375/atcacert_date.o.d ${OBJECTDIR}/_ext/868908375/atcacert_def.o.d ${OBJECTDIR}/_ext/868908375/atcacert_der.o.d ${OBJECTDIR}/_ext/868908375/atcacert_host_hw.o.d ${OBJECTDIR}/_ext/868908375/atcacert_host_sw.o.d ${OBJECTDIR}/_ext/868908375/atcacert_pem.o.d ${OBJECTDIR}/_ext/1251950395/calib_aes.o.d ${OBJECTDIR}/_ext/1251950395/calib_aes_gcm.o.d ${OBJECTDIR}/_ext/1251950395/calib_basic.o.d ${OBJECTDIR}/_ext/1251950395/calib_checkmac.o.d ${OBJECTDIR}/_ext/1251950395/calib_command.o.d ${OBJECTDIR}/_ext/1251950395/calib_counter.o.d ${OBJECTDIR}/_ext/1251950395/calib_derivekey.o.d ${OBJECTDIR}/_ext/1251950395/calib_ecdh.o.d ${OBJECTDIR}/_ext/1251950395/calib_execution.o.d ${OBJECTDIR}/_ext/1251950395/calib_gendig.o.d ${OBJECTDIR}/_ext/1251950395/calib_genkey.o.d ${OBJECTDIR}/_ext/1251950395/calib_hmac.o.d ${OBJECTDIR}/_ext/1251950395/calib_info.o.d ${OBJECTDIR}/_ext/1251950395/calib_kdf.o.d ${OBJECTDIR}/_ext/1251950395/calib_lock.o.d ${OBJECTDIR}/_ext/1251950395/calib_mac.o.d ${OBJECTDIR}/_ext/1251950395/calib_nonce.o.d ${OBJECTDIR}/_ext/1251950395/calib_privwrite.o.d ${OBJECTDIR}/_ext/1251950395/calib_random.o.d ${OBJECTDIR}/_ext/1251950395/calib_read.o.d ${OBJECTDIR}/_ext/1251950395/calib_secureboot.o.d ${OBJECTDIR}/_ext/1251950395/calib_selftest.o.d ${OBJECTDIR}/_ext/1251950395/calib_sha.o.d ${OBJECTDIR}/_ext/1251950395/calib_sign.o.d ${OBJECTDIR}/_ext/1251950395/calib_updateextra.o.d ${OBJECTDIR}/_ext/1251950395/calib_verify.o.d ${OBJECTDIR}/_ext/1251950395/calib_write.o.d ${OBJECTDIR}/_ext/1293311211/sha1_routines.o.d ${OBJECTDIR}/_ext/1293311211/sha2_routines.o.d ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_cbc.o.d ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_cmac.o.d ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_ctr.o.d ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_ecdsa.o.d ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_rand.o.d ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_sha1.o.d ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_sha2.o.d ${OBJECTDIR}/_ext/856801649/atca_hal.o.d ${OBJECTDIR}/_ext/856801649/hal_i2c_harmony.o.d ${OBJECTDIR}/_ext/856801649/hal_harmony_init.o.d ${OBJECTDIR}/_ext/856801649/hal_cortex_m_delay.o.d ${OBJECTDIR}/_ext/856801649/ATECC608A_0.o.d ${OBJECTDIR}/_ext/791061130/atca_host.o.d ${OBJECTDIR}/_ext/856804261/atca_jwt.o.d ${OBJECTDIR}/_ext/2058734010/atca_basic.o.d ${OBJECTDIR}/_ext/2058734010/atca_cfgs.o.d ${OBJECTDIR}/_ext/2058734010/atca_command.o.d ${OBJECTDIR}/_ext/2058734010/atca_debug.o.d ${OBJECTDIR}/_ext/2058734010/atca_device.o.d ${OBJECTDIR}/_ext/2058734010/atca_helpers.o.d ${OBJECTDIR}/_ext/2058734010/atca_iface.o.d ${OBJECTDIR}/_ext/1929065681/plib_clock.o.d ${OBJECTDIR}/_ext/1926916195/plib_evsys.o.d ${OBJECTDIR}/_ext/630845857/plib_nvic.o.d ${OBJECTDIR}/_ext/1244152207/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/630899008/plib_port.o.d ${OBJECTDIR}/_ext/69476125/plib_sercom2_i2c_master.o.d ${OBJECTDIR}/_ext/911089225/plib_sercom3_usart.o.d ${OBJECTDIR}/_ext/1979229458/plib_tc3.o.d ${OBJECTDIR}/_ext/1785698216/xc32_monitor.o.d ${OBJECTDIR}/_ext/479667431/sys_command.o.d ${OBJECTDIR}/_ext/22955251/sys_console.o.d ${OBJECTDIR}/_ext/22955251/sys_console_uart.o.d ${OBJECTDIR}/_ext/1711969675/sys_int.o.d ${OBJECTDIR}/_ext/1107797567/sys_time.o.d ${OBJECTDIR}/_ext/2062370875/initialization.o.d ${OBJECTDIR}/_ext/2062370875/interrupts.o.d ${OBJECTDIR}/_ext/2062370875/exceptions.o.d ${OBJECTDIR}/_ext/2062370875/startup_xc32.o.d ${OBJECTDIR}/_ext/2062370875/libc_syscalls.o.d ${OBJECTDIR}/_ext/2062370875/tasks.o.d ${OBJECTDIR}/_ext/1362277832/main.o.d ${OBJECTDIR}/_ext/1362277832/app.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/868908375/atcacert_client.o ${OBJECTDIR}/_ext/868908375/atcacert_date.o ${OBJECTDIR}/_ext/868908375/atcacert_def.o ${OBJECTDIR}/_ext/868908375/atcacert_der.o ${OBJECTDIR}/_ext/868908375/atcacert_host_hw.o ${OBJECTDIR}/_ext/868908375/atcacert_host_sw.o ${OBJECTDIR}/_ext/868908375/atcacert_pem.o ${OBJECTDIR}/_ext/1251950395/calib_aes.o ${OBJECTDIR}/_ext/1251950395/calib_aes_gcm.o ${OBJECTDIR}/_ext/1251950395/calib_basic.o ${OBJECTDIR}/_ext/1251950395/calib_checkmac.o ${OBJECTDIR}/_ext/1251950395/calib_command.o ${OBJECTDIR}/_ext/1251950395/calib_counter.o ${OBJECTDIR}/_ext/1251950395/calib_derivekey.o ${OBJECTDIR}/_ext/1251950395/calib_ecdh.o ${OBJECTDIR}/_ext/1251950395/calib_execution.o ${OBJECTDIR}/_ext/1251950395/calib_gendig.o ${OBJECTDIR}/_ext/1251950395/calib_genkey.o ${OBJECTDIR}/_ext/1251950395/calib_hmac.o ${OBJECTDIR}/_ext/1251950395/calib_info.o ${OBJECTDIR}/_ext/1251950395/calib_kdf.o ${OBJECTDIR}/_ext/1251950395/calib_lock.o ${OBJECTDIR}/_ext/1251950395/calib_mac.o ${OBJECTDIR}/_ext/1251950395/calib_nonce.o ${OBJECTDIR}/_ext/1251950395/calib_privwrite.o ${OBJECTDIR}/_ext/1251950395/calib_random.o ${OBJECTDIR}/_ext/1251950395/calib_read.o ${OBJECTDIR}/_ext/1251950395/calib_secureboot.o ${OBJECTDIR}/_ext/1251950395/calib_selftest.o ${OBJECTDIR}/_ext/1251950395/calib_sha.o ${OBJECTDIR}/_ext/1251950395/calib_sign.o ${OBJECTDIR}/_ext/1251950395/calib_updateextra.o ${OBJECTDIR}/_ext/1251950395/calib_verify.o ${OBJECTDIR}/_ext/1251950395/calib_write.o ${OBJECTDIR}/_ext/1293311211/sha1_routines.o ${OBJECTDIR}/_ext/1293311211/sha2_routines.o ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_cbc.o ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_cmac.o ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_ctr.o ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_ecdsa.o ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_rand.o ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_sha1.o ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_sha2.o ${OBJECTDIR}/_ext/856801649/atca_hal.o ${OBJECTDIR}/_ext/856801649/hal_i2c_harmony.o ${OBJECTDIR}/_ext/856801649/hal_harmony_init.o ${OBJECTDIR}/_ext/856801649/hal_cortex_m_delay.o ${OBJECTDIR}/_ext/856801649/ATECC608A_0.o ${OBJECTDIR}/_ext/791061130/atca_host.o ${OBJECTDIR}/_ext/856804261/atca_jwt.o ${OBJECTDIR}/_ext/2058734010/atca_basic.o ${OBJECTDIR}/_ext/2058734010/atca_cfgs.o ${OBJECTDIR}/_ext/2058734010/atca_command.o ${OBJECTDIR}/_ext/2058734010/atca_debug.o ${OBJECTDIR}/_ext/2058734010/atca_device.o ${OBJECTDIR}/_ext/2058734010/atca_helpers.o ${OBJECTDIR}/_ext/2058734010/atca_iface.o ${OBJECTDIR}/_ext/1929065681/plib_clock.o ${OBJECTDIR}/_ext/1926916195/plib_evsys.o ${OBJECTDIR}/_ext/630845857/plib_nvic.o ${OBJECTDIR}/_ext/1244152207/plib_nvmctrl.o ${OBJECTDIR}/_ext/630899008/plib_port.o ${OBJECTDIR}/_ext/69476125/plib_sercom2_i2c_master.o ${OBJECTDIR}/_ext/911089225/plib_sercom3_usart.o ${OBJECTDIR}/_ext/1979229458/plib_tc3.o ${OBJECTDIR}/_ext/1785698216/xc32_monitor.o ${OBJECTDIR}/_ext/479667431/sys_command.o ${OBJECTDIR}/_ext/22955251/sys_console.o ${OBJECTDIR}/_ext/22955251/sys_console_uart.o ${OBJECTDIR}/_ext/1711969675/sys_int.o ${OBJECTDIR}/_ext/1107797567/sys_time.o ${OBJECTDIR}/_ext/2062370875/initialization.o ${OBJECTDIR}/_ext/2062370875/interrupts.o ${OBJECTDIR}/_ext/2062370875/exceptions.o ${OBJECTDIR}/_ext/2062370875/startup_xc32.o ${OBJECTDIR}/_ext/2062370875/libc_syscalls.o ${OBJECTDIR}/_ext/2062370875/tasks.o ${OBJECTDIR}/_ext/1362277832/main.o ${OBJECTDIR}/_ext/1362277832/app.o

# Source Files
SOURCEFILES=..\src\config\default\library\cryptoauthlib\atcacert\atcacert_client.c ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_date.c ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_def.c ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_der.c ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_host_hw.c ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_host_sw.c ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_pem.c ..\src\config\default\library\cryptoauthlib\calib\calib_aes.c ..\src\config\default\library\cryptoauthlib\calib\calib_aes_gcm.c ..\src\config\default\library\cryptoauthlib\calib\calib_basic.c ..\src\config\default\library\cryptoauthlib\calib\calib_checkmac.c ..\src\config\default\library\cryptoauthlib\calib\calib_command.c ..\src\config\default\library\cryptoauthlib\calib\calib_counter.c ..\src\config\default\library\cryptoauthlib\calib\calib_derivekey.c ..\src\config\default\library\cryptoauthlib\calib\calib_ecdh.c ..\src\config\default\library\cryptoauthlib\calib\calib_execution.c ..\src\config\default\library\cryptoauthlib\calib\calib_gendig.c ..\src\config\default\library\cryptoauthlib\calib\calib_genkey.c ..\src\config\default\library\cryptoauthlib\calib\calib_hmac.c ..\src\config\default\library\cryptoauthlib\calib\calib_info.c ..\src\config\default\library\cryptoauthlib\calib\calib_kdf.c ..\src\config\default\library\cryptoauthlib\calib\calib_lock.c ..\src\config\default\library\cryptoauthlib\calib\calib_mac.c ..\src\config\default\library\cryptoauthlib\calib\calib_nonce.c ..\src\config\default\library\cryptoauthlib\calib\calib_privwrite.c ..\src\config\default\library\cryptoauthlib\calib\calib_random.c ..\src\config\default\library\cryptoauthlib\calib\calib_read.c ..\src\config\default\library\cryptoauthlib\calib\calib_secureboot.c ..\src\config\default\library\cryptoauthlib\calib\calib_selftest.c ..\src\config\default\library\cryptoauthlib\calib\calib_sha.c ..\src\config\default\library\cryptoauthlib\calib\calib_sign.c ..\src\config\default\library\cryptoauthlib\calib\calib_updateextra.c ..\src\config\default\library\cryptoauthlib\calib\calib_verify.c ..\src\config\default\library\cryptoauthlib\calib\calib_write.c ..\src\config\default\library\cryptoauthlib\crypto\hashes\sha1_routines.c ..\src\config\default\library\cryptoauthlib\crypto\hashes\sha2_routines.c ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_hw_aes_cbc.c ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_hw_aes_cmac.c ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_hw_aes_ctr.c ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_sw_ecdsa.c ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_sw_rand.c ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_sw_sha1.c ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_sw_sha2.c ..\src\config\default\library\cryptoauthlib\hal\atca_hal.c ..\src\config\default\library\cryptoauthlib\hal\hal_i2c_harmony.c ..\src\config\default\library\cryptoauthlib\hal\hal_harmony_init.c ..\src\config\default\library\cryptoauthlib\hal\hal_cortex_m_delay.c ..\src\config\default\library\cryptoauthlib\hal\ATECC608A_0.c ..\src\config\default\library\cryptoauthlib\host\atca_host.c ..\src\config\default\library\cryptoauthlib\jwt\atca_jwt.c ..\src\config\default\library\cryptoauthlib\atca_basic.c ..\src\config\default\library\cryptoauthlib\atca_cfgs.c ..\src\config\default\library\cryptoauthlib\atca_command.c ..\src\config\default\library\cryptoauthlib\atca_debug.c ..\src\config\default\library\cryptoauthlib\atca_device.c ..\src\config\default\library\cryptoauthlib\atca_helpers.c ..\src\config\default\library\cryptoauthlib\atca_iface.c ..\src\config\default\peripheral\clock\plib_clock.c ..\src\config\default\peripheral\evsys\plib_evsys.c ..\src\config\default\peripheral\nvic\plib_nvic.c ..\src\config\default\peripheral\nvmctrl\plib_nvmctrl.c ..\src\config\default\peripheral\port\plib_port.c ..\src\config\default\peripheral\sercom\i2c_master\plib_sercom2_i2c_master.c ..\src\config\default\peripheral\sercom\usart\plib_sercom3_usart.c ..\src\config\default\peripheral\tc\plib_tc3.c ..\src\config\default\stdio\xc32_monitor.c ..\src\config\default\system\command\src\sys_command.c ..\src\config\default\system\console\src\sys_console.c ..\src\config\default\system\console\src\sys_console_uart.c ..\src\config\default\system\int\src\sys_int.c ..\src\config\default\system\time\src\sys_time.c ..\src\config\default\initialization.c ..\src\config\default\interrupts.c ..\src\config\default\exceptions.c ..\src\config\default\startup_xc32.c ..\src\config\default\libc_syscalls.c ..\src\config\default\tasks.c ..\src\main.c ..\src\app.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/atsamd21_ecc608a_demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAMD21J18A
MP_LINKER_FILE_OPTION=,--script="..\\src\\config\\default\\ATSAMD21J18A.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/868908375/atcacert_client.o: ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_client.c  .generated_files/59836d90f20629e7168ae964df4788c03b152ca3.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/868908375" 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_client.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/868908375/atcacert_client.o.d" -o ${OBJECTDIR}/_ext/868908375/atcacert_client.o ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_client.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/868908375/atcacert_date.o: ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_date.c  .generated_files/bda487b3a04343d081516bf24666237e57668333.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/868908375" 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_date.o.d 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_date.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/868908375/atcacert_date.o.d" -o ${OBJECTDIR}/_ext/868908375/atcacert_date.o ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_date.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/868908375/atcacert_def.o: ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_def.c  .generated_files/bf1301eacb093ee7a78de3ab52d6b5491267d520.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/868908375" 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_def.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/868908375/atcacert_def.o.d" -o ${OBJECTDIR}/_ext/868908375/atcacert_def.o ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_def.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/868908375/atcacert_der.o: ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_der.c  .generated_files/d73694a4177f200ec1219fe733bb6a370248ad4a.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/868908375" 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_der.o.d 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_der.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/868908375/atcacert_der.o.d" -o ${OBJECTDIR}/_ext/868908375/atcacert_der.o ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_der.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/868908375/atcacert_host_hw.o: ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_host_hw.c  .generated_files/31676edf8a7b244082c32087a3ce1017b692977.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/868908375" 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_host_hw.o.d 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_host_hw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/868908375/atcacert_host_hw.o.d" -o ${OBJECTDIR}/_ext/868908375/atcacert_host_hw.o ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_host_hw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/868908375/atcacert_host_sw.o: ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_host_sw.c  .generated_files/accf62402f20ea113379bc67757fc9eb9aea1ad7.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/868908375" 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_host_sw.o.d 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_host_sw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/868908375/atcacert_host_sw.o.d" -o ${OBJECTDIR}/_ext/868908375/atcacert_host_sw.o ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_host_sw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/868908375/atcacert_pem.o: ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_pem.c  .generated_files/aea850b4a91ea9646cee271e6693db24290c5796.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/868908375" 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_pem.o.d 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_pem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/868908375/atcacert_pem.o.d" -o ${OBJECTDIR}/_ext/868908375/atcacert_pem.o ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_pem.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_aes.o: ..\src\config\default\library\cryptoauthlib\calib\calib_aes.c  .generated_files/e7b5d2f5248c081c1585406dd62a4bb0e3e0d576.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_aes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_aes.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_aes.o ..\src\config\default\library\cryptoauthlib\calib\calib_aes.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_aes_gcm.o: ..\src\config\default\library\cryptoauthlib\calib\calib_aes_gcm.c  .generated_files/84b238d1cc0345d79dac683837e5dcf5b003864e.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_aes_gcm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_aes_gcm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_aes_gcm.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_aes_gcm.o ..\src\config\default\library\cryptoauthlib\calib\calib_aes_gcm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_basic.o: ..\src\config\default\library\cryptoauthlib\calib\calib_basic.c  .generated_files/8ec7e838eaef962f5316cc204f17f02f7cb5f04e.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_basic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_basic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_basic.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_basic.o ..\src\config\default\library\cryptoauthlib\calib\calib_basic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_checkmac.o: ..\src\config\default\library\cryptoauthlib\calib\calib_checkmac.c  .generated_files/446f8ca81f61b7789f24ea83a5e4d61cddf8768f.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_checkmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_checkmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_checkmac.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_checkmac.o ..\src\config\default\library\cryptoauthlib\calib\calib_checkmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_command.o: ..\src\config\default\library\cryptoauthlib\calib\calib_command.c  .generated_files/6d188c057ec26ce7421676747581e92718ec4e29.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_command.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_command.o ..\src\config\default\library\cryptoauthlib\calib\calib_command.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_counter.o: ..\src\config\default\library\cryptoauthlib\calib\calib_counter.c  .generated_files/820c0f3b74492d111c917499714341e9552873b7.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_counter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_counter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_counter.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_counter.o ..\src\config\default\library\cryptoauthlib\calib\calib_counter.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_derivekey.o: ..\src\config\default\library\cryptoauthlib\calib\calib_derivekey.c  .generated_files/31b5ea7db0e9959598c08861ee7b5e0d1bffadc4.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_derivekey.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_derivekey.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_derivekey.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_derivekey.o ..\src\config\default\library\cryptoauthlib\calib\calib_derivekey.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_ecdh.o: ..\src\config\default\library\cryptoauthlib\calib\calib_ecdh.c  .generated_files/96399f08c945d583bc662c26a71583bc73725d6c.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_ecdh.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_ecdh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_ecdh.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_ecdh.o ..\src\config\default\library\cryptoauthlib\calib\calib_ecdh.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_execution.o: ..\src\config\default\library\cryptoauthlib\calib\calib_execution.c  .generated_files/d2ee0f83a513b8944a9b1de132369ae68fa772e3.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_execution.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_execution.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_execution.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_execution.o ..\src\config\default\library\cryptoauthlib\calib\calib_execution.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_gendig.o: ..\src\config\default\library\cryptoauthlib\calib\calib_gendig.c  .generated_files/d305a154b183b73dec2343e4114d6ada93f8e30c.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_gendig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_gendig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_gendig.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_gendig.o ..\src\config\default\library\cryptoauthlib\calib\calib_gendig.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_genkey.o: ..\src\config\default\library\cryptoauthlib\calib\calib_genkey.c  .generated_files/8a35d40ae62e7d9b6254e88e40351a3770f256a6.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_genkey.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_genkey.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_genkey.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_genkey.o ..\src\config\default\library\cryptoauthlib\calib\calib_genkey.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_hmac.o: ..\src\config\default\library\cryptoauthlib\calib\calib_hmac.c  .generated_files/71ec3d0cbb27651edb07c939759b85fa8736240c.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_hmac.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_hmac.o ..\src\config\default\library\cryptoauthlib\calib\calib_hmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_info.o: ..\src\config\default\library\cryptoauthlib\calib\calib_info.c  .generated_files/d8ae8674d0f2098a87ce4b381289f04fe027c4a3.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_info.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_info.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_info.o ..\src\config\default\library\cryptoauthlib\calib\calib_info.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_kdf.o: ..\src\config\default\library\cryptoauthlib\calib\calib_kdf.c  .generated_files/a2d0e70f526f4f929fc1bff1f526dc7f23999345.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_kdf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_kdf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_kdf.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_kdf.o ..\src\config\default\library\cryptoauthlib\calib\calib_kdf.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_lock.o: ..\src\config\default\library\cryptoauthlib\calib\calib_lock.c  .generated_files/3d54b1d254d1d105d9932f426c47346d8eb6e092.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_lock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_lock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_lock.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_lock.o ..\src\config\default\library\cryptoauthlib\calib\calib_lock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_mac.o: ..\src\config\default\library\cryptoauthlib\calib\calib_mac.c  .generated_files/2312fec8f9a2bee0d9dced0d44ce8dd73f4164a5.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_mac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_mac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_mac.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_mac.o ..\src\config\default\library\cryptoauthlib\calib\calib_mac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_nonce.o: ..\src\config\default\library\cryptoauthlib\calib\calib_nonce.c  .generated_files/a507247e9817cee2534c0c726c29f588528858f3.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_nonce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_nonce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_nonce.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_nonce.o ..\src\config\default\library\cryptoauthlib\calib\calib_nonce.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_privwrite.o: ..\src\config\default\library\cryptoauthlib\calib\calib_privwrite.c  .generated_files/cac500fbe12bd1a438ef696640d9635b3ebc6388.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_privwrite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_privwrite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_privwrite.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_privwrite.o ..\src\config\default\library\cryptoauthlib\calib\calib_privwrite.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_random.o: ..\src\config\default\library\cryptoauthlib\calib\calib_random.c  .generated_files/659f25cd29deb01440bcbbdc82953643e4a19346.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_random.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_random.o ..\src\config\default\library\cryptoauthlib\calib\calib_random.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_read.o: ..\src\config\default\library\cryptoauthlib\calib\calib_read.c  .generated_files/74bdef0d2db39bbaa649752697e1712bef20ae65.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_read.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_read.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_read.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_read.o ..\src\config\default\library\cryptoauthlib\calib\calib_read.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_secureboot.o: ..\src\config\default\library\cryptoauthlib\calib\calib_secureboot.c  .generated_files/c0d87e9e714f2d3b4feb4d0cfdb69cf40a3f6bb3.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_secureboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_secureboot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_secureboot.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_secureboot.o ..\src\config\default\library\cryptoauthlib\calib\calib_secureboot.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_selftest.o: ..\src\config\default\library\cryptoauthlib\calib\calib_selftest.c  .generated_files/15a8523f199b02bf23659336e8d2cb4f241a5951.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_selftest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_selftest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_selftest.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_selftest.o ..\src\config\default\library\cryptoauthlib\calib\calib_selftest.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_sha.o: ..\src\config\default\library\cryptoauthlib\calib\calib_sha.c  .generated_files/8ef4cc7799f8e2badeae9bac53adad066f119a03.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_sha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_sha.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_sha.o ..\src\config\default\library\cryptoauthlib\calib\calib_sha.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_sign.o: ..\src\config\default\library\cryptoauthlib\calib\calib_sign.c  .generated_files/d0579ad8e030c202542b145af476343f1302cc75.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_sign.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_sign.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_sign.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_sign.o ..\src\config\default\library\cryptoauthlib\calib\calib_sign.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_updateextra.o: ..\src\config\default\library\cryptoauthlib\calib\calib_updateextra.c  .generated_files/7bfc789d4112a382582effb591c4be2e1b038226.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_updateextra.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_updateextra.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_updateextra.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_updateextra.o ..\src\config\default\library\cryptoauthlib\calib\calib_updateextra.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_verify.o: ..\src\config\default\library\cryptoauthlib\calib\calib_verify.c  .generated_files/5ca32d817f282464697c6fa81a780d44294fbabf.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_verify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_verify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_verify.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_verify.o ..\src\config\default\library\cryptoauthlib\calib\calib_verify.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_write.o: ..\src\config\default\library\cryptoauthlib\calib\calib_write.c  .generated_files/656e472de8197186e17a184b031300aacf60c21c.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_write.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_write.o ..\src\config\default\library\cryptoauthlib\calib\calib_write.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1293311211/sha1_routines.o: ..\src\config\default\library\cryptoauthlib\crypto\hashes\sha1_routines.c  .generated_files/89709cbc87764bded5a8c76e282687de1673bd12.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1293311211" 
	@${RM} ${OBJECTDIR}/_ext/1293311211/sha1_routines.o.d 
	@${RM} ${OBJECTDIR}/_ext/1293311211/sha1_routines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1293311211/sha1_routines.o.d" -o ${OBJECTDIR}/_ext/1293311211/sha1_routines.o ..\src\config\default\library\cryptoauthlib\crypto\hashes\sha1_routines.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1293311211/sha2_routines.o: ..\src\config\default\library\cryptoauthlib\crypto\hashes\sha2_routines.c  .generated_files/7284f8dfbeddf7860516daff19ce6b0970fd90ce.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1293311211" 
	@${RM} ${OBJECTDIR}/_ext/1293311211/sha2_routines.o.d 
	@${RM} ${OBJECTDIR}/_ext/1293311211/sha2_routines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1293311211/sha2_routines.o.d" -o ${OBJECTDIR}/_ext/1293311211/sha2_routines.o ..\src\config\default\library\cryptoauthlib\crypto\hashes\sha2_routines.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_cbc.o: ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_hw_aes_cbc.c  .generated_files/5e482926e229a09d3092987df88a5e1104715fd3.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/139662045" 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_cbc.o.d 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_cbc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_cbc.o.d" -o ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_cbc.o ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_hw_aes_cbc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_cmac.o: ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_hw_aes_cmac.c  .generated_files/60d4cc464df11b01d6d50ac103c8bc6f80f6e020.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/139662045" 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_cmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_cmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_cmac.o.d" -o ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_cmac.o ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_hw_aes_cmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_ctr.o: ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_hw_aes_ctr.c  .generated_files/acbdb6c10894e358642741fb003dfd0764096690.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/139662045" 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_ctr.o.d 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_ctr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_ctr.o.d" -o ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_ctr.o ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_hw_aes_ctr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/139662045/atca_crypto_sw_ecdsa.o: ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_sw_ecdsa.c  .generated_files/fa1c33d6105839bf621425ac5cf9afd230a952cc.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/139662045" 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_ecdsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_ecdsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/139662045/atca_crypto_sw_ecdsa.o.d" -o ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_ecdsa.o ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_sw_ecdsa.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/139662045/atca_crypto_sw_rand.o: ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_sw_rand.c  .generated_files/c447594bb908b95e55a8a9a45eb8148b34e8f6ed.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/139662045" 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_rand.o.d 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_rand.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/139662045/atca_crypto_sw_rand.o.d" -o ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_rand.o ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_sw_rand.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/139662045/atca_crypto_sw_sha1.o: ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_sw_sha1.c  .generated_files/69ae73a2ef4076deac864392577d413abd6ba2d4.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/139662045" 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_sha1.o.d 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_sha1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/139662045/atca_crypto_sw_sha1.o.d" -o ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_sha1.o ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_sw_sha1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/139662045/atca_crypto_sw_sha2.o: ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_sw_sha2.c  .generated_files/200a7743cfd340d0ea746bde60e4c6e9acb3ccce.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/139662045" 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_sha2.o.d 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_sha2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/139662045/atca_crypto_sw_sha2.o.d" -o ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_sha2.o ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_sw_sha2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/856801649/atca_hal.o: ..\src\config\default\library\cryptoauthlib\hal\atca_hal.c  .generated_files/d6024770c5d89e2692456f5b6b31e1a281e71edb.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/856801649" 
	@${RM} ${OBJECTDIR}/_ext/856801649/atca_hal.o.d 
	@${RM} ${OBJECTDIR}/_ext/856801649/atca_hal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/856801649/atca_hal.o.d" -o ${OBJECTDIR}/_ext/856801649/atca_hal.o ..\src\config\default\library\cryptoauthlib\hal\atca_hal.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/856801649/hal_i2c_harmony.o: ..\src\config\default\library\cryptoauthlib\hal\hal_i2c_harmony.c  .generated_files/54171d82948edcc03dca1b34926a6b9802d8dcb4.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/856801649" 
	@${RM} ${OBJECTDIR}/_ext/856801649/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/856801649/hal_i2c_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/856801649/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/856801649/hal_i2c_harmony.o ..\src\config\default\library\cryptoauthlib\hal\hal_i2c_harmony.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/856801649/hal_harmony_init.o: ..\src\config\default\library\cryptoauthlib\hal\hal_harmony_init.c  .generated_files/2a7d59cf46a986fe672784de1a8631e48e0c5f70.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/856801649" 
	@${RM} ${OBJECTDIR}/_ext/856801649/hal_harmony_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/856801649/hal_harmony_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/856801649/hal_harmony_init.o.d" -o ${OBJECTDIR}/_ext/856801649/hal_harmony_init.o ..\src\config\default\library\cryptoauthlib\hal\hal_harmony_init.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/856801649/hal_cortex_m_delay.o: ..\src\config\default\library\cryptoauthlib\hal\hal_cortex_m_delay.c  .generated_files/77a3ae531428ac16d4df800763a1085ccd783f6c.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/856801649" 
	@${RM} ${OBJECTDIR}/_ext/856801649/hal_cortex_m_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/856801649/hal_cortex_m_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/856801649/hal_cortex_m_delay.o.d" -o ${OBJECTDIR}/_ext/856801649/hal_cortex_m_delay.o ..\src\config\default\library\cryptoauthlib\hal\hal_cortex_m_delay.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/856801649/ATECC608A_0.o: ..\src\config\default\library\cryptoauthlib\hal\ATECC608A_0.c  .generated_files/4a5c7d7ec295006c6d2c997864d876b040a76ee0.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/856801649" 
	@${RM} ${OBJECTDIR}/_ext/856801649/ATECC608A_0.o.d 
	@${RM} ${OBJECTDIR}/_ext/856801649/ATECC608A_0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/856801649/ATECC608A_0.o.d" -o ${OBJECTDIR}/_ext/856801649/ATECC608A_0.o ..\src\config\default\library\cryptoauthlib\hal\ATECC608A_0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/791061130/atca_host.o: ..\src\config\default\library\cryptoauthlib\host\atca_host.c  .generated_files/763b1280d3440335a928ee921d5a095ca1c57a21.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/791061130" 
	@${RM} ${OBJECTDIR}/_ext/791061130/atca_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/791061130/atca_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/791061130/atca_host.o.d" -o ${OBJECTDIR}/_ext/791061130/atca_host.o ..\src\config\default\library\cryptoauthlib\host\atca_host.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/856804261/atca_jwt.o: ..\src\config\default\library\cryptoauthlib\jwt\atca_jwt.c  .generated_files/471f7b805ab6da03bac40077e020fb8c4d1e4a18.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/856804261" 
	@${RM} ${OBJECTDIR}/_ext/856804261/atca_jwt.o.d 
	@${RM} ${OBJECTDIR}/_ext/856804261/atca_jwt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/856804261/atca_jwt.o.d" -o ${OBJECTDIR}/_ext/856804261/atca_jwt.o ..\src\config\default\library\cryptoauthlib\jwt\atca_jwt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2058734010/atca_basic.o: ..\src\config\default\library\cryptoauthlib\atca_basic.c  .generated_files/b41d96bcc1ff78a8265873db29522e2665f77b26.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2058734010" 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_basic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_basic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2058734010/atca_basic.o.d" -o ${OBJECTDIR}/_ext/2058734010/atca_basic.o ..\src\config\default\library\cryptoauthlib\atca_basic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2058734010/atca_cfgs.o: ..\src\config\default\library\cryptoauthlib\atca_cfgs.c  .generated_files/e607a90a0637ab772da8556e0bd6238eae63a942.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2058734010" 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_cfgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_cfgs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2058734010/atca_cfgs.o.d" -o ${OBJECTDIR}/_ext/2058734010/atca_cfgs.o ..\src\config\default\library\cryptoauthlib\atca_cfgs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2058734010/atca_command.o: ..\src\config\default\library\cryptoauthlib\atca_command.c  .generated_files/78e1866475e9b6df94a3ca02d4de63670361b1f4.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2058734010" 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2058734010/atca_command.o.d" -o ${OBJECTDIR}/_ext/2058734010/atca_command.o ..\src\config\default\library\cryptoauthlib\atca_command.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2058734010/atca_debug.o: ..\src\config\default\library\cryptoauthlib\atca_debug.c  .generated_files/e625dbe48f2556f1e37cb26e7102eb140c151a0.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2058734010" 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2058734010/atca_debug.o.d" -o ${OBJECTDIR}/_ext/2058734010/atca_debug.o ..\src\config\default\library\cryptoauthlib\atca_debug.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2058734010/atca_device.o: ..\src\config\default\library\cryptoauthlib\atca_device.c  .generated_files/275d586d68c906d3a489681c3d57babc0514025c.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2058734010" 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2058734010/atca_device.o.d" -o ${OBJECTDIR}/_ext/2058734010/atca_device.o ..\src\config\default\library\cryptoauthlib\atca_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2058734010/atca_helpers.o: ..\src\config\default\library\cryptoauthlib\atca_helpers.c  .generated_files/6468fa8b00be9c0f40b03d36eef2118a182ed591.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2058734010" 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2058734010/atca_helpers.o.d" -o ${OBJECTDIR}/_ext/2058734010/atca_helpers.o ..\src\config\default\library\cryptoauthlib\atca_helpers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2058734010/atca_iface.o: ..\src\config\default\library\cryptoauthlib\atca_iface.c  .generated_files/c68a93125d68253df3a980a1a920be6ec1e64dbc.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2058734010" 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_iface.o.d 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_iface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2058734010/atca_iface.o.d" -o ${OBJECTDIR}/_ext/2058734010/atca_iface.o ..\src\config\default\library\cryptoauthlib\atca_iface.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1929065681/plib_clock.o: ..\src\config\default\peripheral\clock\plib_clock.c  .generated_files/de10faa5361c7c53f86d1b0bda206753cf6ae353.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1929065681" 
	@${RM} ${OBJECTDIR}/_ext/1929065681/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1929065681/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1929065681/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1929065681/plib_clock.o ..\src\config\default\peripheral\clock\plib_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1926916195/plib_evsys.o: ..\src\config\default\peripheral\evsys\plib_evsys.c  .generated_files/5901aac4b546623ca436645f7e7017356334f4f1.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1926916195" 
	@${RM} ${OBJECTDIR}/_ext/1926916195/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1926916195/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1926916195/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1926916195/plib_evsys.o ..\src\config\default\peripheral\evsys\plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/630845857/plib_nvic.o: ..\src\config\default\peripheral\nvic\plib_nvic.c  .generated_files/3c6747dd4ffacdf69d906c9f43882297700c948b.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/630845857" 
	@${RM} ${OBJECTDIR}/_ext/630845857/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/630845857/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/630845857/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/630845857/plib_nvic.o ..\src\config\default\peripheral\nvic\plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1244152207/plib_nvmctrl.o: ..\src\config\default\peripheral\nvmctrl\plib_nvmctrl.c  .generated_files/ba35696d3d581b897df5e41028bbfc1bb4c6bc77.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1244152207" 
	@${RM} ${OBJECTDIR}/_ext/1244152207/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1244152207/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1244152207/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1244152207/plib_nvmctrl.o ..\src\config\default\peripheral\nvmctrl\plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/630899008/plib_port.o: ..\src\config\default\peripheral\port\plib_port.c  .generated_files/6d0993dbc55bca7b6678c19109200bcb705767b5.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/630899008" 
	@${RM} ${OBJECTDIR}/_ext/630899008/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/630899008/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/630899008/plib_port.o.d" -o ${OBJECTDIR}/_ext/630899008/plib_port.o ..\src\config\default\peripheral\port\plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/69476125/plib_sercom2_i2c_master.o: ..\src\config\default\peripheral\sercom\i2c_master\plib_sercom2_i2c_master.c  .generated_files/35601ea6f415d6cd021183ca5f0f942a018a3b4d.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/69476125" 
	@${RM} ${OBJECTDIR}/_ext/69476125/plib_sercom2_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/69476125/plib_sercom2_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/69476125/plib_sercom2_i2c_master.o.d" -o ${OBJECTDIR}/_ext/69476125/plib_sercom2_i2c_master.o ..\src\config\default\peripheral\sercom\i2c_master\plib_sercom2_i2c_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/911089225/plib_sercom3_usart.o: ..\src\config\default\peripheral\sercom\usart\plib_sercom3_usart.c  .generated_files/2c4b0aa93b8b0f4de1ade7057b25704c94d1a03a.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/911089225" 
	@${RM} ${OBJECTDIR}/_ext/911089225/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/911089225/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/911089225/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/911089225/plib_sercom3_usart.o ..\src\config\default\peripheral\sercom\usart\plib_sercom3_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1979229458/plib_tc3.o: ..\src\config\default\peripheral\tc\plib_tc3.c  .generated_files/3aeea1a3a1905010d1cfc14992878e9b49383dc9.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1979229458" 
	@${RM} ${OBJECTDIR}/_ext/1979229458/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1979229458/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1979229458/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/1979229458/plib_tc3.o ..\src\config\default\peripheral\tc\plib_tc3.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1785698216/xc32_monitor.o: ..\src\config\default\stdio\xc32_monitor.c  .generated_files/ca08f3e81488468c1a6bc47a572c588eb5e3eaf2.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1785698216" 
	@${RM} ${OBJECTDIR}/_ext/1785698216/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1785698216/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1785698216/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1785698216/xc32_monitor.o ..\src\config\default\stdio\xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/479667431/sys_command.o: ..\src\config\default\system\command\src\sys_command.c  .generated_files/9b6f7780bea32af73b6ded79fbe9918ece1ee513.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/479667431" 
	@${RM} ${OBJECTDIR}/_ext/479667431/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/479667431/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/479667431/sys_command.o.d" -o ${OBJECTDIR}/_ext/479667431/sys_command.o ..\src\config\default\system\command\src\sys_command.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/22955251/sys_console.o: ..\src\config\default\system\console\src\sys_console.c  .generated_files/bef21113cb46c2dca078a289c15fc44839993000.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/22955251" 
	@${RM} ${OBJECTDIR}/_ext/22955251/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/22955251/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/22955251/sys_console.o.d" -o ${OBJECTDIR}/_ext/22955251/sys_console.o ..\src\config\default\system\console\src\sys_console.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/22955251/sys_console_uart.o: ..\src\config\default\system\console\src\sys_console_uart.c  .generated_files/45afca822b00b08ebe3d6d49ad641163e1f221df.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/22955251" 
	@${RM} ${OBJECTDIR}/_ext/22955251/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/22955251/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/22955251/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/22955251/sys_console_uart.o ..\src\config\default\system\console\src\sys_console_uart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1711969675/sys_int.o: ..\src\config\default\system\int\src\sys_int.c  .generated_files/9286073a35727df54d477347f9e0faabdf49f070.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1711969675" 
	@${RM} ${OBJECTDIR}/_ext/1711969675/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1711969675/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1711969675/sys_int.o.d" -o ${OBJECTDIR}/_ext/1711969675/sys_int.o ..\src\config\default\system\int\src\sys_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1107797567/sys_time.o: ..\src\config\default\system\time\src\sys_time.c  .generated_files/39b473bceb0bc132e61ee2977345942139abc073.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1107797567" 
	@${RM} ${OBJECTDIR}/_ext/1107797567/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1107797567/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1107797567/sys_time.o.d" -o ${OBJECTDIR}/_ext/1107797567/sys_time.o ..\src\config\default\system\time\src\sys_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2062370875/initialization.o: ..\src\config\default\initialization.c  .generated_files/823d7872073c2f327deb950b896c9b25df3e0931.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2062370875" 
	@${RM} ${OBJECTDIR}/_ext/2062370875/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/2062370875/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2062370875/initialization.o.d" -o ${OBJECTDIR}/_ext/2062370875/initialization.o ..\src\config\default\initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2062370875/interrupts.o: ..\src\config\default\interrupts.c  .generated_files/4967b3bdfb9a9469e6fd948582841290b9ad2cfa.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2062370875" 
	@${RM} ${OBJECTDIR}/_ext/2062370875/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/2062370875/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2062370875/interrupts.o.d" -o ${OBJECTDIR}/_ext/2062370875/interrupts.o ..\src\config\default\interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2062370875/exceptions.o: ..\src\config\default\exceptions.c  .generated_files/31594c8818fac013b2badc1e570c9f829e2d7fcc.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2062370875" 
	@${RM} ${OBJECTDIR}/_ext/2062370875/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2062370875/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2062370875/exceptions.o.d" -o ${OBJECTDIR}/_ext/2062370875/exceptions.o ..\src\config\default\exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2062370875/startup_xc32.o: ..\src\config\default\startup_xc32.c  .generated_files/ccb7a98aa4f451b5effdbc062613d1e90a3ffb9d.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2062370875" 
	@${RM} ${OBJECTDIR}/_ext/2062370875/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/2062370875/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2062370875/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/2062370875/startup_xc32.o ..\src\config\default\startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2062370875/libc_syscalls.o: ..\src\config\default\libc_syscalls.c  .generated_files/4d5973e0b56abda6b37372fe754f2500013760ea.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2062370875" 
	@${RM} ${OBJECTDIR}/_ext/2062370875/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/2062370875/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2062370875/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/2062370875/libc_syscalls.o ..\src\config\default\libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2062370875/tasks.o: ..\src\config\default\tasks.c  .generated_files/dddb2b4e69165482c327953bd06f41d66492fb3d.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2062370875" 
	@${RM} ${OBJECTDIR}/_ext/2062370875/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2062370875/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2062370875/tasks.o.d" -o ${OBJECTDIR}/_ext/2062370875/tasks.o ..\src\config\default\tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1362277832/main.o: ..\src\main.c  .generated_files/70762e62654a6114c62a56ed44009d2d6fca72e2.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1362277832" 
	@${RM} ${OBJECTDIR}/_ext/1362277832/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1362277832/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1362277832/main.o.d" -o ${OBJECTDIR}/_ext/1362277832/main.o ..\src\main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1362277832/app.o: ..\src\app.c  .generated_files/e19b207ff5718b2737156a379cbf0438eb2a774d.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1362277832" 
	@${RM} ${OBJECTDIR}/_ext/1362277832/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1362277832/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1362277832/app.o.d" -o ${OBJECTDIR}/_ext/1362277832/app.o ..\src\app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/868908375/atcacert_client.o: ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_client.c  .generated_files/28370bf70dc4efd7a7a5be54e1c1dc4e9f8c9318.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/868908375" 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_client.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/868908375/atcacert_client.o.d" -o ${OBJECTDIR}/_ext/868908375/atcacert_client.o ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_client.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/868908375/atcacert_date.o: ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_date.c  .generated_files/931c9c30adc19505d2da17ae68dfaabbd0f83a47.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/868908375" 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_date.o.d 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_date.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/868908375/atcacert_date.o.d" -o ${OBJECTDIR}/_ext/868908375/atcacert_date.o ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_date.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/868908375/atcacert_def.o: ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_def.c  .generated_files/cbce0484f03b2a539a35eaa447c9e1cd97214a64.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/868908375" 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_def.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/868908375/atcacert_def.o.d" -o ${OBJECTDIR}/_ext/868908375/atcacert_def.o ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_def.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/868908375/atcacert_der.o: ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_der.c  .generated_files/3db266422b553804cb6b170b657b01300328d56c.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/868908375" 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_der.o.d 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_der.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/868908375/atcacert_der.o.d" -o ${OBJECTDIR}/_ext/868908375/atcacert_der.o ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_der.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/868908375/atcacert_host_hw.o: ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_host_hw.c  .generated_files/bacd173df379bd68954650d8f5dd3c41a069d9d3.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/868908375" 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_host_hw.o.d 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_host_hw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/868908375/atcacert_host_hw.o.d" -o ${OBJECTDIR}/_ext/868908375/atcacert_host_hw.o ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_host_hw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/868908375/atcacert_host_sw.o: ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_host_sw.c  .generated_files/b50792b98a277b33020bb33136777e7c1c549803.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/868908375" 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_host_sw.o.d 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_host_sw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/868908375/atcacert_host_sw.o.d" -o ${OBJECTDIR}/_ext/868908375/atcacert_host_sw.o ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_host_sw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/868908375/atcacert_pem.o: ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_pem.c  .generated_files/ccdd4a623e1b7666f072ceb4df676dbc02e0a32a.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/868908375" 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_pem.o.d 
	@${RM} ${OBJECTDIR}/_ext/868908375/atcacert_pem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/868908375/atcacert_pem.o.d" -o ${OBJECTDIR}/_ext/868908375/atcacert_pem.o ..\src\config\default\library\cryptoauthlib\atcacert\atcacert_pem.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_aes.o: ..\src\config\default\library\cryptoauthlib\calib\calib_aes.c  .generated_files/d9ddafd5b15433fd05486dbc0b695554ef552218.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_aes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_aes.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_aes.o ..\src\config\default\library\cryptoauthlib\calib\calib_aes.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_aes_gcm.o: ..\src\config\default\library\cryptoauthlib\calib\calib_aes_gcm.c  .generated_files/ce7f6137f5053e7b3a52b44704694b86ea285f5e.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_aes_gcm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_aes_gcm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_aes_gcm.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_aes_gcm.o ..\src\config\default\library\cryptoauthlib\calib\calib_aes_gcm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_basic.o: ..\src\config\default\library\cryptoauthlib\calib\calib_basic.c  .generated_files/9817915d39dfd34d5dbea63cf4ae73f9c30cf9cd.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_basic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_basic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_basic.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_basic.o ..\src\config\default\library\cryptoauthlib\calib\calib_basic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_checkmac.o: ..\src\config\default\library\cryptoauthlib\calib\calib_checkmac.c  .generated_files/6d663a6fe45b6c182ea30dfce9aedb261e2b8fcd.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_checkmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_checkmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_checkmac.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_checkmac.o ..\src\config\default\library\cryptoauthlib\calib\calib_checkmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_command.o: ..\src\config\default\library\cryptoauthlib\calib\calib_command.c  .generated_files/c3baa5bf2133dbbe4a52edab6febeee34665afd9.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_command.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_command.o ..\src\config\default\library\cryptoauthlib\calib\calib_command.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_counter.o: ..\src\config\default\library\cryptoauthlib\calib\calib_counter.c  .generated_files/c4641daf6bfb75e3054246a5ea6d9d6e445c3187.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_counter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_counter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_counter.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_counter.o ..\src\config\default\library\cryptoauthlib\calib\calib_counter.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_derivekey.o: ..\src\config\default\library\cryptoauthlib\calib\calib_derivekey.c  .generated_files/7394b7dbe9d82c471d3dec4e316306a801b5a438.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_derivekey.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_derivekey.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_derivekey.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_derivekey.o ..\src\config\default\library\cryptoauthlib\calib\calib_derivekey.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_ecdh.o: ..\src\config\default\library\cryptoauthlib\calib\calib_ecdh.c  .generated_files/f161607f9e4748b407ecde2dc851bff960b57d10.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_ecdh.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_ecdh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_ecdh.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_ecdh.o ..\src\config\default\library\cryptoauthlib\calib\calib_ecdh.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_execution.o: ..\src\config\default\library\cryptoauthlib\calib\calib_execution.c  .generated_files/a2ae49de05d20ad73a45951d0820912519120fdf.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_execution.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_execution.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_execution.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_execution.o ..\src\config\default\library\cryptoauthlib\calib\calib_execution.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_gendig.o: ..\src\config\default\library\cryptoauthlib\calib\calib_gendig.c  .generated_files/505b99064c20915e98bc23449dc8516675835554.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_gendig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_gendig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_gendig.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_gendig.o ..\src\config\default\library\cryptoauthlib\calib\calib_gendig.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_genkey.o: ..\src\config\default\library\cryptoauthlib\calib\calib_genkey.c  .generated_files/4b50431163f61b61f0fddff093852db29e4866cc.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_genkey.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_genkey.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_genkey.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_genkey.o ..\src\config\default\library\cryptoauthlib\calib\calib_genkey.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_hmac.o: ..\src\config\default\library\cryptoauthlib\calib\calib_hmac.c  .generated_files/62ed14548865ddd5a978e71e3bb630b3345b8fab.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_hmac.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_hmac.o ..\src\config\default\library\cryptoauthlib\calib\calib_hmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_info.o: ..\src\config\default\library\cryptoauthlib\calib\calib_info.c  .generated_files/9374057fc5cc1cab81d760d39805fe8aa6c85cb9.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_info.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_info.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_info.o ..\src\config\default\library\cryptoauthlib\calib\calib_info.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_kdf.o: ..\src\config\default\library\cryptoauthlib\calib\calib_kdf.c  .generated_files/cfea6e1a778743e586c227b8134a91ab8373178b.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_kdf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_kdf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_kdf.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_kdf.o ..\src\config\default\library\cryptoauthlib\calib\calib_kdf.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_lock.o: ..\src\config\default\library\cryptoauthlib\calib\calib_lock.c  .generated_files/80183c9c47f14b0ce074cd4b8d87aed9847b3d30.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_lock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_lock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_lock.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_lock.o ..\src\config\default\library\cryptoauthlib\calib\calib_lock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_mac.o: ..\src\config\default\library\cryptoauthlib\calib\calib_mac.c  .generated_files/b0f72f4a20d2ab0cf58f0590f4d3a6d6eb8db203.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_mac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_mac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_mac.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_mac.o ..\src\config\default\library\cryptoauthlib\calib\calib_mac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_nonce.o: ..\src\config\default\library\cryptoauthlib\calib\calib_nonce.c  .generated_files/bf3bcb61764a97e41924c5df1a7e74723cebd4fa.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_nonce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_nonce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_nonce.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_nonce.o ..\src\config\default\library\cryptoauthlib\calib\calib_nonce.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_privwrite.o: ..\src\config\default\library\cryptoauthlib\calib\calib_privwrite.c  .generated_files/8491de48134ffa8b33e45010bcc915e134974ae6.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_privwrite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_privwrite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_privwrite.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_privwrite.o ..\src\config\default\library\cryptoauthlib\calib\calib_privwrite.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_random.o: ..\src\config\default\library\cryptoauthlib\calib\calib_random.c  .generated_files/8022ffbeafcde313a367a82d22a9fd175bb191bc.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_random.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_random.o ..\src\config\default\library\cryptoauthlib\calib\calib_random.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_read.o: ..\src\config\default\library\cryptoauthlib\calib\calib_read.c  .generated_files/cdf0f15e8c37407ebe726cb663258b2aa6514527.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_read.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_read.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_read.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_read.o ..\src\config\default\library\cryptoauthlib\calib\calib_read.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_secureboot.o: ..\src\config\default\library\cryptoauthlib\calib\calib_secureboot.c  .generated_files/553df9c1074965159bc88f810d13343ccda05c48.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_secureboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_secureboot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_secureboot.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_secureboot.o ..\src\config\default\library\cryptoauthlib\calib\calib_secureboot.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_selftest.o: ..\src\config\default\library\cryptoauthlib\calib\calib_selftest.c  .generated_files/d23d78dbb07e29a39cc9fc134847b8661b6d766d.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_selftest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_selftest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_selftest.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_selftest.o ..\src\config\default\library\cryptoauthlib\calib\calib_selftest.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_sha.o: ..\src\config\default\library\cryptoauthlib\calib\calib_sha.c  .generated_files/91a5669b2043f2c8d60251732873f184e6c567d9.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_sha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_sha.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_sha.o ..\src\config\default\library\cryptoauthlib\calib\calib_sha.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_sign.o: ..\src\config\default\library\cryptoauthlib\calib\calib_sign.c  .generated_files/33461f6a079b5ff3f6582f202c03d86d705dd648.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_sign.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_sign.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_sign.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_sign.o ..\src\config\default\library\cryptoauthlib\calib\calib_sign.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_updateextra.o: ..\src\config\default\library\cryptoauthlib\calib\calib_updateextra.c  .generated_files/ba43ac66142f63f2258435d8745d10e72e6eb1e8.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_updateextra.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_updateextra.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_updateextra.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_updateextra.o ..\src\config\default\library\cryptoauthlib\calib\calib_updateextra.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_verify.o: ..\src\config\default\library\cryptoauthlib\calib\calib_verify.c  .generated_files/98bf3eaa9ac0f3b8f4e64842d9f010f5c7ad67fc.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_verify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_verify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_verify.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_verify.o ..\src\config\default\library\cryptoauthlib\calib\calib_verify.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1251950395/calib_write.o: ..\src\config\default\library\cryptoauthlib\calib\calib_write.c  .generated_files/4dcda0aac3bdbe9c69b818ec85c3c0a1afcf3365.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1251950395" 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1251950395/calib_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1251950395/calib_write.o.d" -o ${OBJECTDIR}/_ext/1251950395/calib_write.o ..\src\config\default\library\cryptoauthlib\calib\calib_write.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1293311211/sha1_routines.o: ..\src\config\default\library\cryptoauthlib\crypto\hashes\sha1_routines.c  .generated_files/2da8683a6a5ac89e6dcec37e9860ea86f7d1325e.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1293311211" 
	@${RM} ${OBJECTDIR}/_ext/1293311211/sha1_routines.o.d 
	@${RM} ${OBJECTDIR}/_ext/1293311211/sha1_routines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1293311211/sha1_routines.o.d" -o ${OBJECTDIR}/_ext/1293311211/sha1_routines.o ..\src\config\default\library\cryptoauthlib\crypto\hashes\sha1_routines.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1293311211/sha2_routines.o: ..\src\config\default\library\cryptoauthlib\crypto\hashes\sha2_routines.c  .generated_files/6b8e4afe32be7f3863b0f4c8960e0147a962b280.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1293311211" 
	@${RM} ${OBJECTDIR}/_ext/1293311211/sha2_routines.o.d 
	@${RM} ${OBJECTDIR}/_ext/1293311211/sha2_routines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1293311211/sha2_routines.o.d" -o ${OBJECTDIR}/_ext/1293311211/sha2_routines.o ..\src\config\default\library\cryptoauthlib\crypto\hashes\sha2_routines.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_cbc.o: ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_hw_aes_cbc.c  .generated_files/2bee43a8ed3dd01f5392b17618bd51fd79bef54a.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/139662045" 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_cbc.o.d 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_cbc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_cbc.o.d" -o ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_cbc.o ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_hw_aes_cbc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_cmac.o: ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_hw_aes_cmac.c  .generated_files/77e2ce8651b390fa8b987e9c920aa396504632b6.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/139662045" 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_cmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_cmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_cmac.o.d" -o ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_cmac.o ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_hw_aes_cmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_ctr.o: ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_hw_aes_ctr.c  .generated_files/59dea8473bc18dac05a5d4074613f2261965f29b.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/139662045" 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_ctr.o.d 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_ctr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_ctr.o.d" -o ${OBJECTDIR}/_ext/139662045/atca_crypto_hw_aes_ctr.o ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_hw_aes_ctr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/139662045/atca_crypto_sw_ecdsa.o: ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_sw_ecdsa.c  .generated_files/8f0c79d77142659ffa6a931f38dcb33f1f7e517f.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/139662045" 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_ecdsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_ecdsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/139662045/atca_crypto_sw_ecdsa.o.d" -o ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_ecdsa.o ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_sw_ecdsa.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/139662045/atca_crypto_sw_rand.o: ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_sw_rand.c  .generated_files/e1581a38f59c706dd740617dfc2228b72379ff64.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/139662045" 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_rand.o.d 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_rand.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/139662045/atca_crypto_sw_rand.o.d" -o ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_rand.o ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_sw_rand.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/139662045/atca_crypto_sw_sha1.o: ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_sw_sha1.c  .generated_files/9251adf542559b9d25f6077a6077625b1caf7006.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/139662045" 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_sha1.o.d 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_sha1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/139662045/atca_crypto_sw_sha1.o.d" -o ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_sha1.o ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_sw_sha1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/139662045/atca_crypto_sw_sha2.o: ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_sw_sha2.c  .generated_files/983389d342df82d68ff6d7173b44c9b8a4c1ed88.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/139662045" 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_sha2.o.d 
	@${RM} ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_sha2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/139662045/atca_crypto_sw_sha2.o.d" -o ${OBJECTDIR}/_ext/139662045/atca_crypto_sw_sha2.o ..\src\config\default\library\cryptoauthlib\crypto\atca_crypto_sw_sha2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/856801649/atca_hal.o: ..\src\config\default\library\cryptoauthlib\hal\atca_hal.c  .generated_files/9c9070dad1177047c92a319ac44f83189387a56b.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/856801649" 
	@${RM} ${OBJECTDIR}/_ext/856801649/atca_hal.o.d 
	@${RM} ${OBJECTDIR}/_ext/856801649/atca_hal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/856801649/atca_hal.o.d" -o ${OBJECTDIR}/_ext/856801649/atca_hal.o ..\src\config\default\library\cryptoauthlib\hal\atca_hal.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/856801649/hal_i2c_harmony.o: ..\src\config\default\library\cryptoauthlib\hal\hal_i2c_harmony.c  .generated_files/4ce20c6fea692521264e06dcf922def8a78bff88.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/856801649" 
	@${RM} ${OBJECTDIR}/_ext/856801649/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/856801649/hal_i2c_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/856801649/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/856801649/hal_i2c_harmony.o ..\src\config\default\library\cryptoauthlib\hal\hal_i2c_harmony.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/856801649/hal_harmony_init.o: ..\src\config\default\library\cryptoauthlib\hal\hal_harmony_init.c  .generated_files/269116670382135c580203ff081919aa0b3fceb0.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/856801649" 
	@${RM} ${OBJECTDIR}/_ext/856801649/hal_harmony_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/856801649/hal_harmony_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/856801649/hal_harmony_init.o.d" -o ${OBJECTDIR}/_ext/856801649/hal_harmony_init.o ..\src\config\default\library\cryptoauthlib\hal\hal_harmony_init.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/856801649/hal_cortex_m_delay.o: ..\src\config\default\library\cryptoauthlib\hal\hal_cortex_m_delay.c  .generated_files/8acfc7955372c780dbd7888ab013fdcafaaf1e87.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/856801649" 
	@${RM} ${OBJECTDIR}/_ext/856801649/hal_cortex_m_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/856801649/hal_cortex_m_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/856801649/hal_cortex_m_delay.o.d" -o ${OBJECTDIR}/_ext/856801649/hal_cortex_m_delay.o ..\src\config\default\library\cryptoauthlib\hal\hal_cortex_m_delay.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/856801649/ATECC608A_0.o: ..\src\config\default\library\cryptoauthlib\hal\ATECC608A_0.c  .generated_files/c34731b8cbef1b4b23f0d2c7d3d4d4752f004c3b.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/856801649" 
	@${RM} ${OBJECTDIR}/_ext/856801649/ATECC608A_0.o.d 
	@${RM} ${OBJECTDIR}/_ext/856801649/ATECC608A_0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/856801649/ATECC608A_0.o.d" -o ${OBJECTDIR}/_ext/856801649/ATECC608A_0.o ..\src\config\default\library\cryptoauthlib\hal\ATECC608A_0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/791061130/atca_host.o: ..\src\config\default\library\cryptoauthlib\host\atca_host.c  .generated_files/5c166b9082b445a03ad0a7e9253f0dd15917c619.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/791061130" 
	@${RM} ${OBJECTDIR}/_ext/791061130/atca_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/791061130/atca_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/791061130/atca_host.o.d" -o ${OBJECTDIR}/_ext/791061130/atca_host.o ..\src\config\default\library\cryptoauthlib\host\atca_host.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/856804261/atca_jwt.o: ..\src\config\default\library\cryptoauthlib\jwt\atca_jwt.c  .generated_files/ea2cab2e051ba3147eb614d4f4c97045abee14b0.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/856804261" 
	@${RM} ${OBJECTDIR}/_ext/856804261/atca_jwt.o.d 
	@${RM} ${OBJECTDIR}/_ext/856804261/atca_jwt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/856804261/atca_jwt.o.d" -o ${OBJECTDIR}/_ext/856804261/atca_jwt.o ..\src\config\default\library\cryptoauthlib\jwt\atca_jwt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2058734010/atca_basic.o: ..\src\config\default\library\cryptoauthlib\atca_basic.c  .generated_files/ac6254dbad2b701191ae036b3d6100f99da28c22.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2058734010" 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_basic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_basic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2058734010/atca_basic.o.d" -o ${OBJECTDIR}/_ext/2058734010/atca_basic.o ..\src\config\default\library\cryptoauthlib\atca_basic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2058734010/atca_cfgs.o: ..\src\config\default\library\cryptoauthlib\atca_cfgs.c  .generated_files/cb06ce32070c117415326fe9a6fc7b11ff74d4ec.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2058734010" 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_cfgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_cfgs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2058734010/atca_cfgs.o.d" -o ${OBJECTDIR}/_ext/2058734010/atca_cfgs.o ..\src\config\default\library\cryptoauthlib\atca_cfgs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2058734010/atca_command.o: ..\src\config\default\library\cryptoauthlib\atca_command.c  .generated_files/a72a55073984e82e9b0cd860e739ec47eda93797.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2058734010" 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2058734010/atca_command.o.d" -o ${OBJECTDIR}/_ext/2058734010/atca_command.o ..\src\config\default\library\cryptoauthlib\atca_command.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2058734010/atca_debug.o: ..\src\config\default\library\cryptoauthlib\atca_debug.c  .generated_files/fb24f32c909f21eedf82c34043fc8b98457f5b04.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2058734010" 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2058734010/atca_debug.o.d" -o ${OBJECTDIR}/_ext/2058734010/atca_debug.o ..\src\config\default\library\cryptoauthlib\atca_debug.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2058734010/atca_device.o: ..\src\config\default\library\cryptoauthlib\atca_device.c  .generated_files/9c91adee92750227787fbb1bea152f9d4f80fa36.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2058734010" 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2058734010/atca_device.o.d" -o ${OBJECTDIR}/_ext/2058734010/atca_device.o ..\src\config\default\library\cryptoauthlib\atca_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2058734010/atca_helpers.o: ..\src\config\default\library\cryptoauthlib\atca_helpers.c  .generated_files/ece20bc4fe918f75ea504c8fba0b2b52782f2440.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2058734010" 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2058734010/atca_helpers.o.d" -o ${OBJECTDIR}/_ext/2058734010/atca_helpers.o ..\src\config\default\library\cryptoauthlib\atca_helpers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2058734010/atca_iface.o: ..\src\config\default\library\cryptoauthlib\atca_iface.c  .generated_files/5f26e0ed78c303f08dab3c193d6bc0c1177c367c.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2058734010" 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_iface.o.d 
	@${RM} ${OBJECTDIR}/_ext/2058734010/atca_iface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2058734010/atca_iface.o.d" -o ${OBJECTDIR}/_ext/2058734010/atca_iface.o ..\src\config\default\library\cryptoauthlib\atca_iface.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1929065681/plib_clock.o: ..\src\config\default\peripheral\clock\plib_clock.c  .generated_files/b0f4a6da30a1be24a8287c5e5a028f9220f36ea4.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1929065681" 
	@${RM} ${OBJECTDIR}/_ext/1929065681/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1929065681/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1929065681/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1929065681/plib_clock.o ..\src\config\default\peripheral\clock\plib_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1926916195/plib_evsys.o: ..\src\config\default\peripheral\evsys\plib_evsys.c  .generated_files/6b953158b3f8f3aad9399f169c036843ba1c15a.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1926916195" 
	@${RM} ${OBJECTDIR}/_ext/1926916195/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1926916195/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1926916195/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1926916195/plib_evsys.o ..\src\config\default\peripheral\evsys\plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/630845857/plib_nvic.o: ..\src\config\default\peripheral\nvic\plib_nvic.c  .generated_files/5089c6a510b9516d77f3889084c793e6de8a8e10.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/630845857" 
	@${RM} ${OBJECTDIR}/_ext/630845857/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/630845857/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/630845857/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/630845857/plib_nvic.o ..\src\config\default\peripheral\nvic\plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1244152207/plib_nvmctrl.o: ..\src\config\default\peripheral\nvmctrl\plib_nvmctrl.c  .generated_files/9a1569204dd3ea51839e9a43d685aa286dcd7d40.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1244152207" 
	@${RM} ${OBJECTDIR}/_ext/1244152207/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1244152207/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1244152207/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1244152207/plib_nvmctrl.o ..\src\config\default\peripheral\nvmctrl\plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/630899008/plib_port.o: ..\src\config\default\peripheral\port\plib_port.c  .generated_files/8f05b311a7e18be69a33cdfaebd0e865c75077bf.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/630899008" 
	@${RM} ${OBJECTDIR}/_ext/630899008/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/630899008/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/630899008/plib_port.o.d" -o ${OBJECTDIR}/_ext/630899008/plib_port.o ..\src\config\default\peripheral\port\plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/69476125/plib_sercom2_i2c_master.o: ..\src\config\default\peripheral\sercom\i2c_master\plib_sercom2_i2c_master.c  .generated_files/2e389b1c0a9135de6a0a806cd694fa5f07dc5207.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/69476125" 
	@${RM} ${OBJECTDIR}/_ext/69476125/plib_sercom2_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/69476125/plib_sercom2_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/69476125/plib_sercom2_i2c_master.o.d" -o ${OBJECTDIR}/_ext/69476125/plib_sercom2_i2c_master.o ..\src\config\default\peripheral\sercom\i2c_master\plib_sercom2_i2c_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/911089225/plib_sercom3_usart.o: ..\src\config\default\peripheral\sercom\usart\plib_sercom3_usart.c  .generated_files/763fdda800854323c11d44e854bbca58393ecf38.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/911089225" 
	@${RM} ${OBJECTDIR}/_ext/911089225/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/911089225/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/911089225/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/911089225/plib_sercom3_usart.o ..\src\config\default\peripheral\sercom\usart\plib_sercom3_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1979229458/plib_tc3.o: ..\src\config\default\peripheral\tc\plib_tc3.c  .generated_files/40252d70e198951de817be95056d7e53f75ef45d.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1979229458" 
	@${RM} ${OBJECTDIR}/_ext/1979229458/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1979229458/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1979229458/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/1979229458/plib_tc3.o ..\src\config\default\peripheral\tc\plib_tc3.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1785698216/xc32_monitor.o: ..\src\config\default\stdio\xc32_monitor.c  .generated_files/f3ce72a5c071f9643488e371fd849dc5e1ec3a94.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1785698216" 
	@${RM} ${OBJECTDIR}/_ext/1785698216/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1785698216/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1785698216/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1785698216/xc32_monitor.o ..\src\config\default\stdio\xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/479667431/sys_command.o: ..\src\config\default\system\command\src\sys_command.c  .generated_files/78bfa723b7d30c63a51a0c774d5b06467f39b33a.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/479667431" 
	@${RM} ${OBJECTDIR}/_ext/479667431/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/479667431/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/479667431/sys_command.o.d" -o ${OBJECTDIR}/_ext/479667431/sys_command.o ..\src\config\default\system\command\src\sys_command.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/22955251/sys_console.o: ..\src\config\default\system\console\src\sys_console.c  .generated_files/b739dbf8c224d9fc68d7e08f3309f3f5b8e8bd5f.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/22955251" 
	@${RM} ${OBJECTDIR}/_ext/22955251/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/22955251/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/22955251/sys_console.o.d" -o ${OBJECTDIR}/_ext/22955251/sys_console.o ..\src\config\default\system\console\src\sys_console.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/22955251/sys_console_uart.o: ..\src\config\default\system\console\src\sys_console_uart.c  .generated_files/726e59f4f13d116745dc20c759b196d16871a211.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/22955251" 
	@${RM} ${OBJECTDIR}/_ext/22955251/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/22955251/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/22955251/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/22955251/sys_console_uart.o ..\src\config\default\system\console\src\sys_console_uart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1711969675/sys_int.o: ..\src\config\default\system\int\src\sys_int.c  .generated_files/dc7dc6926bd2314bce7e92b6df4392f5ab15f95.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1711969675" 
	@${RM} ${OBJECTDIR}/_ext/1711969675/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1711969675/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1711969675/sys_int.o.d" -o ${OBJECTDIR}/_ext/1711969675/sys_int.o ..\src\config\default\system\int\src\sys_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1107797567/sys_time.o: ..\src\config\default\system\time\src\sys_time.c  .generated_files/e55e12234051ab5aae69915cbf734cdbdcf27e85.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1107797567" 
	@${RM} ${OBJECTDIR}/_ext/1107797567/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1107797567/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1107797567/sys_time.o.d" -o ${OBJECTDIR}/_ext/1107797567/sys_time.o ..\src\config\default\system\time\src\sys_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2062370875/initialization.o: ..\src\config\default\initialization.c  .generated_files/f9acfb887b1767213040c24f2b6d65b1b0a8c2e3.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2062370875" 
	@${RM} ${OBJECTDIR}/_ext/2062370875/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/2062370875/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2062370875/initialization.o.d" -o ${OBJECTDIR}/_ext/2062370875/initialization.o ..\src\config\default\initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2062370875/interrupts.o: ..\src\config\default\interrupts.c  .generated_files/aaaf7fbcdcd100e1d825492381548e68919ecb44.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2062370875" 
	@${RM} ${OBJECTDIR}/_ext/2062370875/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/2062370875/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2062370875/interrupts.o.d" -o ${OBJECTDIR}/_ext/2062370875/interrupts.o ..\src\config\default\interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2062370875/exceptions.o: ..\src\config\default\exceptions.c  .generated_files/442e78c696209bc5ad9d14c29a92daf572cd021b.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2062370875" 
	@${RM} ${OBJECTDIR}/_ext/2062370875/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2062370875/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2062370875/exceptions.o.d" -o ${OBJECTDIR}/_ext/2062370875/exceptions.o ..\src\config\default\exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2062370875/startup_xc32.o: ..\src\config\default\startup_xc32.c  .generated_files/dce5e6c9bbca23ba6a4e98694607a86e29097326.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2062370875" 
	@${RM} ${OBJECTDIR}/_ext/2062370875/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/2062370875/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2062370875/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/2062370875/startup_xc32.o ..\src\config\default\startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2062370875/libc_syscalls.o: ..\src\config\default\libc_syscalls.c  .generated_files/8df533306b11621daa7103ae66c821a939682e65.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2062370875" 
	@${RM} ${OBJECTDIR}/_ext/2062370875/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/2062370875/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2062370875/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/2062370875/libc_syscalls.o ..\src\config\default\libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2062370875/tasks.o: ..\src\config\default\tasks.c  .generated_files/2fd9ed633ba9c461eeebdf54e78fed7466b65c90.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2062370875" 
	@${RM} ${OBJECTDIR}/_ext/2062370875/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2062370875/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2062370875/tasks.o.d" -o ${OBJECTDIR}/_ext/2062370875/tasks.o ..\src\config\default\tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1362277832/main.o: ..\src\main.c  .generated_files/9a11f98a8908897a329ba323152f787eec4a8fe3.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1362277832" 
	@${RM} ${OBJECTDIR}/_ext/1362277832/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1362277832/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1362277832/main.o.d" -o ${OBJECTDIR}/_ext/1362277832/main.o ..\src\main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1362277832/app.o: ..\src\app.c  .generated_files/39b6bc7294b8c2acfcf03a11a422fd65c252339e.flag .generated_files/e77fb9c6bbc71aea7240f046412500b06ac2b587.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1362277832" 
	@${RM} ${OBJECTDIR}/_ext/1362277832/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1362277832/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/config/default/library/cryptoauthlib" -I"../src/config/default/library/cryptoauthlib/crypto" -I"../src/config/default/library/cryptoauthlib/pkcs11" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1362277832/app.o.d" -o ${OBJECTDIR}/_ext/1362277832/app.o ..\src\app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/atsamd21_ecc608a_demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ..\\src\\config\\default\\ATSAMD21J18A.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/atsamd21_ecc608a_demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=4096,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/atsamd21_ecc608a_demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ..\\src\\config\\default\\ATSAMD21J18A.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/atsamd21_ecc608a_demo.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=4096,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/atsamd21_ecc608a_demo.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
