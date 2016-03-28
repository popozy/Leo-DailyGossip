css-2
Part 1.基本的文本操作
Summary:学习改变文本的大小，粗细，字体，颜色，添加下划线等
1.文本大小
Format: font-size:<length>|<percentage>|<absolute-size>|<relative-size>

开发中不太常用：
absolute-size: large,middle,small,x-small,xx-small...
relative-size:smaller

<length>:
<percentage>:

2. 字体 font-family
Format:[<family-name>|<generic-family>]#
generic-family: serif, sans-serif
family-name: eg. arial

3.加粗 font-weight
Format: font-weight: normal|bold|bolder|lighter|100|200|300|400|500|600|700|800|900

4.斜体
Format: font-style: normal|italic|oblique
italic:使用文本中的倾斜
oblique: 有斜体用斜体，无斜体强制倾斜

5.加大行距 
Format: line-height: normal|<number>||<length>|<percentage>
normal: 和浏览器有关，一般为1.14px
note: 
number:直接继承，先继承再计算行高
percentage/length:先计算行高再使所有的子元素都继承同一个行高值

6.font 
font-size & font-family 是必填项
Format:
font: [<font-style> || <font-weight>]?<font-size>[/<line-height>]?<font-family>
[code]
font: 30px/2 "Consolas",monospace
font: italic bold 20px/1.5 arial,serif;

7/change color of text
color
color:red;
color: #ff0000;
color: rgb(255,0,0);
color: rgba(255,0,0,1); 
a为α通道透明度，1 represents 不透明
color: trasparent;  == color: rgba(*,*,*, 0);

Part 2 对齐方式
1.text-align:left|right|center|justify
justify:两端对齐
2.文字中插入图片或文本.
处理图片在垂直方向上位于底部的问题
vertical-align: baseline|sub下标|super上标|top（对齐到当前这一行的最高点）|text-top（文本的最高点）|middle|buttom|text-buttom|<percentage>参照物为line-height|<length>
note:
2.1.<length>: 以baseline为起点的向上平移<length>
2.2.length的值可以为负值
2.3.top为对齐到行高最高点---text-top对齐到文本的最高点
[code]
.m-demo {vertical-align: 20px;} 
3. 首行缩进
text-indent: <length>|<percentage>
[code]
3.1 首行缩进两个字长度
text-indent: 2em;
3.2 不太常用（固定长度）
text-indent: 10px;
length 如果是极大的负值来隐藏文字如-999999px；
3.3 缩进容器width的百分比
text-indent: 20%;


Part 3 格式处理
1.white-space:normal|nowrap|pre|pre-wrap|pre-line
note:
collapse合并
wrap
			newline			spaces and tabs			text wraping 
normal		collapse		collapse				wrap
nowrap		collapse 		collapse 				no wrap (强制一行，如果容器过小写不下就会超出)
pre** 		preserve		preserve				No wrap
pre-wrap**	preserve		preservxe				wrap (保留文本中的格式，支持自动换行)
pre-line	preserve		collapse 				wrap(支持自动换行，space和tabs自动省略)
决定空格是否合并，换行是否保留，tab是否保留

2.word-wrap: break-word| normal;
设置在容器宽度固定的情况下的超出width宽度的时候，是自动换行还是一直写出去。
note:
normal: 和默认同一个效果，写出去。
break-word：以单词为单位进行自动换行。

3.word-break: normal | keep-all | break-all

Part 4 文本修饰
4.1 text-shadow: none| [<length>{2,3} && <color>?]#
note:
none: 无阴影效果
<length> 向右下角偏移若干像素，可为负值（左上）。第三个<length>为模糊半径。
<color>如果不写，shadow默认为文字颜色

4.2 下划线text-decoration:
text-decoration: none|[underline || overline || line-through]

Part 5 高级修饰
5.1 text-overflow: clip | ellipsis
文本溢出修饰操作---》文本溢出....
	white-space: nowrap;	/*强制不换行*/
	overflow:hidden;		/*隐藏，待补充详细作用*/
	text-overflow: ellipsis;	/*隐藏*/
以上三个属性同时出现才算有效

5.2 cursor第一鼠标形状
常见属性值：
cursor: [<url>,]* [auto|default|none|help|pointer|zoom-in|zoom-out|move|......]
uri: 自定义鼠标性状
auto:自动处理
default: 普通光标
none: 指针消失
help：光标旁边加问号
pointer：手
zoom-in：放大
zoom-out:缩小 

5.3 强制继承
inherit在子元素的属性内容中写上inherit则强制继承父元素属性内容