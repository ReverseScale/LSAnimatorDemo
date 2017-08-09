//
//  ViewController.m
//  LSAnimatorDemo
//
//  Created by WhatsXie on 2017/8/9.
//  Copyright © 2017年 StevenXie. All rights reserved.
//

#import "ViewController.h"

#import "UIView+LSAnimator.h"
#import "CALayer+LSAnimator.h"

@interface ViewController ()
@property (nonatomic, strong) CALayer *animatorLayer;
@property (nonatomic, strong) UIView *animatorView;
@property (nonatomic, strong) UIButton *viewAnimatorBtn;
@property (nonatomic, strong) UIButton *layerAnimatorBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setUpAnimatorLayer];
    [self setupLayerButton];
    
    [self setupSplitLine];
    
    [self setupAnimatorView];
    [self setupViewButton];
}
- (void)setUpAnimatorLayer {
    _animatorLayer = [CALayer layer];
    _animatorLayer.bounds = CGRectMake(0, 0, 20, 20);
    _animatorLayer.backgroundColor = [UIColor purpleColor].CGColor;
    [self.view.layer addSublayer:_animatorLayer];
    _animatorLayer.position = CGPointMake(self.view.center.x * 0.5, self.view.center.y - 20);
}
- (void)setupLayerButton {
    _layerAnimatorBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height - 49, self.view.bounds.size.width * 0.5, 49)];
    [_layerAnimatorBtn setBackgroundColor:[UIColor lightGrayColor]];
    [_layerAnimatorBtn setTitle:@"CALayerAnimator" forState:UIControlStateNormal];
    [self.view addSubview:_layerAnimatorBtn];
    [_layerAnimatorBtn addTarget:self action:@selector(layerAnimatorBtnDidClicked:) forControlEvents:UIControlEventTouchUpInside];
}
// --------------
- (void)setupSplitLine {
    UIView *line = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0.5, self.view.bounds.size.height)];
    line.center = self.view.center;
    line.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:line];
}
// --------------
- (void)setupAnimatorView {
    _animatorView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
    _animatorView.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:_animatorView];
    _animatorView.center = CGPointMake(self.view.center.x * 1.5, self.view.center.y - 20);
}
- (void)setupViewButton {
    _viewAnimatorBtn = [[UIButton alloc] initWithFrame:CGRectMake(self.view.bounds.size.width * 0.5, self.view.bounds.size.height - 49, self.view.bounds.size.width * 0.5, 49)];
    [_viewAnimatorBtn setBackgroundColor:[UIColor lightGrayColor]];
    [_viewAnimatorBtn setTitle:@"UIViewAnimator" forState:UIControlStateNormal];
    [self.view addSubview:_viewAnimatorBtn];
    [_viewAnimatorBtn addTarget:self action:@selector(viewAnimatorBtnDidClicked:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)layerAnimatorBtnDidClicked:(UIButton *)sender {
    sender.enabled = NO;
    
    // chain_01
    _animatorLayer
    .ls_increWidth(20)
    .ls_bounce
    .ls_repeat(0.5, 3)
    .ls_increHeight(60)
    .ls_spring.ls_thenAfter(1)
    .ls_cornerRadius(40)
    .ls_moveX(-20)
    .ls_thenAfter(1.5)
    .ls_wait(0.2)
    .ls_y(sender.frame.origin.y - 80)
    .ls_postAnimationBlock(^{
        sender.ls_moveY(sender.bounds.size.height).ls_animate(0.2);
    })
    .ls_thenAfter(0.2)
    .ls_moveY(-60)
    .ls_easeOut
    .ls_thenAfter(0.2)
    .ls_moveY(109)
    .ls_bounce.ls_animate(1);
    
    // chain_02
    _animatorLayer
    .ls_concurrent
    .ls_background([UIColor orangeColor])
    .ls_delay(0.75)
    .ls_animate(1);
    
    // theFinalCompletion
    _animatorLayer
    .ls_theFinalCompletion(^{
        _animatorLayer
        .ls_cornerRadius(0)
        .ls_background([UIColor purpleColor])
        .ls_bounds(CGRectMake(0, 0, 20, 20))
        .ls_position(self.view.center.x * 0.5, self.view.center.y - 20)
        .ls_animate(0.5);
        
        sender.ls_moveY(-sender.bounds.size.height)
        .ls_animateWithCompletion(0.5, ^{
            sender.enabled = YES;
        });
    });
}
- (void)viewAnimatorBtnDidClicked:(UIButton *)sender {
    sender.enabled = NO;

//
    _animatorView
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
//
    _animatorView
    .ls_concurrent
    .ls_thenAfter(0.0)
    .ls_background([UIColor orangeColor])
    .ls_delay(0.75)
    .ls_thenAfter(0.0)
    .ls_background([UIColor greenColor])
    .ls_delay(0.75)
    .ls_animate(1);
//
    _animatorView
    .ls_theFinalCompletion(^{
        _animatorView
        .ls_cornerRadius(0)
        .ls_background([UIColor purpleColor])
        .ls_bounds(CGRectMake(0, 0, 20, 20))
        .ls_center(self.view.center.x * 1.5, self.view.center.y - 20)
        .ls_animate(0.5);
        
        sender
        .ls_moveY(-sender.bounds.size.height)
        .ls_animateWithCompletion(0.5, ^{
            sender.enabled = YES;
        });
    });
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
