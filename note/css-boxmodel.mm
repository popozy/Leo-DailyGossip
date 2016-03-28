css盒模型
1. 盒子模型特点
盒子外边距-盒子边框-盒子填充-盒子内容（margin-border-padding-content)
每个属性都有上下左右四个部分


2.margin-border-padding-content基本特征介绍
content = width*height   
border，padding,margin都有上下左右四个部分


3.content----width&&height
3.1 width:<length> |<percentage> | auto |inherit
note: inherit 强制继承父类元素
<percentage> 大部分都是相对于父类元素的属性内容，不是相对父类元素的情况是相对定位等内容，待补充
auto: 浏览器自动分配，后面详细讲解。

3.2 height 同 3.1 width
max-height/max-width/min-height/min-width

4.padding
padding: [<length>|<percentage>]{1,4} |inherit

TRBL 四个属性值设置的时候以顺时针设置。
[code] 
padding: 40px 30px 20px 10px;
====
paddong-top:
padding-right:
padding-bottom:
padding-left:

padding 的值缩写：(所有有值缩写性质的属性缩写规则相同)
规则：对面相等，后者省略；4面相等，只设一个。

padding: 20px; == padding: 20px 20px 20px 20px;
padding: 20px 10px; == padding: 20px 10px 20px 10px;
padding: 20px 10px 30px; == padding: 20px 10px 30px 10px;

5.margin
margin: [<length>|<percentage>|auto]{1,4} |inherit
margin合并：
毗邻元素外边距会取较大值进行合并.
display属性******************


6.border
border: [<border-width> || <border-style> || <border-color>] |inherit
border-width: [<length> | thin | medium |thick]{1,4}|inherit (默认值是中等边框，会根据browser的不同显示出不同宽度)
border-style: [solid|dashed|dotted|..]{1,4}|inherit
border-color: [<color>|trasparent]|inherit (默认与字体颜色相同)

7.圆角矩形
border-radius:[<length>|<percentage>]{1,4}[/[<length>|<percentage>]{1,4}]?
前四个是从左上角开始顺时针的水平半径，后四个如果存在即为左上角开始顺时针的垂直半径，如果后四个不存在则为圆角。

可以使用百分号出现。

可以分开定义，如border-top-left-radius: 10px;但是只能定义圆角，出现两个长度值或者百分号是无效的。

8.溢出文字处理
overflow: visible|hidden|scroll|auto
visible is a default value
hidden: hide the text
scroll: 展示出滚动条
auto: 内容没有超出的时候不设置滚动条，超出时候设置滚动条。
注：在设置滚动条的时候，宽度和高度不会占据
overflow-x, overflow-y

9.内容区
width和height设置的是内容区的大小，padding之内的区域。
padding & margin 都是透明的。