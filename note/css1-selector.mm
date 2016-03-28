css-2
1.伪元素选择器
lable_name::first-letter   选中第一个字母
lable_name::first-line {}   select the first-line of the text in html
lable_name::before/after {content: "text content";}  insert the text content before or after the lable
lable_name::selection{color: red; background-color:#ccc;}    chang the style of the content which are selected by the user

2. 组合选择器
2.1 后代选择器&&子选择器
[code]
<div class = "main">
	<h2>title1</h2>
	<div>
		<h2>title2</h2>
		<p>para1</p>
	</div>
</div>

后代选择器：
.main h2{
	color: red;
}
选择出一个类或者id中所有的对应标签
子选择器：
.main>h2{
	color: purple;
}
选择出一个类或者id中下一级的子类标签，下一级的div不会选中。

note:1.子类选择器和后代选择器会有覆盖作用，当出现如下代码，子类选择器失效（被后代选择器覆盖）。
.main>h2{
	color: purple;
}
.main h2{
	color: red;
}
2.子类选择器选择范围较后代选择器更窄更为精确

2.2 兄弟选择器
两种兄弟选择器的实现方式:
~ vs. +
[code]
<div class="bliding">
			<h2>title</h2>
			<p>para1</p>
			<p>para2</p>
		</div>
.bliding>h2~p:select all the bliding p of h2 which is after h2
.bliding>h2+p:select the only bliding p following h2

note:
1.~会对+方式产生覆盖作用，当~出现在+之后的时候。如下：
.bliding>h2+p{
	color: blue;
}
.bliding>h2~p{
	color: pink;
}
2. ~选择选择方式要比+更为宽泛。

3.选择器分组
作用:简化代码量
h1{
	color:gray;
	font-family:  sans-serif;
}
h2{
	color:gray;
	font-family:  sans-serif;
}
h3{
	color:gray;
	font-family:  sans-serif;
}
等价于
h1,h2,h3{
	color:gray;
	font-family:  sans-serif;
}

css-3
1.继承
自动继承的属性：
color
font
text-align
list-style
[code]
body{
	font-family:"Microsoft Yahei";
}
不会默认继承属性
background
boder
position

2.css继承的优先级
a = 标签style内的行内样式
b = ID选择器  （id）
c = 类，伪类和属性选择器
d = 标签选择器和伪元素选择器

权重：
a 1000 
b 100
c 10
d 1

value  = a*1000 + b*100 + c*10 + d
优先级高的样式可以覆盖掉低的样式

3.优先级value相同而且选中统一属性---css层叠
note：考虑前面提到的兄弟选择器，子选择器和后代选择器note中的覆盖问题
总结：
if（选中属性相同）{
当优先级的value不同的话，优先级高的可以覆盖低的。
当优先级value相同的时候，后面的覆盖前面的。
}
else
{
	属性合并
}

3. css改变优先级
方法1：改变先后顺序
方法2：提升选择器优先级
方法3: !important

方法1：修改先后顺序--相同优先级

当前两种方法都不能用的时候再选择第三种方式
方法3： 加上!important 可以使优先级value较低的强制转成优先级较高的
[code]
/*test for !important method*/
.important{
	width: 100px;
	height: 100px;
	margin-top: 20px;
	background-color: #ccc;
}
.important{
	color: pink !important;
}
div.important{
	color: red;
}