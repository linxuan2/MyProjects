PLATFORM_INCLUDE_DIRECTORYS	:= $(PLATFORM_INCLUDE_DIRECTORYS) $(PLATFORM_TOOL_DIRECTORY)/android-ndk-r7m/sources/cxx-stl/gnu-libstdc++/include
PLATFORM_INCLUDE_DIRECTORYS	:= $(PLATFORM_INCLUDE_DIRECTORYS) $(PLATFORM_TOOL_DIRECTORY)/android-ndk-r7m/sources/cxx-stl/gnu-libstdc++/libs/mips-r2-sf/include
PLATFORM_INCLUDE_DIRECTORYS	:= $(PLATFORM_INCLUDE_DIRECTORYS) $(PLATFORM_TOOL_DIRECTORY)/android-ndk-r7m/platforms/android-8/arch-mips/usr/include

PLATFORM_LIBRARY_DIRECTORYS	:= $(PLATFORM_LIBRARY_DIRECTORYS) $(PLATFORM_TOOL_DIRECTORY)/android-ndk-r7m/sources/cxx-stl/gnu-libstdc++/libs/mips-r2-sf
PLATFORM_LIBRARY_DIRECTORYS	:= $(PLATFORM_LIBRARY_DIRECTORYS) $(PLATFORM_TOOL_DIRECTORY)/android-ndk-r7m/platforms/android-8/arch-mips/usr/lib

PLATFORM_COMPILE_FLAGS		:= $(PLATFORM_COMPILE_FLAGS) -fpic
PLATFORM_COMPILE_FLAGS		:= $(PLATFORM_COMPILE_FLAGS) -fno-strict-aliasing
PLATFORM_COMPILE_FLAGS		:= $(PLATFORM_COMPILE_FLAGS) -finline-functions
PLATFORM_COMPILE_FLAGS		:= $(PLATFORM_COMPILE_FLAGS) -ffunction-sections
PLATFORM_COMPILE_FLAGS		:= $(PLATFORM_COMPILE_FLAGS) -funwind-tables
PLATFORM_COMPILE_FLAGS		:= $(PLATFORM_COMPILE_FLAGS) -fmessage-length=0
PLATFORM_COMPILE_FLAGS		:= $(PLATFORM_COMPILE_FLAGS) -fno-inline-functions-called-once
PLATFORM_COMPILE_FLAGS		:= $(PLATFORM_COMPILE_FLAGS) -fgcse-after-reload
PLATFORM_COMPILE_FLAGS		:= $(PLATFORM_COMPILE_FLAGS) -frerun-cse-after-loop
PLATFORM_COMPILE_FLAGS		:= $(PLATFORM_COMPILE_FLAGS) -frename-registers
PLATFORM_COMPILE_FLAGS		:= $(PLATFORM_COMPILE_FLAGS) -D__ANDROID__
PLATFORM_COMPILE_FLAGS		:= $(PLATFORM_COMPILE_FLAGS) -Wno-psabi
PLATFORM_COMPILE_FLAGS		:= $(PLATFORM_COMPILE_FLAGS) -EL
PLATFORM_COMPILE_FLAGS		:= $(PLATFORM_COMPILE_FLAGS) -mips32r2
PLATFORM_COMPILE_FLAGS		:= $(PLATFORM_COMPILE_FLAGS) -msoft-float
PLATFORM_COMPILE_FLAGS		:= $(PLATFORM_COMPILE_FLAGS) -fno-exceptions
PLATFORM_COMPILE_FLAGS		:= $(PLATFORM_COMPILE_FLAGS) -fno-rtti
PLATFORM_COMPILE_FLAGS		:= $(PLATFORM_COMPILE_FLAGS) -fomit-frame-pointer
PLATFORM_COMPILE_FLAGS		:= $(PLATFORM_COMPILE_FLAGS) -funswitch-loops
PLATFORM_COMPILE_FLAGS		:= $(PLATFORM_COMPILE_FLAGS) -finline-limit=300
PLATFORM_COMPILE_FLAGS		:= $(PLATFORM_COMPILE_FLAGS) -DANDROID
PLATFORM_COMPILE_FLAGS		:= $(PLATFORM_COMPILE_FLAGS) -Wa,--noexecstack
PLATFORM_COMPILE_FLAGS		:= $(PLATFORM_COMPILE_FLAGS) -fexceptions
PLATFORM_COMPILE_FLAGS		:= $(PLATFORM_COMPILE_FLAGS) -frtti

PLATFORM_LINK_FLAGS		:= $(PLATFORM_LINK_FLAGS) -Wl,--gc-sections
PLATFORM_LINK_FLAGS		:= $(PLATFORM_LINK_FLAGS) -Wl,-z,nocopyreloc
PLATFORM_LINK_FLAGS		:= $(PLATFORM_LINK_FLAGS) --sysroot=$(PLATFORM_TOOL_DIRECTORY)/android-ndk-r7m/platforms/android-8/arch-mips/mips-r2/sf
PLATFORM_LINK_FLAGS		:= $(PLATFORM_LINK_FLAGS) -EL
PLATFORM_LINK_FLAGS		:= $(PLATFORM_LINK_FLAGS) -mips32r2
PLATFORM_LINK_FLAGS		:= $(PLATFORM_LINK_FLAGS) -msoft-float
PLATFORM_LINK_FLAGS		:= $(PLATFORM_LINK_FLAGS) -Wl,--no-undefined
PLATFORM_LINK_FLAGS		:= $(PLATFORM_LINK_FLAGS) -Wl,-z,noexecstack
PLATFORM_LINK_FLAGS		:= $(PLATFORM_LINK_FLAGS) $(addprefix -L,$(PLATFORM_LIBRARY_DIRECTORYS))

PLATFORM_DEPEND_LIBRARYS	:= gnustl_shared supc++ gcc c m