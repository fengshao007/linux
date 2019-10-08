#!/usr/bin/env bash
# https://www.runoob.com/linux/linux-shell-variable.html
your_name="qinjx"
echo $your_name
echo ${your_name}
# 变量名外面的花括号是可选的，加不加都行，加花括号是为了帮助解释器识别变量的边界，比如下面这种情况：
for skill in Ada Coffe Action Java; do
    echo "I am good at ${skill}Script"
done


# 只读变量
myUrl="http://www.google.com"
readonly myUrl


# 删除变量
myUrl01="http://www.runoob.com"
unset myUrl01
echo $myUrl01

# 获取字符串长度
string="abcd"
echo ${#string} #输出 4

string="runoob is a great site"
echo ${string:1:4} # 输出 unoo
