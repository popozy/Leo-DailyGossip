flex:对象为处于【文档流】中的【子元素】

position:
1.relative
仍处于文档流当中，按文档流中的顺序进行排列
参照物为元素本身
note：常见用途为改变index和设置为绝对定位的参照物
2.absolute
默认宽度为内容宽度
脱离文档流
参照物为第一个定位祖先或者根元素（html)
3.fixed
默认宽度为内容宽度
脱离文档
参照物为视窗
note：网页遮盖效果，网页小窗口
4.相关搭配属性
top/right/bottom/left
用于设置相对于参照物边缘的距离

float
1.默认宽度为内容宽度
2.元素脱离文档流，内容不脱离文档流（在flex使用中认为处于文档流）

flex:
display: flex;
flex-direction: row | row-reverse | column | column-reverse
flex-wrap: nowrap | wrap | wrap-reverse
flex-flow: <'flex-direction'>||<'flex-wrap'>
order:弹性布局排序 inital: 0

flex-basis: 设置flex-item的宽高
flex-grow: 伸展因子 initial:0
flex-shrink: 收缩因子 initial: 1
flex: <'flex-grow'> || <'flex-grow'> || <'flex-shrink'> initial:0 1 main-size

flex对齐
单行：
justify-content: flex-start | flex-end | center | space-between | space-around 主轴对齐方式 review- text-align

align-items: stretch  | flex-start | flex-end | center | baseline 辅轴对齐方式 review- vertical-align

align-self: auto | flex-start | flex-end | center | baseline（基线对齐） | stretch（拉伸对齐,充满容器）
设置单个元素z在cross-axis方向上的对齐方式

多行对齐：
align-content: stretch | flex-start | flex-end | center | baseline


变形
transform:
rotate()旋转
translate()：移动
scale()：缩放
skew():倾斜
translate3d() 3D移动
scale3d():3D缩放，参数为各个轴的倍数
rotate3d()

transform-origin:
note：
先后的操作会影响结果
放大会将X轴进行放大

perspective: none | <length>
透视效果
perspective-origin:设定透视角度

transform-style: flat | preserve-3d;
flat:扁平化 | preserve-3d:保留3d空间，用于一个元素多次旋转

backface-visibility: visible | hidden
visible:旋转过程中背面可见
hidden:旋转过程中背面不可见

动画
过渡动画
transition
1.transition-property: none | <single-transition-property> [","<single-transition-property>]*
initial: all
eg. 
~: all
~:left, color

2.transition-duration: <time> [,<time>]*
initial:0s

动画的完成时间
3，transition-timing-function
~: <single-transition-timing-function> [ ',' transition-timing-function]*
initial:ease
可用于更改动画中物体运动的速率变化
ease | linear | ease-in | ease-in-out
cubic-bezier(<number>,<number>,<number>,<number>)
step-start | step-end | steps(<integer>[,[start | end ]]?)
ease和ease加后缀相比，后者更明显（开头/结尾慢,中间快)

4.transition-delay: <time>
initial:0s
5. trasition: <single-transition> [ ',' <single-transition> ]*
<single-transition> = [none | <single-transition-property> ] || <time>(transition-duration) || <single-trasition-timing-function> || <time>(transition-delay)

animation:
1.animation: <single-animation> [',' <single-animation>]
<single-animation>:
1.1
animation-name:
1.2
animation-duration:
1.3
animation-timing-function:
1.4
animation-direction: normal | reverse | alternate | alternate-reverse
note:
alternate: 往返
reverse:逆
1.5
animation-play-state: <single-animation-play-state> [',' <single-animation-play-state>]*
<single-animation-play-state> = running | paused
1.6
animation-delay:
延迟多长时间执行
1.7
animation-fill-mode: none | backwards | forwards | both
 

@keyframes format:
@keyframes abc{
	from/0%{}
	to/100%{}
}
@keyframes flash{
	0% 50% 100%{opacity:1;}
	25% 75%{opacity:0.5;}
}