//
//  UIButton+countDown.m
//  TTTTCountdownBtn
//
//  Created by 梁腾 on 16/2/24.
//  Copyright © 2016年 TT. All rights reserved.
//

#import "UIButton+countDown.h"

@implementation UIButton (countDown)

- (void)startWithTime:(NSInteger)timeLine btnTitle:(NSString *)btnTitle  btnBackgroundColor:(UIColor *)bColor btnFontColor:(UIColor *)fColor   btnBackgroundImage:(NSString *)btnImageName countDownTitle:(NSString *)subTitle countBackgroundColor:(UIColor *)ccColor countFontColor:(UIColor *)cfColor countBackgroundImage:(NSString *)cImageName
{
    __weak typeof(self) weakSelf = self;
    //倒计时时间
    __block NSInteger timeOut = timeLine;
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    //每秒执行一次
    dispatch_source_set_timer(_timer, dispatch_walltime(NULL, 0), 1.0 * NSEC_PER_SEC, 0);
    dispatch_source_set_event_handler( _timer, ^{
        //倒计时结束，关闭
        if (timeOut <= 0){
            dispatch_source_cancel(_timer);
            dispatch_async(dispatch_get_main_queue(), ^{
                //根据需求设置按钮显示
                weakSelf.backgroundColor = bColor;
                weakSelf.titleLabel.textColor = fColor;
                [weakSelf setTitle:btnTitle forState:UIControlStateNormal];
                [weakSelf setBackgroundImage:[UIImage imageNamed:btnImageName] forState:UIControlStateNormal];
                weakSelf.userInteractionEnabled = YES;
            });
        }else{
            //60秒倒计时 不包括60秒
            int seconds = ((int)timeOut-1) % (int)timeOut;
            NSString *timeStr = [NSString stringWithFormat:@"%0.2d",seconds];
            dispatch_async(dispatch_get_main_queue(), ^{
                //根据需求设置按钮显示
                weakSelf.backgroundColor = ccColor;
                
                [UIView setAnimationDuration:1];
                [weakSelf setTitle:[NSString stringWithFormat:@"%@%@",timeStr,subTitle] forState:UIControlStateNormal];
                [UIView commitAnimations];
                weakSelf.titleLabel.textColor = cfColor;
                [weakSelf setBackgroundImage:[UIImage imageNamed:cImageName] forState:UIControlStateNormal];
                weakSelf.userInteractionEnabled = NO;
            });
            timeOut--;
        }
    });
    dispatch_resume(_timer);
    
}
    

@end
