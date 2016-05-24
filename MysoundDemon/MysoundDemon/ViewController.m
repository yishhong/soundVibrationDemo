//
//  ViewController.m
//  MysoundDemon
//
//  Created by  易述宏 on 16/5/24.
//  Copyright © 2016年 湖南同禾. All rights reserved.
//

#define UIScreenHeight [UIScreen mainScreen].bounds.size.height
#define UIScreenWidth [UIScreen mainScreen].bounds.size.width

#import "ViewController.h"
#import "UIButton+Sound.h"

@interface ViewController ()

@property(strong,nonatomic)UIButton * soundButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.soundButton];
    
}

-(UIButton *)soundButton{
    
    if (!_soundButton) {
        _soundButton =[UIButton buttonWithType:UIButtonTypeCustom];
        _soundButton.frame =CGRectMake((UIScreenWidth-100)/2, 100, 100, 45);
        [_soundButton setBackgroundColor:[UIColor redColor]];
        [_soundButton setTitle:@"声音" forState:UIControlStateNormal];
        NSString * path =[[NSBundle mainBundle]pathForResource:@"4157" ofType:@"mp3"];
        [_soundButton buttonWithPath:path];
    }
    return _soundButton;
}

@end
