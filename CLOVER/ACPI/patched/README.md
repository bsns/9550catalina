| AML           | Description                    | Related Patches                                              |
| ------------- | ------------------------------ | ------------------------------------------------------------ |
| SSDT-BRT6     | brightness control key mapping | Rename Method BRT6,2 to BRTX,2                               |
| SSDT-DDGPU    | disable dGPU                   |                                                              |
| SSDT-DeepIDLE | for NVME sleep                 |                                                              |
| SSDT-DMAC     | DMA Controller                 |                                                              |
| SSDT-GPRW     | disable "wake on USB"          | Change Method(GPRW,2,N) to XPRW                              |
| SSDT-I2C      | I2C Device                     | Change _STA to XSTA<br />Change _CRS to XCRS in Device TPD1  |
| SSDT-LPC      | force AppleLPC to load         |                                                              |
| SSDT-MCHC     | exposes the memory controller  |                                                              |
| SSDT-PMCR     | to load AppleIntelPCHPMC       |                                                              |
| SSDT-PNLF     | for correct brightness         |                                                              |
| SSDT-PTSWAK   | for correct shutdown           | Change Method(\_PTS,1,N) to ZPTS<br />Change Method(\_WAK,1,N) to ZWAK |
| SSDT-RMCF     | config many things             | Change GFX0 to IGPU                                          |
| SSDT-SATA     | SATA Controller                | Change SAT0 to SATA                                          |
| SSDT-SMBUS    | identifies the SMBus           |                                                              |
| SSDT-TYPC     | for Type-C hot-plug            | Rename _RMV to XRMV                                          |
| SSDT-USBX     | set USB current                |                                                              |
| SSDT-XOSI     | for VoodooI2C                  | Change OSID to XSID<br />Change _OSI to XOSI                 |
| SSDT-YTBT     | fixes DSDT recursion issue     | ~~Rename XTBT to YTBT~~                                      |

### Credits

[KNNSpeed/guide-dell-xps-15-9560](https://www.tonymacx86.com/threads/guide-dell-xps-15-9560-4k-touch-1tb-ssd-32gb-ram-100-adobergb.224486/), [RehabMan/OS-X-Clover-Laptop-Config](https://github.com/RehabMan/OS-X-Clover-Laptop-Config) and [corenel/XPS9550-macOS](https://github.com/corenel/XPS9550-macOS)

