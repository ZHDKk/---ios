//
//  VCFirst.m
//  导航控制器动画
//
//  Created by zh dk on 2017/9/1.
//  Copyright © 2017年 zh dk. All rights reserved.
//

#import "VCFirst.h"
#import "VCSecond.h"

@interface VCFirst ()

@end

@implementation VCFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _imageView = [[UIImageView alloc]init];
    _imageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    _imageView.image = [UIImage imageNamed:@"1.jpg"];
    [self.view addSubview:_imageView];
}
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    //定义一个动画变换对象
    CATransition *amin = [CATransition animation];
    //定义动画的时间长度
    amin.duration = 1;
    //定义动画的类型,决定动画的效果形式
    amin.type = @"rippleEffect";
    //设置动画的子类型，例如动画的方向
    amin.subtype = kCATransitionFromLeft;
    //设置动画的轨迹模式
    amin.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    //将动画设置对象添加到动画上
    [self.navigationController.view.layer addAnimation:amin forKey:nil];
    
    VCSecond *vcSecond = [[VCSecond alloc]init];
    [self.navigationController pushViewController:vcSecond animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
