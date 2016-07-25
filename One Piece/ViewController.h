//
//  ViewController.h
//  One Piece
//
//  Created by 劳一 on 16/7/21.
//  Copyright © 2016年 劳一. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)OPSlider:(UISlider *)sender;
@property (weak, nonatomic) IBOutlet UILabel *ImageNo;

@property (weak, nonatomic) IBOutlet UIImageView *OPImage;
@property (weak, nonatomic) IBOutlet UILabel *text2;
@end

