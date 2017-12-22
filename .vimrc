"导入默认配置"
if filereadable("/etc/vimrc")
	source /etc/vimrc
endif
"避免vi的影响"
set nocompatible
"显示空白字符"
set list
set listchars=tab:>_,eol:\|,trail:*,extends:>,precedes:<,nbsp:@
"显示行号"
set number
"Tab 长度为4"
set tabstop=4
set softtabstop=4
set shiftwidth=4
"不使用空格代替Tab"
set noexpandtab
"自动缩进"
set autoindent
set cindent
set smarttab
set smartindent
"set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s"
"共享剪贴板"
set clipboard+=unnamed
" 当文件被改动时自动载入"
set autoread
"禁止生成临时文件"
set nobackup
set noswapfile
"左右移动可跨行"
set whichwrap+=<
set whichwrap+=>
set whichwrap+=[
set whichwrap+=]
"保持光标行居中"
set scrolloff=1024
"不自动换行"
set nowrap
set backspace=2
" 显示中文帮助"
if version >= 603
	set helplang=cn
	set encoding=utf-8
endif

"编码"
set fencs=utf-8
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8

"配色"
colorscheme ron
"colorscheme elflord"
"colorscheme zellner"
"colorscheme slate"
"colorscheme pablo"


"--------键盘映射--------"
"从普通模式Esc进入插入模式，副作用是默认进入插入模式，引起小BUG"
"nnoremap <Esc> i"
"永远不进入普通模式，引起严重BUG"
"inoremap <Esc> <c-o>"
"撤销"
inoremap <c-z> <c-o>u
nnoremap <c-z> ui
vnoremap <c-z> <Esc><c-o>u
"反撤销"
inoremap <c-y> <c-o><c-r>
nnoremap <c-y> <c-r>i
vnoremap <c-y> <Esc><c-o><c-r>
"保存"
inoremap <c-s> <c-o>:w<CR>
nnoremap <c-s> :w<CR>i
vnoremap <c-s> <Esc><c-o>:w<CR>
"新标签"
inoremap <c-n> <c-o>:tabnew<CR>
nnoremap <c-n> :tabnew<CR>i
vnoremap <c-n> <Esc><c-o>:tabnew<CR>
"退出/关闭标签"
inoremap <c-w> <c-o>:q<CR>
nnoremap <c-w> :q<CR>i
vnoremap <c-w> <Esc><c-o>:q<CR>
"强行退出"
inoremap <c-q> <c-o>:q!<CR>
nnoremap <c-q> :q!<CR>i
vnoremap <c-q> <Esc><c-o>:q!<CR>
"粘贴"
inoremap <c-v> <Esc>pi
nnoremap <c-v> pi
vnoremap <c-v> <Delete><Esc>p
"删除整行"
inoremap <c-d> <c-o>dd
nnoremap <c-d> ddi
vnoremap <c-d> ddd
"输入命令"
inoremap <c-b> <c-o>:
"查找"
inoremap <c-f> <c-o>/
nnoremap <c-f> /
"替换"
inoremap <c-h> <c-o>:%s /
nnoremap <c-h> i<c-o>:%s /
"普通模式BackSpace,Delete进入插入模式"
nnoremap <Bs> i<Bs>
nnoremap <Delete> i<Delete>
"智能Home"
inoremap <home> <c-o>^
"Shift移动进入VSUAL模式"
inoremap <s-left> <c-o>v<left>
inoremap <s-right> <c-o>v<right>
inoremap <c-s-left> <c-o>v<c-left>
inoremap <c-s-right> <c-o>v<c-right>
inoremap <s-up> <c-o>v<up>
inoremap <s-down> <c-o>v<down>
inoremap <s-home> <c-o>v^
inoremap <s-end> <c-o>v<end>
inoremap <s-pageup> <c-o>v<pageup>
inoremap <s-pagedown> <c-o>v<pagedown>
"普通模式移动进入插入模式(只读文件无法移动)"
nnoremap <left> i<left>
nnoremap <right> i<right>
nnoremap <c-left> i<c-left>
nnoremap <c-right> i<c-right>
"nnoremap <up> i<up>"
"nnoremap <down> i<down>"
nnoremap <home> i<home>
nnoremap <end> i<end>
nnoremap <pageup> i<pageup>
nnoremap <pagedown> i<pagedown>
"普通模式Shift移动先进入插入模式再进入VSUAL模式"
nnoremap <s-left> i<c-o>v<left>
nnoremap <s-right> i<c-o>v<right>
nnoremap <c-s-left> i<c-o>v<c-left>
nnoremap <c-s-right> i<c-o>v<c-right>
nnoremap <s-up> i<c-o>v<up>
nnoremap <s-down> i<c-o>v<down>
nnoremap <s-home> i<c-o>v<home>
nnoremap <s-end> i<c-o>v<end>
nnoremap <s-pageup> i<c-o>v<pageup>
nnoremap <s-pagedown> i<c-o>v<pagedown>
"VSUAL模式使用Shift移动"
vnoremap <s-left> <left>
vnoremap <s-right> <right>
vnoremap <c-s-left> <c-left>
vnoremap <c-s-right> <c-right>
vnoremap <s-up> <up>
vnoremap <s-down> <down>
vnoremap <s-home> <home>
vnoremap <s-end> <end>
vnoremap <s-pageup> <pageup>
vnoremap <s-pagedown> <pagedown>
"VSUAL模式移动将回到INSERT模式"
vnoremap <left> <Esc><left>
vnoremap <right> <Esc><right>
vnoremap <c-left> <Esc><c-left>
vnoremap <c-right> <Esc><c-right>
vnoremap <up> <Esc><up>
vnoremap <down> <Esc><down>
vnoremap <home> <Esc><home>
vnoremap <end> <Esc><end>
vnoremap <pageup> <Esc><pageup>
vnoremap <pagedown> <Esc><pagedown>
"VSUAL模式 Backspace键删除"
vnoremap <Bs> <Delete>

vnoremap <c-c> y
inoremap <c-up> <up><up><up><up>
inoremap <c-down> <down><down><down><down>
vnoremap <c-up> <up><up><up><up>
vnoremap <c-down> <down><down><down><down>
vnoremap ( di(i<left><c-o>pi)<left>
vnoremap [ di[i<left><c-o>pi]<left>
vnoremap { di{i<left><c-o>pi}<left>
vnoremap ' di'i<left><c-o>pi'<left>
vnoremap " di"i<left><c-o>pi"<left>


"括号补全"
"inoremap ( ()<Left>
"inoremap [ []<Left>
"inoremap { {}<Left>
"inoremap ' ''<Left>
"inoremap " ""<Left>


"普通模式键盘输入字符进入插入模式"
nnoremap 0 i0
nnoremap 1 i1
nnoremap 2 i2
nnoremap 3 i3
nnoremap 4 i4
nnoremap 5 i5
nnoremap 6 i6
nnoremap 7 i7
nnoremap 8 i8
nnoremap 9 i9

nnoremap a ia
nnoremap b ib
nnoremap c ic
nnoremap d id
nnoremap e ie
nnoremap f if
nnoremap g ig
nnoremap h ih
nnoremap i ii
nnoremap j ij
nnoremap k ik
nnoremap l il
nnoremap m im
nnoremap n in
nnoremap o io
nnoremap p ip
nnoremap q iq
nnoremap r ir
nnoremap s is
nnoremap t it
nnoremap u iu
nnoremap v iv
nnoremap w iw
nnoremap x ix
nnoremap y iy
nnoremap z iz
nnoremap A iA
nnoremap B iB
nnoremap C iC
nnoremap D iD
nnoremap E iE
nnoremap F iF
nnoremap G iG
nnoremap H iH
nnoremap I iI
nnoremap J iJ
nnoremap K iK
nnoremap L iL
nnoremap M iM
nnoremap N iN
nnoremap O iO
nnoremap P iP
nnoremap Q iQ
nnoremap R iR
nnoremap S iS
nnoremap T iT
nnoremap U iU
nnoremap V iV
nnoremap W iW
nnoremap X iX
nnoremap Y iY
nnoremap Z iZ

nnoremap . i.
nnoremap , i,
nnoremap ; i;
nnoremap ! i!
nnoremap ? i?
"nnoremap : i:"
nnoremap ' i'
nnoremap " i"
nnoremap / i/
nnoremap \ i\
nnoremap $ i$
nnoremap % i%
nnoremap - i-
nnoremap _ i_
nnoremap ( i(
nnoremap ) i)
nnoremap { i{
nnoremap } i}
nnoremap < i<
nnoremap > i>
nnoremap [ i[
nnoremap ] i]
nnoremap = i=
nnoremap @ i@
nnoremap * i*
nnoremap ^ i^
nnoremap & i&
"nnoremap | i|"
nnoremap + i+
nnoremap # i#
nnoremap ` i`
nnoremap ~ i~

nnoremap <Space> i<Space>
nnoremap <Enter> i<Enter>
nnoremap <Tab> i<Tab>

"VSUAL模式键盘输入字符替换选中部分"
vnoremap 0 <Delete>i0
vnoremap 1 <Delete>i1
vnoremap 2 <Delete>i2
vnoremap 3 <Delete>i3
vnoremap 4 <Delete>i4
vnoremap 5 <Delete>i5
vnoremap 6 <Delete>i6
vnoremap 7 <Delete>i7
vnoremap 8 <Delete>i8
vnoremap 9 <Delete>i9

vnoremap a <Delete>ia
vnoremap b <Delete>ib
vnoremap c <Delete>ic
vnoremap d <Delete>id
vnoremap e <Delete>ie
vnoremap f <Delete>if
vnoremap g <Delete>ig
vnoremap h <Delete>ih
vnoremap i <Delete>ii
vnoremap j <Delete>ij
vnoremap k <Delete>ik
vnoremap l <Delete>il
vnoremap m <Delete>im
vnoremap n <Delete>in
vnoremap o <Delete>io
vnoremap p <Delete>ip
vnoremap q <Delete>iq
vnoremap r <Delete>ir
vnoremap s <Delete>is
vnoremap t <Delete>it
vnoremap u <Delete>iu
vnoremap v <Delete>iv
vnoremap w <Delete>iw
vnoremap x <Delete>ix
vnoremap y <Delete>iy
vnoremap z <Delete>iz
vnoremap A <Delete>iA
vnoremap B <Delete>iB
vnoremap C <Delete>iC
vnoremap D <Delete>iD
vnoremap E <Delete>iE
vnoremap F <Delete>iF
vnoremap G <Delete>iG
vnoremap H <Delete>iH
vnoremap I <Delete>iI
vnoremap J <Delete>iJ
vnoremap K <Delete>iK
vnoremap L <Delete>iL
vnoremap M <Delete>iM
vnoremap N <Delete>iN
vnoremap O <Delete>iO
vnoremap P <Delete>iP
vnoremap Q <Delete>iQ
vnoremap R <Delete>iR
vnoremap S <Delete>iS
vnoremap T <Delete>iT
vnoremap U <Delete>iU
vnoremap V <Delete>iV
vnoremap W <Delete>iW
vnoremap X <Delete>iX
vnoremap Y <Delete>iY
vnoremap Z <Delete>iZ

vnoremap . <Delete>i.
vnoremap , <Delete>i,
vnoremap ; <Delete>i;
vnoremap ! <Delete>i!
vnoremap ? <Delete>i?
"vnoremap : i<Delete>i"
vnoremap ' <Delete>i'
vnoremap " <Delete>i"
vnoremap / <Delete>i/
vnoremap \ <Delete>i\
vnoremap $ <Delete>i$
vnoremap % <Delete>i%
vnoremap - <Delete>i-
vnoremap _ <Delete>i_
vnoremap ( <Delete>i(
vnoremap ) <Delete>i)
vnoremap { <Delete>i{
vnoremap } <Delete>i}
vnoremap < <Delete>i<
vnoremap > <Delete>i>
vnoremap [ <Delete>i[
vnoremap ] <Delete>i]
vnoremap = <Delete>i=
vnoremap @ <Delete>i@
vnoremap * <Delete>i*
vnoremap ^ <Delete>i^
vnoremap & <Delete>i&
"vnoremap | i<Delete>i"
vnoremap + <Delete>i+
vnoremap # <Delete>i#
vnoremap ` <Delete>i`
vnoremap ~ <Delete>i~

vnoremap <Space> <Delete>i<Space>
vnoremap <Enter> <Delete>i<Enter>
vnoremap <Tab> >>
vnoremap <s-Tab> <<
