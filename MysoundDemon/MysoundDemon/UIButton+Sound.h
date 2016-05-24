//
//  UIButton+Sound.h
//  MySoundDemo
//
//  Created by  易述宏 on 16/5/24.
//  Copyright © 2016年 湖南同禾. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^UIButtonTounchWithCalBlock)(NSInteger index);

@interface UIButton (Sound)

-(void)buttonWithPath:(NSString *)path;

@end
