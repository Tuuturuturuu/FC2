/*---------------------------------------------------------------------
**
**  Fichero:
**    ld_script.ld  10/6/2014
**
**    Fundamentos de Computadores
**    Dpto. de Arquitectura de Computadores y Autom?tica
**    Facultad de Inform?tica. Universidad Complutense de Madrid
**
**  Prop?sito:
**    Script de enlazado
**
**  Notas de dise?o:
**
**-------------------------------------------------------------------*/

SECTIONS
{
    . = 0x0C000000;
    .data : {
      *(.data)
      *(.rodata) 
    }
    .bss : { 
      *(.bss)
    }
    .text : { 
      *(.text)
    }
    PROVIDE( end = . );
	PROVIDE (_stack = 0x0c700800);
}
