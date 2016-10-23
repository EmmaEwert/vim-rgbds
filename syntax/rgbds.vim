" Vim syntax file
" Language: RGBDS Assembler
" Maintainer: Emma Ewert
" Changed: October 22 2016

syntax clear
syntax case ignore

" labels
syn match rgbLabel /\I\i*:/
syn match rgbLocal /\.\I\i*/

" Any other stuff
syn match rgbIdentifier /\I\i*/

" RGBDS commands
syn keyword rgbPreProc db dw ds equ equs import export global xref xdef div mul
syn keyword rgbPreProc sin cos tan asin acos atan atan2 fail warn if else endc
syn keyword rgbPreProc incbin include macro endm bank def opt popo pusho pushs
syn keyword rgbPreProc printt printv printf purge rept endr rsset rsreset rb rw
syn keyword rgbPreProc section shift
syn match rgbPreProc /\<set\>/

" asm opcodes
syn keyword rgbInstruction adc add and bit call ccf cp cpl daa dec di ei ex halt
syn keyword rgbInstruction halt inc jp jr ld ldd ldi ldh ldio nop or pop push
syn keyword rgbInstruction res ret reti rl rla rlc rlca rr rra rrc rrca rst sbc
syn keyword rgbInstruction scf sla sra srl stop sub swap xor
syn match rgbInstruction /\<set\>\ze.*,/

" section types
syn keyword rgbType rom0 romx vram sram wram0 wramx hram

" Registers
syn keyword rgbRegister a b d e f h l af bc de hl
syn match rgbRegister /\<c\>/

" Flags
syn keyword rgbSpecial z nz nc sp
syn match rgbSpecial /\(call\|jr\|jp\|ret\)\@<=\s\+\zsc\>/


" Numeric formats
syn match rgbNumber /\$\zs\x\+/
syn match rgbNumber /[$&%`]\@<!\d\+/
syn match rgbNumber /&\zs\o\+/
syn match rgbNumber /%\zs\(0\|1\)\+/
syn match rgbNumber /\d\+\.\d\+/
syn match rgbNumber /"\zs.*\ze"/
syn match rgbNumber /`\zs\S\+/

" predefined symbols
syn match rgbPresym "_PI"
syn match rgbPresym "_RS"
syn match rgbPresym "_NARG"
syn match rgbPresym "__LINE__"
syn match rgbPresym "__FILE__"
syn match rgbPresym "__DATE__"
syn match rgbPresym "__TIME__"

" comments
syn match rgbComment /;.*/
syn match rgbComment /^\*.*/

syn case match

let b:current_syntax = "rgb"

hi link rgbSection     Special
hi link rgbLabel       Identifier
hi link rgbComment     Comment
hi link rgbInstruction Ignore
hi link rgbInclude     Include
hi link rgbPreCondit   PreCondit
hi link rgbMacro       Macro
hi link rgbNumber      Number
hi link rgbPreProc     PreProc
hi link rgbString      String
hi link rgbType        Type
hi link rgbIdentifier  Identifier
hi link rgbPresym      Constant
hi link rgbRegister    Type
hi link rgbSpecial     Special
hi link rgbLocal       Label
