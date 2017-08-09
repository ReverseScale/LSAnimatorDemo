# LSAnimatorDemo
基于 JHChainable 的 LSAnimator 的链式动画 Demo

效果演示：
 ![](http://og1yl0w9z.bkt.clouddn.com/17-8-9/7573423.jpg) 
 
```Objective-C
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
