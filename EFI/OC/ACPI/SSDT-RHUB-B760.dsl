/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210930 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/mizhidr/Desktop/12代test4/EFI/OC/ACPI/SSDT-RHUB-B760.aml, Sun Jun 11 10:22:48 2023
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000AB (171)
 *     Revision         0x02
 *     Checksum         0x67
 *     OEM ID           "CORP"
 *     OEM Table ID     "RHBReset"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "CORP", "RHBReset", 0x00001000)
{
    External (_SB_.PC00.RP01.PXSX, DeviceObj)
    External (_SB_.PC00.XHCI, DeviceObj)

    Scope (_SB.PC00.RP01.PXSX)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }
            Else
            {
                Return (0x0F)
            }
        }
    }

    Scope (_SB.PC00.XHCI)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }
            Else
            {
                Return (0x0F)
            }
        }
    }
}

