#
#  Copyright (c) 2011, Samsung Electronics Co. All rights reserved.
#
#  This program and the accompanying materials
#  are licensed and made available under the terms and conditions of the BSD License
#  which accompanies this distribution.  The full text of the license may be found at
#  http://opensource.org/licenses/bsd-license.php
#
#  THE PROGRAM IS DISTRIBUTED UNDER THE BSD LICENSE ON AN "AS IS" BASIS,
#  WITHOUT WARRANTIES OR REPRESENTATIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED.
#
#

################################################################################
#
# Defines Section - statements that will be processed to create a Makefile.
#
################################################################################
[Defines]
  PLATFORM_NAME                  = SmdkBoard-RTSM-A9x2
  PLATFORM_GUID                  = 66a5a01d-be0a-4398-9b74-5af4a261381f
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010005
  OUTPUT_DIRECTORY               = Build/SmdkBoard-RTSM-A9x2
  SUPPORTED_ARCHITECTURES        = ARM
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = SamsungPlatformPkg/SmdkBoardPkg/SmdkBoardPkg.fdf

[LibraryClasses.common]
!if $(BUILD_TARGETS) == RELEASE
  DebugLib|MdePkg/Library/BaseDebugLibNull/BaseDebugLibNull.inf
  UncachedMemoryAllocationLib|ArmPkg/Library/UncachedMemoryAllocationLib/UncachedMemoryAllocationLib.inf
!else
  DebugLib|MdePkg/Library/BaseDebugLibSerialPort/BaseDebugLibSerialPort.inf
  UncachedMemoryAllocationLib|ArmPkg/Library/UncachedMemoryAllocationLib/UncachedMemoryAllocationLib.inf
#  UncachedMemoryAllocationLib|ArmPkg/Library/DebugUncachedMemoryAllocationLib/DebugUncachedMemoryAllocationLib.inf
!endif
  DebugPrintErrorLevelLib|MdePkg/Library/BaseDebugPrintErrorLevelLib/BaseDebugPrintErrorLevelLib.inf
  ArmLib|ArmPkg/Library/ArmLib/ArmV7/ArmV7MPCoreLib.inf
  ArmPlatformLib|SamsungPlatformPkg/SmdkBoardPkg/Library/SmdkBoardLibRTSM/SmdkBoardLib.inf
  ArmMPCoreMailBoxLib|ArmPkg/Library/ArmMPCoreMailBoxLib/ArmMPCoreMailBoxLib.inf

  BaseLib|MdePkg/Library/BaseLib/BaseLib.inf
  BaseMemoryLib|ArmPkg/Library/BaseMemoryLibStm/BaseMemoryLibStm.inf

  EfiResetSystemLib|SamsungPlatformPkg/ExynosPkg/Library/ResetSystemLib/ResetSystemLib.inf
  PerformanceLib|MdePkg/Library/BasePerformanceLibNull/BasePerformanceLibNull.inf
  PrintLib|MdePkg/Library/BasePrintLib/BasePrintLib.inf

  EblCmdLib|ArmPlatformPkg/Library/EblCmdLib/EblCmdLib.inf
  EfiFileLib|EmbeddedPkg/Library/EfiFileLib/EfiFileLib.inf
  PeCoffGetEntryPointLib|MdePkg/Library/BasePeCoffGetEntryPointLib/BasePeCoffGetEntryPointLib.inf

  #
  # Uncomment (and comment out the next line) For RealView Debugger. The Standard IO window
  # in the debugger will show load and unload commands for symbols. You can cut and paste this
  # into the command window to load symbols. We should be able to use a script to do this, but
  # the version of RVD I have does not support scripts accessing system memory.
  #
#  PeCoffExtraActionLib|ArmPkg/Library/RvdPeCoffExtraActionLib/RvdPeCoffExtraActionLib.inf
  PeCoffExtraActionLib|ArmPkg/Library/DebugPeCoffExtraActionLib/DebugPeCoffExtraActionLib.inf
#  PeCoffExtraActionLib|MdePkg/Library/BasePeCoffExtraActionLibNull/BasePeCoffExtraActionLibNull.inf

  CacheMaintenanceLib|ArmPkg/Library/ArmCacheMaintenanceLib/ArmCacheMaintenanceLib.inf
  DefaultExceptioHandlerLib|ArmPkg/Library/DefaultExceptionHandlerLib/DefaultExceptionHandlerLib.inf

  SemihostLib|ArmPkg/Library/SemihostLib/SemihostLib.inf

  RealTimeClockLib|ArmPlatformPkg/Library/PL031RealTimeClockLib/PL031RealTimeClockLib.inf

  IoLib|MdePkg/Library/BaseIoLibIntrinsic/BaseIoLibIntrinsic.inf

  UefiDecompressLib|MdePkg/Library/BaseUefiDecompressLib/BaseUefiDecompressLib.inf
  PeCoffLib|MdePkg/Library/BasePeCoffLib/BasePeCoffLib.inf

  UefiLib|MdePkg/Library/UefiLib/UefiLib.inf
  HobLib|MdePkg/Library/DxeHobLib/DxeHobLib.inf
  UefiRuntimeServicesTableLib|MdePkg/Library/UefiRuntimeServicesTableLib/UefiRuntimeServicesTableLib.inf
  DevicePathLib|MdePkg/Library/UefiDevicePathLib/UefiDevicePathLib.inf
  UefiBootServicesTableLib|MdePkg/Library/UefiBootServicesTableLib/UefiBootServicesTableLib.inf

  DxeServicesTableLib|MdePkg/Library/DxeServicesTableLib/DxeServicesTableLib.inf
  UefiDriverEntryPoint|MdePkg/Library/UefiDriverEntryPoint/UefiDriverEntryPoint.inf
  UefiApplicationEntryPoint|MdePkg/Library/UefiApplicationEntryPoint/UefiApplicationEntryPoint.inf

#
# Assume everything is fixed at build
#
  PcdLib|MdePkg/Library/BasePcdLibNull/BasePcdLibNull.inf

  UefiRuntimeLib|MdePkg/Library/UefiRuntimeLib/UefiRuntimeLib.inf

  EblAddExternalCommandLib|EmbeddedPkg/Library/EblAddExternalCommandLib/EblAddExternalCommandLib.inf

  CpuLib|MdePkg/Library/BaseCpuLib/BaseCpuLib.inf
  PeCoffGetEntryPointLib|MdePkg/Library/BasePeCoffGetEntryPointLib/BasePeCoffGetEntryPointLib.inf

  EblNetworkLib|EmbeddedPkg/Library/EblNetworkLib/EblNetworkLib.inf

  ArmDisassemblerLib|ArmPkg/Library/ArmDisassemblerLib/ArmDisassemblerLib.inf
  DebugAgentLib|MdeModulePkg/Library/DebugAgentLibNull/DebugAgentLibNull.inf
  DebugAgentTimerLib|SamsungPlatformPkg/SmdkBoardPkg/Library/DebugAgentTimerLib/DebugAgentTimerLib.inf

  #SerialPortLib|ArmPlatformPkg/Library/PL011SerialPortLib/PL011SerialPortLib.inf
  SerialPortLib|SamsungPlatformPkg/ExynosPkg/Library/SerialPortLib/SerialPortLib.inf
  TimerLib|SamsungPlatformPkg/ExynosPkg/Library/TimerLib/TimerLib.inf

  # Samsung specific
 # TempLib|ArmPlatformPkg/Library/SamsungTempLib/SamsungTempLib.inf

  GdbSerialLib|SamsungPlatformPkg/ExynosPkg/Library/GdbSerialLib/GdbSerialLib.inf
  DmaLib|ArmPkg/Library/ArmDmaLib/ArmDmaLib.inf

  BdsLib|ArmPkg/Library/BdsLib/BdsLib.inf

  # iky for usb host
  UefiUsbLib|MdePkg/Library/UefiUsbLib/UefiUsbLib.inf
  UefiHiiServicesLib|MdeModulePkg/Library/UefiHiiServicesLib/UefiHiiServicesLib.inf
  HiiLib|MdeModulePkg/Library/UefiHiiLib/UefiHiiLib.inf

[LibraryClasses.common.SEC]
  ArmLib|ArmPkg/Library/ArmLib/ArmV7/ArmV7MPCoreLibSec.inf
  PcdLib|MdePkg/Library/BasePcdLibNull/BasePcdLibNull.inf
  ArmPlatformLib|SamsungPlatformPkg/SmdkBoardPkg/Library/SmdkBoardLibRTSM/SmdkBoardSecLib.inf

  # 1/123 faster than Stm or Vstm version
  BaseMemoryLib|MdePkg/Library/BaseMemoryLib/BaseMemoryLib.inf

  # Uncomment to turn on GDB stub in SEC.
  #DebugAgentLib|EmbeddedPkg/Library/GdbDebugAgent/GdbDebugAgent.inf

  # L2 Cache Driver
  L2X0CacheLib|ArmPkg/Drivers/PL310L2Cache/PL310L2CacheSec.inf
  # ARM PL390 General Interrupt Driver in Secure and Non-secure
  PL390GicSecLib|ArmPkg/Drivers/PL390Gic/PL390GicSec.inf
  PL390GicNonSecLib|ArmPkg/Drivers/PL390Gic/PL390GicNonSec.inf

[LibraryClasses.common.PEI_CORE]
  BaseMemoryLib|MdePkg/Library/BaseMemoryLib/BaseMemoryLib.inf
  HobLib|MdePkg/Library/PeiHobLib/PeiHobLib.inf
  # note: this won't actually work since globals in PEI are not writeable
  # need to generate an ARM PEI services table pointer implementation
  PeiServicesTablePointerLib|ArmPlatformPkg/Library/PeiServicesTablePointerLib/PeiServicesTablePointerLib.inf
  PeiServicesLib|MdePkg/Library/PeiServicesLib/PeiServicesLib.inf
  MemoryAllocationLib|MdePkg/Library/PeiMemoryAllocationLib/PeiMemoryAllocationLib.inf
  PeiCoreEntryPoint|MdePkg/Library/PeiCoreEntryPoint/PeiCoreEntryPoint.inf
  PerformanceLib|MdeModulePkg/Library/PeiPerformanceLib/PeiPerformanceLib.inf
  ReportStatusCodeLib|MdeModulePkg/Library/PeiReportStatusCodeLib/PeiReportStatusCodeLib.inf
  OemHookStatusCodeLib|MdeModulePkg/Library/OemHookStatusCodeLibNull/OemHookStatusCodeLibNull.inf
  PeCoffGetEntryPointLib|MdePkg/Library/BasePeCoffGetEntryPointLib/BasePeCoffGetEntryPointLib.inf
  DebugLib|MdePkg/Library/BaseDebugLibSerialPort/BaseDebugLibSerialPort.inf
  PeCoffLib|MdePkg/Library/BasePeCoffLib/BasePeCoffLib.inf
  UefiDecompressLib|MdePkg/Library/BaseUefiDecompressLib/BaseUefiDecompressLib.inf
  ExtractGuidedSectionLib|MdePkg/Library/PeiExtractGuidedSectionLib/PeiExtractGuidedSectionLib.inf

[LibraryClasses.common.PEIM]
  BaseMemoryLib|MdePkg/Library/BaseMemoryLib/BaseMemoryLib.inf
  HobLib|MdePkg/Library/PeiHobLib/PeiHobLib.inf
  # note: this won't actually work since globals in PEI are not writeable
  # need to generate an ARM PEI services table pointer implementation
  PeiServicesTablePointerLib|ArmPlatformPkg/Library/PeiServicesTablePointerLib/PeiServicesTablePointerLib.inf
  PeiServicesLib|MdePkg/Library/PeiServicesLib/PeiServicesLib.inf
  MemoryAllocationLib|MdePkg/Library/PeiMemoryAllocationLib/PeiMemoryAllocationLib.inf
  PeimEntryPoint|MdePkg/Library/PeimEntryPoint/PeimEntryPoint.inf
  PerformanceLib|MdeModulePkg/Library/PeiPerformanceLib/PeiPerformanceLib.inf
  ReportStatusCodeLib|MdeModulePkg/Library/PeiReportStatusCodeLib/PeiReportStatusCodeLib.inf
  OemHookStatusCodeLib|MdeModulePkg/Library/OemHookStatusCodeLibNull/OemHookStatusCodeLibNull.inf
  PeCoffGetEntryPointLib|MdePkg/Library/BasePeCoffGetEntryPointLib/BasePeCoffGetEntryPointLib.inf
  DebugLib|MdePkg/Library/BaseDebugLibSerialPort/BaseDebugLibSerialPort.inf
  PeCoffLib|MdePkg/Library/BasePeCoffLib/BasePeCoffLib.inf
  PeiResourcePublicationLib|MdePkg/Library/PeiResourcePublicationLib/PeiResourcePublicationLib.inf
  UefiDecompressLib|MdePkg/Library/BaseUefiDecompressLib/BaseUefiDecompressLib.inf
  ExtractGuidedSectionLib|MdePkg/Library/PeiExtractGuidedSectionLib/PeiExtractGuidedSectionLib.inf

[LibraryClasses.common.DXE_CORE]
  HobLib|MdePkg/Library/DxeCoreHobLib/DxeCoreHobLib.inf
  MemoryAllocationLib|MdeModulePkg/Library/DxeCoreMemoryAllocationLib/DxeCoreMemoryAllocationLib.inf
  DxeCoreEntryPoint|MdePkg/Library/DxeCoreEntryPoint/DxeCoreEntryPoint.inf
  ReportStatusCodeLib|IntelFrameworkModulePkg/Library/DxeReportStatusCodeLibFramework/DxeReportStatusCodeLib.inf
  ExtractGuidedSectionLib|MdePkg/Library/DxeExtractGuidedSectionLib/DxeExtractGuidedSectionLib.inf
  UefiDecompressLib|MdePkg/Library/BaseUefiDecompressLib/BaseUefiDecompressLib.inf
  DxeServicesLib|MdePkg/Library/DxeServicesLib/DxeServicesLib.inf

  PerformanceLib|MdeModulePkg/Library/DxeCorePerformanceLib/DxeCorePerformanceLib.inf


[LibraryClasses.common.DXE_DRIVER]
  ReportStatusCodeLib|IntelFrameworkModulePkg/Library/DxeReportStatusCodeLibFramework/DxeReportStatusCodeLib.inf
  DxeServicesLib|MdePkg/Library/DxeServicesLib/DxeServicesLib.inf
  SecurityManagementLib|MdeModulePkg/Library/DxeSecurityManagementLib/DxeSecurityManagementLib.inf
  PerformanceLib|MdeModulePkg/Library/DxePerformanceLib/DxePerformanceLib.inf
  MemoryAllocationLib|MdePkg/Library/UefiMemoryAllocationLib/UefiMemoryAllocationLib.inf
#  ExynosLib|SamsungPlatformPkg/ExynosPkg/Library/ExynosLib/ExynosLib.inf

[LibraryClasses.common.UEFI_APPLICATION]
  ReportStatusCodeLib|IntelFrameworkModulePkg/Library/DxeReportStatusCodeLibFramework/DxeReportStatusCodeLib.inf
  UefiDecompressLib|IntelFrameworkModulePkg/Library/BaseUefiTianoCustomDecompressLib/BaseUefiTianoCustomDecompressLib.inf
  PerformanceLib|MdeModulePkg/Library/DxePerformanceLib/DxePerformanceLib.inf
  MemoryAllocationLib|MdePkg/Library/UefiMemoryAllocationLib/UefiMemoryAllocationLib.inf

[LibraryClasses.common.UEFI_DRIVER]
  ReportStatusCodeLib|IntelFrameworkModulePkg/Library/DxeReportStatusCodeLibFramework/DxeReportStatusCodeLib.inf
  UefiDecompressLib|IntelFrameworkModulePkg/Library/BaseUefiTianoCustomDecompressLib/BaseUefiTianoCustomDecompressLib.inf
  ExtractGuidedSectionLib|MdePkg/Library/DxeExtractGuidedSectionLib/DxeExtractGuidedSectionLib.inf
  PerformanceLib|MdeModulePkg/Library/DxePerformanceLib/DxePerformanceLib.inf
  MemoryAllocationLib|MdePkg/Library/UefiMemoryAllocationLib/UefiMemoryAllocationLib.inf

[LibraryClasses.common.DXE_RUNTIME_DRIVER]
  HobLib|MdePkg/Library/DxeHobLib/DxeHobLib.inf
  MemoryAllocationLib|MdePkg/Library/UefiMemoryAllocationLib/UefiMemoryAllocationLib.inf
  ReportStatusCodeLib|IntelFrameworkModulePkg/Library/DxeReportStatusCodeLibFramework/DxeReportStatusCodeLib.inf
  CapsuleLib|MdeModulePkg/Library/DxeCapsuleLibNull/DxeCapsuleLibNull.inf
#  PeCoffLib|MdePkg/Library/BasePeCoffLib/BasePeCoffLib.inf
  MemoryAllocationLib|MdePkg/Library/UefiMemoryAllocationLib/UefiMemoryAllocationLib.inf

[LibraryClasses.ARM]
  #
  # It is not possible to prevent the ARM compiler for generic intrinsic functions.
  # This library provides the instrinsic functions generate by a given compiler.
  # [LibraryClasses.ARM] and NULL mean link this library into all ARM images.
  #
  NULL|ArmPkg/Library/CompilerIntrinsicsLib/CompilerIntrinsicsLib.inf

[BuildOptions]
  RVCT:*_*_ARM_ARCHCC_FLAGS  == --cpu Cortex-A9 --thumb --fpu=softvfp -I$(WORKSPACE)/SamsungPlatformPkg/SmdkBoardPkg/Include/Platform
  RVCT:*_*_ARM_ARCHASM_FLAGS == --cpu Cortex-A9 -I$(WORKSPACE)/SamsungPlatformPkg/SmdkBoardPkg/Include/Platform
  RVCT:RELEASE_*_*_CC_FLAGS  = -DMDEPKG_NDEBUG -I$(WORKSPACE)/SamsungPlatformPkg/SmdkBoardPkg/Include/Platform

  GCC:*_*_ARM_ARCHCC_FLAGS    == -march=armv7-a -mthumb -mthumb-interwork -I$(WORKSPACE)/SamsungPlatformPkg/ExynosPkg/Include/Platform
  GCC:*_*_ARM_ARCHASM_FLAGS   == -march=armv7-a -mthumb-interwork -I$(WORKSPACE)/SamsungPlatformPkg/ExynosPkg/Include/Platform
  GCC:*_*_ARM_CC_FLAGS        =  -Os -mword-relocations -mfpu=vfp -ffixed-r8
  GCC:RELEASE_*_*_CC_FLAGS    =  -DMDEPKG_NDEBUG -I$(WORKSPACE)/SamsungPlatformPkg/ExynosPkg/Include/Platform

  XCODE:*_*_ARM_ARCHCC_FLAGS     == -arch armv7 -march=armv7 -I$(WORKSPACE)/SamsungPlatformPkg/SmdkBoardPkg/Include/Platform
  XCODE:*_*_ARM_ARCHASM_FLAGS    == -arch armv7 -I$(WORKSPACE)/SamsungPlatformPkg/SmdkBoardPkg/Include/Platform
  XCODE:*_*_ARM_ARCHDLINK_FLAGS  == -arch armv7 -I$(WORKSPACE)/SamsungPlatformPkg/SmdkBoardPkg/Include/Platform
  XCODE:RELEASE_*_*_CC_FLAGS     = -DMDEPKG_NDEBUG -I$(WORKSPACE)/SamsungPlatformPkg/SmdkBoardPkg/Include/Platform


################################################################################
#
# Pcd Section - list of all EDK II PCD Entries defined by this Platform
#
################################################################################

[PcdsFeatureFlag.common]
  gEfiMdePkgTokenSpaceGuid.PcdComponentNameDisable|TRUE
  gEfiMdePkgTokenSpaceGuid.PcdDriverDiagnosticsDisable|TRUE
  gEfiMdePkgTokenSpaceGuid.PcdComponentName2Disable|TRUE
  gEfiMdePkgTokenSpaceGuid.PcdDriverDiagnostics2Disable|TRUE
  gEfiMdePkgTokenSpaceGuid.PcdUgaConsumeSupport|FALSE
  gEmbeddedTokenSpaceGuid.PcdCacheEnable|TRUE

  # Use the Vector Table location in CpuDxe. We will not copy the Vector Table at PcdCpuVectorBaseAddress
  gArmTokenSpaceGuid.PcdRelocateVectorTable|FALSE

  gArmTokenSpaceGuid.PcdCpuDxeProduceDebugSupport|FALSE

  gEfiMdeModulePkgTokenSpaceGuid.PcdTurnOffUsbLegacySupport|TRUE

  gArmPlatformTokenSpaceGuid.PcdStandalone|TRUE

!if $(EDK2_SKIP_PEICORE) == 1
  gArmTokenSpaceGuid.PcdSkipPeiCore|TRUE
!endif

[PcdsFixedAtBuild.common]
  gEmbeddedTokenSpaceGuid.PcdEmbeddedPrompt|"EXYNOS4210 %"
  gEmbeddedTokenSpaceGuid.PcdPrePiCpuMemorySize|32
  gEmbeddedTokenSpaceGuid.PcdPrePiCpuIoSize|0
  gEfiMdePkgTokenSpaceGuid.PcdMaximumUnicodeStringLength|1000000
  gEfiMdePkgTokenSpaceGuid.PcdMaximumAsciiStringLength|1000000
  gEfiMdePkgTokenSpaceGuid.PcdMaximumLinkedListLength|1000000
  gEfiMdePkgTokenSpaceGuid.PcdSpinLockTimeout|10000000
  gEfiMdePkgTokenSpaceGuid.PcdDebugClearMemoryValue|0xAF
  gEfiMdePkgTokenSpaceGuid.PcdPerformanceLibraryPropertyMask|1
  gEfiMdePkgTokenSpaceGuid.PcdPostCodePropertyMask|0
  gEfiMdePkgTokenSpaceGuid.PcdUefiLibMaxPrintBufferSize|320


# DEBUG_ASSERT_ENABLED       0x01
# DEBUG_PRINT_ENABLED        0x02
# DEBUG_CODE_ENABLED         0x04
# CLEAR_MEMORY_ENABLED       0x08
# ASSERT_BREAKPOINT_ENABLED  0x10
# ASSERT_DEADLOOP_ENABLED    0x20
  gEfiMdePkgTokenSpaceGuid.PcdDebugPropertyMask|0x2f

#  DEBUG_INIT      0x00000001  // Initialization
#  DEBUG_WARN      0x00000002  // Warnings
#  DEBUG_LOAD      0x00000004  // Load events
#  DEBUG_FS        0x00000008  // EFI File system
#  DEBUG_POOL      0x00000010  // Alloc & Free's
#  DEBUG_PAGE      0x00000020  // Alloc & Free's
#  DEBUG_INFO      0x00000040  // Verbose
#  DEBUG_DISPATCH  0x00000080  // PEI/DXE Dispatchers
#  DEBUG_VARIABLE  0x00000100  // Variable
#  DEBUG_BM        0x00000400  // Boot Manager
#  DEBUG_BLKIO     0x00001000  // BlkIo Driver
#  DEBUG_NET       0x00004000  // SNI Driver
#  DEBUG_UNDI      0x00010000  // UNDI Driver
#  DEBUG_LOADFILE  0x00020000  // UNDI Driver
#  DEBUG_EVENT     0x00080000  // Event messages
#  DEBUG_ERROR     0x80000000  // Error
  gEfiMdePkgTokenSpaceGuid.PcdDebugPrintErrorLevel|0x8000000F

  gEfiMdePkgTokenSpaceGuid.PcdReportStatusCodePropertyMask|0x07

  gEmbeddedTokenSpaceGuid.PcdEmbeddedAutomaticBootCommand|""
  gEmbeddedTokenSpaceGuid.PcdEmbeddedDefaultTextColor|0x07
  gEmbeddedTokenSpaceGuid.PcdEmbeddedMemVariableStoreSize|0x10000

#
# Optional feature to help prevent EFI memory map fragments
# Turned on and off via: PcdPrePiProduceMemoryTypeInformationHob
# Values are in EFI Pages (4K). DXE Core will make sure that
# at least this much of each type of memory can be allocated
# from a single memory range. This way you only end up with
# maximum of two fragements for each type in the memory map
# (the memory used, and the free memory that was prereserved
# but not used).
#
  gArmTokenSpaceGuid.PcdCpuVectorBaseAddress|0x00000000

  gArmPlatformTokenSpaceGuid.PcdMPCoreSupport|1

  gArmPlatformTokenSpaceGuid.PcdSystemMemoryUefiRegionSize|0x01000000
  gArmPlatformTokenSpaceGuid.PcdSystemMemoryFixRegionSize|0x00800000
  # Stacks for MPCores in Secure World
  gArmPlatformTokenSpaceGuid.PcdCPUCoresSecStackBase|0x4B000000     # Top of SEC Stack for Secure World
  gArmPlatformTokenSpaceGuid.PcdCPUCoreSecStackSize|0x2000		      # Stack for each of the 4 CPU cores

  # Stacks for MPCores in Monitor Mode
  gArmPlatformTokenSpaceGuid.PcdCPUCoresSecMonStackBase|0x4A000000  # Top of SEC Stack for Monitor World
  gArmPlatformTokenSpaceGuid.PcdCPUCoreSecMonStackSize|0x2000		    # Stack for each of the 4 CPU cores

  # Stacks for MPCores in Normal World
  gArmPlatformTokenSpaceGuid.PcdCPUCoresNonSecStackBase|0x48000000	# Top of SEC Stack for Normal World
  gArmPlatformTokenSpaceGuid.PcdCPUCoresNonSecStackSize|0x20000	# Stack for each of the 4 CPU cores
  gArmPlatformTokenSpaceGuid.PcdPeiServicePtrAddr|0x48020004        # Pei Services Ptr just above stack

  # Non Sec UEFI Firmware: These two PCDs must match PcdFlashFvMainBase/PcdFlashFvMainSize
  #gEmbeddedTokenSpaceGuid.PcdEmbeddedFdBaseAddress|0x4000000       # Must be equal to gEmbeddedTokenSpaceGuid.PcdFlashFvMainBase
 #gArmTokenSpaceGuid.PcdNormalFdBaseAddress|0x40050000       # Must be equal to gEmbeddedTokenSpaceGuid.PcdFlashFvMainBase
  gArmTokenSpaceGuid.PcdNormalFdBaseAddress |0x40010000       # Must be equal to gEmbeddedTokenSpaceGuid.PcdFlashFvMainBase
  #gEmbeddedTokenSpaceGuid.PcdEmbeddedFdSize|0x00100000              # Must be equal to gEmbeddedTokenSpaceGuid.PcdFlashFvMainSize
  gArmTokenSpaceGuid.PcdNormalFdSize|0x00100000              # Must be equal to gEmbeddedTokenSpaceGuid.PcdFlashFvMainSize

  gEmbeddedTokenSpaceGuid.PcdTimerPeriod|100000        # expressed in 100ns units, 100,000 x 100 ns = 10,000,000 ns = 10 ms
  gArmTokenSpaceGuid.PcdSystemMemoryBase|0x40000000
  gArmTokenSpaceGuid.PcdSystemMemorySize|0x80000000

 #
  # ARM Pcds
  #
  gArmTokenSpaceGuid.PcdArmUncachedMemoryMask|0x0000000040000000
  #
  # ARM EB PCDS
  #
  gExynosPkgTokenSpaceGuid.PcdGdbUartBase|0x1000a000
  gExynosPkgTokenSpaceGuid.PcdConsoleUartBase|0x13810000
  gExynosPkgTokenSpaceGuid.PcdCmuBase|0x10030000
  gExynosPkgTokenSpaceGuid.PcdPWMTimerBase|0x139d0000
  gExynosPkgTokenSpaceGuid.PcdPmuBase|0x10020000
  gExynosPkgTokenSpaceGuid.PcdGpioPart1Base|0x11400000
  gExynosPkgTokenSpaceGuid.PcdGpioPart2Base|0x11000000
  gExynosPkgTokenSpaceGuid.PcdSdMmcBase|0x12530000
  gExynosPkgTokenSpaceGuid.PcdSysBase|0x10010000
  gExynosPkgTokenSpaceGuid.PcdFIMD0Base|0x11C00000
  gExynosPkgTokenSpaceGuid.PcdGICBase|0x10500000
  gExynosPkgTokenSpaceGuid.PcdTZPCBase|0x10100000
  #
  # ARM PL390 General Interrupt Controller
  #
  gArmTokenSpaceGuid.PcdGicDistributorBase|0x10490000
  gArmTokenSpaceGuid.PcdGicInterruptInterfaceBase|0x10480000

  #
  # ARM OS Loader
  #
  # Versatile Express machine type (ARM VERSATILE EXPRESS = 2272) required for ARM Linux:
  gArmTokenSpaceGuid.PcdArmMachineType|2925
  gArmTokenSpaceGuid.PcdLinuxKernelDP|L"VenHw(B615F1F5-5088-43CD-809C-A16E52487D00)/MemoryMapped(0,0x40008000,0x40400000)"
  gArmTokenSpaceGuid.PcdLinuxAtag|"rdinit=/bin/ash debug earlyprintk console=ttyAMA0,115200"
  gArmTokenSpaceGuid.PcdFdtDP|L""

  #
  # ARM L2x0 PCDs
  #
  gArmTokenSpaceGuid.PcdL2x0ControllerBase|0x10502000

  #
  # ARM VE MP Core Mailbox
  #
  gArmTokenSpaceGuid.PcdMPCoreMailboxSetAddress|0x10000030
  gArmTokenSpaceGuid.PcdMPCoreMailboxGetAddress|0x10000030
  gArmTokenSpaceGuid.PcdMPCoreMailboxClearAddress|0x10000034
  gArmTokenSpaceGuid.PcdMPCoreMailboxClearValue|0xFFFFFFFF


################################################################################
#
# Components Section - list of all EDK II Modules needed by this Platform
#
################################################################################
[Components.common]

#
# SEC
#
  ArmPlatformPkg/Sec/Sec.inf
  ArmPlatformPkg/PrePeiCore/PrePeiCoreMPCore.inf

#
# PEI Phase modules
#
  MdeModulePkg/Core/Pei/PeiMain.inf
  MdeModulePkg/Universal/PCD/Pei/Pcd.inf  {
    <LibraryClasses>
      PcdLib|MdePkg/Library/BasePcdLibNull/BasePcdLibNull.inf
  }
  ArmPlatformPkg/PlatformPei/PlatformPei.inf
  ArmPlatformPkg/MemoryInitPei/MemoryInitPei.inf
  IntelFrameworkModulePkg/Universal/StatusCode/Pei/StatusCodePei.inf
  Nt32Pkg/BootModePei/BootModePei.inf
  MdeModulePkg/Universal/Variable/Pei/VariablePei.inf
  MdeModulePkg/Core/DxeIplPeim/DxeIpl.inf {
    <LibraryClasses>
      NULL|IntelFrameworkModulePkg/Library/LzmaCustomDecompressLib/LzmaCustomDecompressLib.inf
  }

#
# DXE
#
  MdeModulePkg/Core/Dxe/DxeMain.inf {
    <LibraryClasses>
      PcdLib|MdePkg/Library/BasePcdLibNull/BasePcdLibNull.inf
      NULL|MdeModulePkg/Library/DxeCrc32GuidedSectionExtractLib/DxeCrc32GuidedSectionExtractLib.inf
  }

  #
  # Architectural Protocols
  #
  MdeModulePkg/Core/RuntimeDxe/RuntimeDxe.inf
  ArmPkg/Drivers/CpuDxe/CpuDxe.inf
  MdeModulePkg/Universal/SecurityStubDxe/SecurityStubDxe.inf
  MdeModulePkg/Universal/WatchdogTimerDxe/WatchdogTimer.inf
  MdeModulePkg/Universal/CapsuleRuntimeDxe/CapsuleRuntimeDxe.inf
  MdeModulePkg/Universal/Variable/EmuRuntimeDxe/EmuVariableRuntimeDxe.inf
  EmbeddedPkg/EmbeddedMonotonicCounter/EmbeddedMonotonicCounter.inf
  #MdeModulePkg/Universal/Console/ConSplitterDxe/ConSplitterDxe.inf
  #MdeModulePkg/Universal/Console/GraphicsConsoleDxe/GraphicsConsoleDxe.inf

  EmbeddedPkg/ResetRuntimeDxe/ResetRuntimeDxe.inf
  EmbeddedPkg/RealTimeClockRuntimeDxe/RealTimeClockRuntimeDxe.inf
  EmbeddedPkg/MetronomeDxe/MetronomeDxe.inf

  EmbeddedPkg/SimpleTextInOutSerial/SimpleTextInOutSerial.inf

  SamsungPlatformPkg/SmdkBoardPkg/FvbDxe/FvbDxe.inf
  SamsungPlatformPkg/ExynosPkg/TimerDxe/TimerDxe.inf

  #
  # ACPI Support
  #

  #
  # Samsung specific Driver
  #
  #ArmPlatformPkg/Drivers/SamsungTempDxe/SamsungTempDxe.inf
  ArmPkg/Drivers/PL390Gic/PL390GicDxe.inf
  #SamsungPlatformPkg/ExynosPkg/InterruptDxe/InterruptDxe.inf
  SamsungPlatformPkg/ExynosPkg/SDHCDxe/SDHCDxe.inf
  #ArmPlatformPkg/Drivers/Exynos4210DisplayDxe/Exynos4210DisplayDxe.inf
  SamsungPlatformPkg/ExynosPkg/Gpio/Gpio.inf{
    <LibraryClasses>
       ExynosLib|SamsungPlatformPkg/ExynosPkg/Library/ExynosLib/ExynosLib.inf
  }
  #
  # Semi-hosting filesystem
  #
  ArmPkg/Filesystem/SemihostFs/SemihostFs.inf

  #
  # FAT filesystem + GPT/MBR partitioning
  #
  MdeModulePkg/Universal/Disk/DiskIoDxe/DiskIoDxe.inf
  MdeModulePkg/Universal/Disk/PartitionDxe/PartitionDxe.inf
  FatPkg/EnhancedFatDxe/Fat.inf
  MdeModulePkg/Universal/Disk/UnicodeCollation/EnglishDxe/EnglishDxe.inf


  #
  # Application
  #
  EmbeddedPkg/Ebl/Ebl.inf

  #
  # Bds
  #
  MdeModulePkg/Universal/DevicePathDxe/DevicePathDxe.inf
  ArmPlatformPkg/Bds/Bds.inf

  #
  # usb host
  #
  MdeModulePkg/Universal/HiiDatabaseDxe/HiiDatabaseDxe.inf

  #
  # usb host : ehci + bus + pci_emul + mass_storage
  #
  SamsungPlatformPkg/ExynosPkg/GraphicsConsoleDxe/GraphicsConsoleDxe.inf
