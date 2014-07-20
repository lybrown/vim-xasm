" Vim syntax file
" Language: xasm
" Maintainer: Lyren Brown <lyren.brown@gmail.com>
" $Id$

syn match xasmWord "\h\w*" " Prevent Number from matching inside word

syn match xasmPreProc "\<\(equ\|icl\|ini\|ins\|run\|org\|dta\|opt\|ift\|eli\|els\|eif\|ert\)\>"

syn match xasmOpcode "\<\(adc\|anc\|and\|asl\|asr\|atx\|bcc\|bcs\|beq\|bit\|bmi\|bne\)\>"
syn match xasmOpcode "\<\(bpl\|brk\|bvc\|bvs\|clc\|cld\|cli\|clv\|cmp\|cpx\|cpy\|dcp\)\>"
syn match xasmOpcode "\<\(dec\|dex\|dey\|dop\|eor\|hle\|inc\|inx\|iny\|isb\|jmp\|jsr\)\>"
syn match xasmOpcode "\<\(las\|lax\|lda\|ldx\|ldy\|lsr\|nop\|ora\|pha\|php\|pla\|plp\)\>"
syn match xasmOpcode "\<\(rla\|rol\|ror\|rra\|rti\|rts\|sax\|sbc\|sbx\|sec\|sed\|sei\)\>"
syn match xasmOpcode "\<\(sha\|shx\|shy\|slo\|sre\|sta\|stx\|sty\|tax\|tay\|tsx\|txa\)\>"
syn match xasmOpcode "\<\(txs\|tya\|xaa\|xas\|bra\|tsb\|rmb\|bbr\|trb\|stz\|smb\|bbs\)\>"
syn match xasmOpcode "\<\(wai\|stp\|plx\|ply\|phx\|phy\)\>"

syn match xasmVirtOp "\<\(mva\|mvx\|mvy\|mwa\|mwx\|mwy\)\>"
syn match xasmVirtOp "\<\(rcc\|rcs\|req\|rmi\|rne\|rpl\)\>"
syn match xasmVirtOp "\<\(scc\|scs\|seq\|smi\|sne\|spl\)\>"
syn match xasmVirtOp "\<\(jcc\|jcs\|jeq\|jmi\|jne\|jpl\)\>"
syn match xasmVirtOp "\<\(add\|sub\|end\|inw\)\>"

syn region xasmCComment start="/\*" end="\*/"
syn match xasmComment ";.*"
syn match xasmNumber "[0-9]\+"
syn match xasmHexNumber "$[0-9a-fA-F]\+"
syn match xasmLabel "^\h\w*"
syn match xasmTrailingSpace " \+$"
syn match xasmOperator "a(\|[-<>#@+*/()]"
syn match xasmRepeat ":[0-9]\+"
syn match xasmPerl "^ *>>>.*"
syn region xasmString start=/[cd]\?'/ end=/'/
syn region xasmString start=/[cd]\?"/ end=/"/
syn region xasmInterp start=/<<</ end=/>>>/

hi def link xasmCComment Comment
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
hi def link xasmPerl Type
hi def link xasmInterp Type
