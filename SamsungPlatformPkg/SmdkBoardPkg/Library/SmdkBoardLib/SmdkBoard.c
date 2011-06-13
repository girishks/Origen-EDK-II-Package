/** @file
*
*  Copyright (c) 2011, Samsung Electronics Co. All rights reserved.
*
*  This program and the accompanying materials
*  are licensed and made available under the terms and conditions of the BSD License
*  which accompanies this distribution.  The full text of the license may be found at
*  http://opensource.org/licenses/bsd-license.php
*
*  THE PROGRAM IS DISTRIBUTED UNDER THE BSD LICENSE ON AN "AS IS" BASIS,
*  WITHOUT WARRANTIES OR REPRESENTATIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED.
*
**/

#include <Library/IoLib.h>
#include <Library/ArmPlatformLib.h>
#include <Library/DebugLib.h>
#include <Library/PcdLib.h>
#include <Drivers/PL341Dmc.h>
#include <Platform/ArmPlatform.h>

/**
  Return if Trustzone is supported by your platform

  A non-zero value must be returned if you want to support a Secure World on your platform.
  ArmPlatformTrustzoneInit() will later set up the secure regions.
  This function can return 0 even if Trustzone is supported by your processor. In this case,
  the platform will continue to run in Secure World.

  @return   A non-zero value if Trustzone supported.

**/
UINTN ArmPlatformTrustzoneSupported(VOID) {
  // There is no Trustzone controllers (TZPC & TZASC) and no Secure Memory on RTSM
	return TRUE;
}

/**
  Initialize the Secure peripherals and memory regions

  If Trustzone is supported by your platform then this function makes the required initialization
  of the secure peripherals and memory regions.

**/
VOID ArmPlatformTrustzoneInit(VOID) {
  UINT32  TZPCBase;
  TZPCBase = PcdGet32(PcdTZPCBase) + TZPC0_OFFSET;
  MmioWrite32((TZPCBase + 0x00),0x00);
  MmioWrite32((TZPCBase +TZPC_DECPROT0SET_OFFSET),0xFF);
  MmioWrite32((TZPCBase +TZPC_DECPROT1SET_OFFSET),0xFF);
  MmioWrite32((TZPCBase +TZPC_DECPROT2SET_OFFSET),0xFF);
  MmioWrite32((TZPCBase +TZPC_DECPROT3SET_OFFSET),0xFF);

  TZPCBase = PcdGet32(PcdTZPCBase) + TZPC1_OFFSET;
  MmioWrite32((TZPCBase + 0x00),0x00);
  MmioWrite32((TZPCBase +TZPC_DECPROT0SET_OFFSET),0xFF);
  MmioWrite32((TZPCBase +TZPC_DECPROT1SET_OFFSET),0xFF);
  MmioWrite32((TZPCBase +TZPC_DECPROT2SET_OFFSET),0xFF);
  MmioWrite32((TZPCBase +TZPC_DECPROT3SET_OFFSET),0xFF);

  TZPCBase = PcdGet32(PcdTZPCBase) + TZPC2_OFFSET;
  MmioWrite32((TZPCBase + 0x00),0x00);
  MmioWrite32((TZPCBase +TZPC_DECPROT0SET_OFFSET),0xFF);
  MmioWrite32((TZPCBase +TZPC_DECPROT1SET_OFFSET),0xFF);
  MmioWrite32((TZPCBase +TZPC_DECPROT2SET_OFFSET),0xFF);
  MmioWrite32((TZPCBase +TZPC_DECPROT3SET_OFFSET),0xFF);

  TZPCBase = PcdGet32(PcdTZPCBase) + TZPC3_OFFSET;
  MmioWrite32((TZPCBase + 0x00),0x00);
  MmioWrite32((TZPCBase +TZPC_DECPROT0SET_OFFSET),0xFF);
  MmioWrite32((TZPCBase +TZPC_DECPROT1SET_OFFSET),0xFF);
  MmioWrite32((TZPCBase +TZPC_DECPROT2SET_OFFSET),0xFF);
  MmioWrite32((TZPCBase +TZPC_DECPROT3SET_OFFSET),0xFF);

  TZPCBase = PcdGet32(PcdTZPCBase) + TZPC4_OFFSET;
  MmioWrite32((TZPCBase + 0x00),0x00);
  MmioWrite32((TZPCBase +TZPC_DECPROT0SET_OFFSET),0xFF);
  MmioWrite32((TZPCBase +TZPC_DECPROT1SET_OFFSET),0xFF);
  MmioWrite32((TZPCBase +TZPC_DECPROT2SET_OFFSET),0xFF);
  MmioWrite32((TZPCBase +TZPC_DECPROT3SET_OFFSET),0xFF);


  TZPCBase = PcdGet32(PcdTZPCBase) + TZPC5_OFFSET;
  MmioWrite32((TZPCBase + 0x00),0x00);
  MmioWrite32((TZPCBase +TZPC_DECPROT0SET_OFFSET),0xFF);
  MmioWrite32((TZPCBase +TZPC_DECPROT1SET_OFFSET),0xFF);
  MmioWrite32((TZPCBase +TZPC_DECPROT2SET_OFFSET),0xFF);
  MmioWrite32((TZPCBase +TZPC_DECPROT3SET_OFFSET),0xFF);
}

/**
  Remap the memory at 0x0

  Some platform requires or gives the ability to remap the memory at the address 0x0.
  This function can do nothing if this feature is not relevant to your platform.

**/
VOID ArmPlatformBootRemapping(VOID) {
  // Disable memory remapping and return to normal mapping
	MmioOr32 (ARM_EB_SYSCTRL, BIT8); //EB_SP810_CTRL_BASE
}


/**
  Return the current Boot Mode

  This function returns the boot reason on the platform

  @return   Return the current Boot Mode of the platform

**/
EFI_BOOT_MODE
ArmPlatformGetBootMode (
  VOID
  )
{
  return BOOT_WITH_FULL_CONFIGURATION;
}

/**
  Initialize the system (or sometimes called permanent) memory

  This memory is generally represented by the DRAM.

**/
VOID ArmPlatformInitializeSystemMemory(VOID) {
    // We do not need to initialize the System Memory on RTSM
}
VOID
ArmPlatformNormalInitialize (
  VOID
  ) {

}
