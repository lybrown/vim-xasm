" Vim syntax file
" Language: xasm
" Maintainer: http://atariage.com/forums/user/21021-xuel/

syn match xasmWord "\h\w*" " Prevent Number from matching inside word

syn match xasmOpCode "\c\<\(ADC\|AND\|ASL\|BCC\|BCS\|BEQ\|BIT\|BMI\|BNE\|BPL\)\>"
syn match xasmOpCode "\c\<\(BRK\|BVC\|BVS\|CLC\|CLD\|CLI\|CLV\|CMP\|CPX\|CPY\)\>"
syn match xasmOpCode "\c\<\(DEC\|DEX\|DEY\|EOR\|INC\|INX\|INY\|JMP\|JSR\|LDA\)\>"
syn match xasmOpCode "\c\<\(LDX\|LDY\|LSR\|NOP\|ORA\|PHA\|PHP\|PLA\|PLP\|ROL\)\>"
syn match xasmOpCode "\c\<\(ROR\|RTI\|RTS\|SBC\|SEC\|SED\|SEI\|STA\|STX\|STY\)\>"
syn match xasmOpCode "\c\<\(TAX\|TAY\|TSX\|TXA\|TXS\|TYA\)\>"

syn match xasmVirtOp "\c\<\(ADD\|INW\|JCC\|JCS\|JEQ\|JMI\|JNE\|JPL\|JVC\|JVS\)\>"
syn match xasmVirtOp "\c\<\(MVA\|MVX\|MVY\|MWA\|MWX\|MWY\|RCC\|RCS\|REQ\|RMI\)\>"
syn match xasmVirtOp "\c\<\(RNE\|RPL\|RVC\|RVS\|SCC\|SCS\|SEQ\|SMI\|SNE\|SPL\)\>"
syn match xasmVirtOp "\c\<\(SUB\|SVC\|SVS\)\>"

syn match xasmPreProc "\c\<\(DTA\|EIF\|ELI\|ELS\|END\|EQU\|ERT\|ICL\|IFT\|INI\)\>"
syn match xasmPreProc "\c\<\(INS\|OPT\|ORG\|RUN\)\>"

syn match xasmComment ";.*"
syn match xasmNumber "[0-9]\+"
syn match xasmHexNumber "$[0-9a-fA-F]\+"
syn match xasmLabel "^\h\w*"
syn match xasmTrailingSpace " \+$"
syn match xasmOperator "a(\|[-<>#@+*/()]"
syn match xasmRepeat ":[0-9]\+"
syn region xasmString start=/[cd]\?'/ end=/'/
syn region xasmString start=/[cd]\?"/ end=/"/

hi def link xasmComment Comment
hi def link xasmNumber Number
hi def link xasmHexNumber Number
hi def link xasmLabel Identifier
hi def link xasmTrailingSpace Error
hi def link xasmOpcode Keyword
hi def link xasmVirtOp PreProc
hi def link xasmPreProc PreProc
hi def link xasmOperator PreProc
hi def link xasmRepeat PreProc
hi def link xasmString String
