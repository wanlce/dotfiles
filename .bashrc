#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

## bash 快捷键备忘
## Ctrl + a : 光标移到行首。
## Ctrl + e : 光标移到行尾。
## Ctrl + l : 清屏。
## Ctrl + u : 清除光标前至行首间的所有内容。
## Ctrl + h : 同 backspace 键相同。
## Ctrl + r : 搜索之前打过的命令。
## Ctrl + c : 杀死当前进程。
## Ctrl + d : 退出当前 Shell。
## Ctrl + z : 把当前进程转到后台运行，使用' fg '命令恢复。
## Ctrl + w : 移除光标前的一个单词
## Ctrl + k : 清除光标后至行尾的内容。
## Ctrl + t : 交换光标位置前的两个字符。
## Ctrl + n : 上一条命令。
## Ctrl + p : 下一条命令。
## Ctrl + xu: 撤销刚才的操作
## Esc + t  : 交换光标位置前的两个单词。
## Alt + f  : 在当前行把光标向前移一个单词。
## Alt + b  : 在当前行把光标向后移一个单词。
## Tab      : 自动补完命令
## Alt + Shift + *: 补全替换命令行里的通配符
#
## Ctrl + u – 剪切光标前的内容
## Ctrl + k – 剪切光标至行末的内容
## Ctrl + y – 粘贴
## Ctrl + e – 移动光标到行末
## Ctrl + a – 移动光标到行首
## Alt + f – 跳向下一个空格
## Alt + b – 跳回上一个空格
## ALT + Backspace – 删除前一个单词
## Ctrl + w – 剪切光标前一个单词
## Shift + Insert – 向终端内粘贴文本
##
## Alt+   在当前位置插入上一条命令的最后一个参数。
## Ctrl+x 然後 Ctrl+e 在编辑器里边编辑当前输入的内容。
## Ctrl+r 日志反查。
## Alt+#  把当前行变成注释。
