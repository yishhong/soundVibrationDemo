//
//  UIButton+Sound.m
//  MySoundDemo
//
//  Created by  易述宏 on 16/5/24.
//  Copyright © 2016年 湖南同禾. All rights reserved.
//

#import "UIButton+Sound.h"
#import <objc/runtime.h>
#import <AVFoundation/AVFoundation.h>

static const  void *UIButtonSoundIDkey=&UIButtonSoundIDkey;

@implementation UIButton (Sound)

-(void)buttonWithPath:(NSString *)path{
    
    objc_setAssociatedObject(self, UIButtonSoundIDkey, path, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self action:@selector(actionTouch:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)actionTouch:(UIButton *)sender{

    NSString * path =objc_getAssociatedObject(self, UIButtonSoundIDkey);
    SystemSoundID soundID;
    NSURL * url =[NSURL URLWithString:path];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef _Nonnull)(url), &soundID);
    AudioServicesPlayAlertSound(soundID);
}

@end
