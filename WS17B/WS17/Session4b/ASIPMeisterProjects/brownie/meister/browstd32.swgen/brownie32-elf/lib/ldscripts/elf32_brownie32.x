/* Default linker script, for normal executables */
OUTPUT_FORMAT("elf32-brownie32", "",
	      "")
OUTPUT_ARCH(brownie32)
SEARCH_DIR("/home/asip04/SS17/Session4b/ASIPMeisterProjects/brownie/meister/browstd32.swgen/brownie32-elf/lib");
SECTIONS
{
  . = 0x10000000;
  .text :
  {
    CREATE_OBJECT_SYMBOLS
    *(.text)
    etext = ALIGN(1);
  }
  . = ALIGN(1);
  .data :
  {
    *(.data)
    CONSTRUCTORS
    edata  =  .;
  }
  .bss :
  {
   *(.bss)
   *(COMMON)
   end = . ;
  }
}
