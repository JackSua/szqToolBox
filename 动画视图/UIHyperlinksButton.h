//
//  UIHyperlinksButton.h
//  LearnEverything
//
//  Created by szq on 13-9-22.
//  Copyright (c) 2013年 szq. All rights reserved.
//
//  实现一个按钮标题带下划线,模拟超链接,下划线颜色可自定义

#import <UIKit/UIKit.h>

@interface UIHyperlinksButton : UIButton

{
    UIColor *lineColor;
    BOOL isHighlight;
}

 //设置下划线颜色
-(void)setUnderlineColor:(UIColor*)color;
+ (UIHyperlinksButton *) hyperlinksButton;

@end
