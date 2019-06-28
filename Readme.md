Install useful tools and configure your linux desktop by just run one command.

## Packages
- Coding:
    - vim: The world's best editor

- Command Line Tools:
    - fzf: a powerful fuzzy find tools
    - cmus: A command line music player

- Desktop Environment:
    - i3-gaps: a flatten window manager
    - rofi: a powerful spotlight
    - typora: a beautiful markdown editor
    - qutebrowser: A keyboard-focused browser
    - ranger: A vim key-mapped terminal file manager


- System Tools:
    - zsh: A much more powerful shell
    - oh-my-zsh 
    - alacritty: a GPU-accelarated Terminal
    - compton: 
    - curl
    - wget


## Vim
一些基本设置：
- 语法高亮
- 显示cursorline
- 搜索高亮
- 增量搜索
- 按下空格+回车取消高亮
- 显示行号和相对行号

关于按键配置了的内容:
- 设置空格为LEADER键
- 去掉了s键的默认功能
- 设置了分屏的快捷键：s[h/j/k/l] 向四个方向分屏
- 设置了快速切换分屏的快捷键: LEADER[h/j/k/l]向四个方向切换
- 设置代码折叠为 LEADER+z ,具体用法为在代码块上同时按下z和空格，可以折叠该代码块
- 取消代码折叠绑定为LEADER+d
- Normal模式下的方向键被绑定为调整分屏大小
- LEADER键+t开启新标签
- 绑定LEADER+j/k 一次移动多行
- LEADER+f开启NerdTree
- LEADER+b开启TagBar
- LEADER+c[] Comment

安装了的插件：
- NerdTree 侧边栏文件树
- YouCompleteMe 多语言自动补全
- autopairs 括号成对
- vim-snazzy 设置的主题
- vim-airline
- lightline 底部的指示栏
- vim-snippets 自定义代码块补全插件
- supertab 设置tab为自动补全
- fzf command line search tool
- vim-startify
- vim-tagbar
- vim-polyglot 
- vim-devicons
- vim-signify
- vim-nerdcommenter


## zsh
zsh配置的插件:
- autojump: 在终端中可以直接jump到某个目录，省去了多次的cd
- zsh-autosuggestions: 在输入内容时会自动给出之前执行过指令的补全
- zsh-syntax-highlighting: 正确的指令和错误的指令高亮
- extract: 解压时可以直接用x进行解压
- git: 对git的一些内容设置了alias
