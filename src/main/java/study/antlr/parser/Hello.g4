grammar Hello;       //定义一个名为Hello的语法解析器
r: 'hello' ID;             //匹配一个关键字hello和一个紧随其后的标识符
ID: [a-z]+;               //定义标识符, 由小写字符组成
WS: [ \t\f\r\n]+ -> skip; //忽略空格, tab, 回车