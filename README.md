**该工程演示了在ATSAMD21J18A(ARM Cortext Mo+内核)中通过集成CrytoAuthLib与ATECC608交互，实现常见的安全应用。**

## 演示的功能有：
1. ATECC608A的ID读取，预配置2个ATECC608A(Host&Remote)；
2. Host对Remote对称身份认证;
3. Host对Remote非对称身份认证;
4. Host与Remote之间ECDH/ECDHE密钥交换；
5. AES加密和解密

### 运行平台：

[ATSAMD21-XPRO](https://www.microchip.com/developmenttools/ProductDetails/ATSAMD21-XPRO
)

[mikroBUS Xplained Pro ](https://www.microchip.com/developmenttools/ProductDetails/ATMBUSADAPTER-XPRO)

[ATECC608A Trust](https://www.microchip.com/developmenttools/ProductDetails/DT100104)

### 开发工具

[MPLABX IDE 5.45](https://www.microchip.com/mplab/mplab-x-ide)

[XC32编译器](https://www.microchip.com/en-us/development-tools-tools-and-software/mplab-xc-compilers)

### 使用方法

将上面的3个板子连接并设置好后，将ATSAMD21-XPRO的DEBUG USB连接到电脑，编译程序并下载到板子中，上电后，黄色LED闪烁。
打开串口工具，找到USB虚拟的串口，设置串口波特率9600，输入以下命令测试：

- *init 60* //初始化I2C地址，ATECC608A默认I2C地址为0x60
- *readsn* //读取ATECC608A ID
- *readcfg* //读取读取ATECC608A ConfigZone字节，并判断芯片是否已锁住
- *provision* xx //对安全元件进行预配置，61为新设置的I2C地址，如61。
- *symmetric xx yy* //Host对Remote进行对称身份认证，xx为Host的I2C地址，yy为Remote的I2C地址。如symmetric 61 62。
- *asymmetric xx yy* //Host对Remote进行非对称身份认证，xx为Host的I2C地址，yy为Remote的I2C地址。如asymmetric 61 62。
- *ecdh1 xx yy* //Host和Remote进行ECDH操作，并将协商后的共享密钥从安全元件内读取出打印
- *ecdh2 xx yy* //Host和Remote进行ECDH操作，协商后的主密钥不从安全元件中读取，用于数据的加密和解密
- *aesen xx* //使用Host预配置的AES KEY对随机数据加密
- *aesde yy* //使用Remote预配置的AES KEY对加密后的密文进行解密
