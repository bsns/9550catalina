//
// BackLight Fix Table
// Rename In Config:
// BRT6 to BRTX 
// Find: 14204252 543602
// Replace: 14204252 545802
//
DefinitionBlock ("", "SSDT", 2, "hack", "BRT6", 0)
{
    External (_SB_.PCI0.GFX0, DeviceObj)
    External (_SB_.PCI0.GFX0.LCD_, DeviceObj)
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)
    External (_SB_.PCI0.GFX0.BRTX, MethodObj)
    External (ALSD, DeviceObj)

    // Bright Function Key Fix
    Scope (_SB.PCI0.GFX0)
    {
        Method (BRT6, 2)
        {
            If (_OSI ("Darwin"))
            {
                If ((Arg0 == One))
                {
                    Notify (^LCD, 0x86) // Device-Specific
                    Notify (^^LPCB.PS2K, 0x10) // Reserved
                    Notify (^^LPCB.PS2K, 0x0206)
                    Notify (^^LPCB.PS2K, 0x0286)
                }

                If ((Arg0 & 0x02))
                {
                    Notify (^LCD, 0x87) // Device-Specific
                    Notify (^^LPCB.PS2K, 0x20) // Reserved
                    Notify (^^LPCB.PS2K, 0x0205)
                    Notify (^^LPCB.PS2K, 0x0285)
                }
            }
            Else
            {
                \_SB.PCI0.GFX0.BRTX (Arg0, Arg1)
            }
        }
    }

    //Inject PNLF
    Scope (_SB)
    {
        Device (PNLF)
        {
            Name(_ADR, Zero)
            Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
            Name (_CID, "backlight")  // _CID: Compatible ID
            Name (_UID, 0x10)  // _UID: Unique ID
            Method (_STA, 0)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0B)
                }
                Return (0)
            }
        }
    }
}

