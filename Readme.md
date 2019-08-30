Install useful tools and configure your linux desktop by just run one command.

## Packages
- Coding:
    - vim: The world's best editor
    - miniconda3: python发行版

- Command Line Tools:
    - fzf   : 命令行的模糊搜索工具，十分强大
    - cmus  : 命令行的音乐播放器

- Desktop Environment:
    - i3-gaps: 相比i3可以设置窗口间距
    - rofi: 有点像Spotlight的应用启动器
    - Typora: a beautiful markdown editor
    - qutebrowser: 一个可以纯键盘操作的浏览器
    - ranger: 终端里的文件管理器，Vim类似的键位
        - perl-image-exiftool
        - atool 
        - w3m
        - highlight
    - polybar : 用于替代i3bar的更好看的bar



- System Tools:
    - zsh: A much more powerful shell
    - oh-my-zsh 
    - alacritty: 一款GPU加速的终端
    - compton: 终端透明工具
    - curl
    - wget
    - axel 一个多线程断点续传的下载工具，速度飞起


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
- vim-snippets      自定义代码块补全插件
- supertab    设置tab为自动补全
- fzf command line search tool
- vim-startify
- vim-tagbar
- vim-polyglot 
- vim-devicons
- vim-signify
- vim-nerdcommenter
- undotree


## zsh
zsh配置的插件:

- autojump: 在终端中可以直接jump到某个目录，省去了多次的cd
- zsh-autosuggestions: 在输入内容时会自动给出之前执行过指令的补全
- zsh-syntax-highlighting: 正确的指令和错误的指令高亮
- extract: 解压时可以直接用x进行解压
- git: 对git的一些内容设置了alias

## i3
设置了polybar以及compton、i3lock等内容

polybar分别设置了CPU、Battery、Music、backlight等功能

compton作用是设置背景透明

i3lock使用了i3lock-fancy，是一个比较美观的锁屏方案,这里用到了Hack的字体，想要更改也可以修改`./i3/config`中最后几行里的内容

主要设置的快捷键有：

- win + h/j/k/l 改变焦点,移动方式是vim样式的
- win + Home 系统功能键，之后可以根据提示选择关机、挂起等功能
- win + v 水平切分视图
- win + 1/2/3/.../9/0　切换到相应的桌面
- win + d 启动rofi
- win + Enter 启动alacritty

## rofi
设置了rofi的主题，主题是onedark，一列的样式,效果有些类似Mac的Spotlight

