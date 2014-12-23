//
//  UIView+CGAffineTransform.h
//  YinYinForiPad
//
//  Created by chenliang 2014-09-02
//

#import <UIKit/UIKit.h>

#define animateWithDuration_times 0.2
#define animateWithDuration_sade_times 0.1
@interface UIView (CGAffineTransform)
//放大
-(void)show:(void(^)(void))finishBlock;
//缩小
-(void)hidden:(void(^)(void))finishBlock;

//淡入
-(void)sadeIn:(void(^)(void))finishBlock;
//淡出
-(void)sadeOut:(void(^)(void))finishBlock;
@end
