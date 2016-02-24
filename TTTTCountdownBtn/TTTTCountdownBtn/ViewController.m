//
//  ViewController.m
//  TTTTCountdownBtn
//
//  Created by 梁腾 on 16/2/24.
//  Copyright © 2016年 TT. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+countDown.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *countDownBtn;

@end

@implementation ViewController
- (IBAction)btnClick {
    
    [self.countDownBtn startWithTime:60 btnTitle:@"获取验证码" btnBackgroundColor:[UIColor blueColor] btnFontColor:[UIColor whiteColor] btnBackgroundImage:nil countDownTitle:@"秒" countBackgroundColor:[UIColor grayColor] countFontColor:[UIColor lightGrayColor] countBackgroundImage:nil];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
