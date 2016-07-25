//
//  ViewController.m
//  One Piece
//
//  Created by 劳一 on 16/7/21.
//  Copyright © 2016年 劳一. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    NSArray *_array;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSBundle *bundle = [NSBundle mainBundle];
   NSString *path = [bundle  pathForResource:@"Property List" ofType:@"plist"];
    
   _array = [NSArray arrayWithContentsOfFile:path];
      _text2.text = _array[0];
    
    
//   UIButton *btn = [[UIButton alloc] init];
//    btn.frame = CGRectMake(0,23,40, 23);
//   // [btn setBackgroundColor:[UIColor blueColor]];
//    [btn setTitle:@"设置" forState:UIControlStateNormal];
//    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
//    
//    [self.view addSubview:btn];
}


- (IBAction)OPSlider:(UISlider *)sender {
    
    
   NSString *No = [NSString stringWithFormat:@"%.f",sender.value];//获取第几张图片付值给NO；
    _OPImage.image = [UIImage imageNamed:No];//显示第几张图；
    
    _ImageNo.text = [NSString stringWithFormat:@"%.f/9",sender.value+1];// 显示第几张图
    
    _text2.text = _array[(int)sender.value];
    
    
}
@end
