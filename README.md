# LSAnimatorDemo
基于 JHChainable 的 LSAnimator 的链式动画 Demo

效果演示：

 ![](http://og1yl0w9z.bkt.clouddn.com/17-8-9/7573423.jpg) 
 
### JHChainable 方法列表
 
<table>
<tr>
<th>
Property
</th>
<th>
Takes a...
</th>
<th>
Usage
</th>
</tr>
<tr>
<td>
- (JHChainableRect) makeFrame;
</td>
<td>
CGRect
</td>
<td>
animator.makeFrame(rect).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableRect) makeBounds;
</td>
<td>
CGRect
</td>
<td>
animator.makeBounds(rect).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableSize) makeSize;
</td>
<td>
(CGFloat: width, CGFloat: height)
</td>
<td>
animator.makeSize(10, 20).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainablePoint) makeOrigin;
</td>
<td>
(CGFloat: x, CGFloat: y)
</td>
<td>
animator.makeOrigin(10, 20).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainablePoint) makeCenter;
</td>
<td>
(CGFloat: x, CGFloat: y)
</td>
<td>
animator.makeCenter(10, 20).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableFloat) makeX;
</td>
<td>
(CGFloat: f)
</td>
<td>
animator.makeX(10).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableFloat) makeY;
</td>
<td>
(CGFloat: f)
</td>
<td>
animator.makeY(10).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableFloat) makeWidth;
</td>
<td>
(CGFloat: f)
</td>
<td>
animator.makeWidth(10).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableFloat) makeHeight;
</td>
<td>
(CGFloat: f)
</td>
<td>
animator.makeHeight(10).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableFloat) makeOpacity;
</td>
<td>
(CGFloat: f)
</td>
<td>
animator.makeOpacity(10).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableColor) makeBackground;
</td>
<td>
(UIColor: color)
</td>
<td>
animator.makeBackground(color).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableColor) makeBorderColor;
</td>
<td>
(UIColor: color)
</td>
<td>
animator.makeBorderColor(color).animate(1.0);
</td></tr>
<tr>
<td>
- (JHChainableFloat) makeBorderWidth;
</td>
<td>
(CGFloat: f)
</td>
<td>
animator.makeBorderWidth(3.0).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableFloat) makeCornerRadius;
</td>
<td>
(CGFloat: f)
</td>
<td>
animator.makeCornerRadius(3.0).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableFloat) makeScale;
</td>
<td>
(CGFloat: f)
</td>
<td>
animator.makeScale(2.0).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableFloat) makeScaleX;
</td>
<td>
(CGFloat: f)
</td>
<td>
animator.makeScaleX(2.0).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableFloat) makeScaleY;
</td>
<td>
(CGFloat: f)
</td>
<td>
animator.makeScaleY(2.0).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainablePoint) makeAnchor;
</td>
<td>
(CGFloat: x, CGFloat: y)
</td>
<td>
animator.makeAnchor(0.5, 0.5).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableFloat) moveX;
</td>
<td>
(CGFloat: f)
</td>
<td>
animator.moveX(50).animate(1.0)
</td>
</tr>
<tr>
<td>
- (JHChainableFloat) moveY;
</td>
<td>
(CGFloat: f)
</td>
<td>
animator.moveY(50).animate(1.0)
</td>
</tr>
<tr>
<td>
- (JHChainablePoint) moveXY;
</td>
<td>
(CGFloat: x, CGFloat: y)
</td>
<td>
animator.moveXY(100, 50).animate(1.0)
</td>
</tr>
<tr>
<td>
- (JHChainableFloat) moveHeight;
</td>
<td>
(CGFloat: f)
</td>
<td>
animator.moveHeight(50).animate(1.0)
</td>
</tr>
<tr>
<td>
- (JHChainableFloat) moveWidth;
</td>
<td>
(CGFloat: f)
</td>
<td>
animator.moveWidth(50).animate(1.0)
</td>
</tr>
<tr>
<td>
- (JHChainableDegrees) rotateX;
</td>
<td>
(CGFloat: angle) #not radians!
</td>
<td>
animator.rotateX(360).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableDegrees) rotateY;
</td>
<td>
(CGFloat: angle) #not radians!
</td>
<td>
animator.rotateY(360).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableDegrees) rotateZ;
</td>
<td>
(CGFloat: angle) #not radians!
</td>
<td>
animator.rotateZ(360).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainablePolarCoordinate) movePolar;
</td>
<td>
(CGFloat: radius, CGFloat: angle)
</td>
<td>
animator.movePolar(30, 90).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableBezierPath) moveOnPath;
</td>
<td>
(UIBezierPath *path)
</td>
<td>
animator.moveOnPath(path).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableBezierPath) moveAndRotateOnPath;
</td>
<td>
(UIBezierPath *path)
</td>
<td>
animator.moveAndRotateOnPath(path).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableBezierPath) moveAndReverseRotateOnPath;
</td>
<td>
(UIBezierPath *path)
</td>
<td>
animator.moveAndReverseRotateOnPath(path).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableFloat) transformX;
</td>
<td>
(CGFloat f)
</td>
<td>
animator.transformX(50).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableFloat) transformX;
</td>
<td>
(CGFloat f)
</td>
<td>
animator.transformX(50).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableFloat) transformY;
</td>
<td>
(CGFloat f)
</td>
<td>
animator.transformY(50).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableFloat) transformZ;
</td>
<td>
(CGFloat f)
</td>
<td>
animator.transformZ(50).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainablePoint) transformXY;
</td>
<td>
(CGFloat x, CGFloat y)
</td>
<td>
animator.transformXY(50, 100).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableFloat) transformScale;
</td>
<td>
(CGFloat f)
</td>
<td>
animator.transformScale(50).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableFloat) transformScaleX;
</td>
<td>
(CGFloat f)
</td>
<td>
animator.transformScaleX(50).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableFloat) transformScaleY;
</td>
<td>
(CGFloat f)
</td>
<td>
animator.transformScaleY(50).animate(1.0);
</td>
</tr>
<tr>
<td>
- (JHChainableAnimator *) transformIdentity;
</td>
<td>
Nothing
</td>
<td>
animator.transformIdentity.animate(1.0);
</td>
</tr>
</table>

### LSAnimator 常用场景
 
```Objective-C
//-----------------------------------------------------------------1
.ls_increWidth(60)// 延展宽度
.ls_thenAfter(1)// 设置当前节点的动画时间 并添加新节点
//-----------------------------------------------------------------2
.ls_bounce// 弹性效果
//.ls_repeat(0.5,3)// 几秒内，重复几次
.ls_increHeight(60)// 延展高度
.ls_spring// 回弹效果
.ls_thenAfter(1)
//-----------------------------------------------------------------3
.ls_cornerRadius(40)// 圆角效果
.ls_moveX(-20)// 横向位移
.ls_thenAfter(1.5)
.ls_wait(0.2)// 终止几秒
.ls_y(sender.frame.origin.y - 80)// 移动到y坐标位置
.ls_postAnimationBlock(^{// 同时执行的Block
    sender.ls_moveY(sender.bounds.size.height).ls_animate(0.2);
})
.ls_thenAfter(0.2)
//-----------------------------------------------------------------4
.ls_moveY(-60)
.ls_easeOut // 物理缓冲
.ls_thenAfter(0.2)
//-----------------------------------------------------------------5
.ls_moveY(109)
.ls_bounce
.ls_animate(1);// 动画开始执行几秒
```

### 动画曲线图

![](http://og1yl0w9z.bkt.clouddn.com/17-8-10/84293725.jpg)
