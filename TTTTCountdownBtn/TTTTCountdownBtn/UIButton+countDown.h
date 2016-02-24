//
//  UIButton+countDown.h
//  TTTTCountdownBtn
//
//  Created by 梁腾 on 16/2/24.
//  Copyright © 2016年 TT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (countDown)

/**
 *  倒计时按钮
 *
 *  @param timeLine     倒计时总时间（如果设置为60 则从59开始）
 *  @param btnTitle     倒计时之前的title
 *  @param bColor       倒计时之前的背景颜色
 *  @param fColor       倒计时之前的文字颜色
 *  @param btnImageName 倒计时之前的背景图片
 *  @param subTitle     倒计时之后的title
 *  @param ccColor      倒计时之后的背景颜色
 *  @param cfColor      倒计时之后的文字颜色
 *  @param cImageName   倒计时之后的背景图片
 */
- (void)startWithTime:(NSInteger)timeLine btnTitle:(NSString *)btnTitle  btnBackgroundColor:(UIColor *)bColor btnFontColor:(UIColor *)fColor   btnBackgroundImage:(NSString *)btnImageName countDownTitle:(NSString *)subTitle countBackgroundColor:(UIColor *)ccColor countFontColor:(UIColor *)cfColor countBackgroundImage:(NSString *)cImageName;
@end
