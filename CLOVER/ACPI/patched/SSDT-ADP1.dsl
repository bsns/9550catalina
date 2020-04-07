// AC Table
DefinitionBlock ("", "SSDT", 2, "hack", "ADP1", 0)
{
    External (_SB_.AC__, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)

    Scope (\_SB.AC)
    {
        If (_OSI ("Darwin"))
        {
            Name (_PRW, Package ()  // _PRW: Power Resources for Wake
            {
                0x18, 
                3
            })
        }
    }

    Device (_SB.PCI0.LPCB.EC.CHRG)
    {
        Name (_HID, "DELLBBB1")  // _HID: Hardware ID
        Method (_STA, 0)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0F)
            }
            Return (0)
        }
    }
}

