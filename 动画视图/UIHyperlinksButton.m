//
//  UIHyperlinksButton.m
//  LearnEverything
//
//  Created by szq on 13-9-22.
//  Copyright (c) 2013年 szq. All rights reserved.
//

#import "UIHyperlinksButton.h"

@implementation UIHyperlinksButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

+ (UIHyperlinksButton*) hyperlinksButton {
    UIHyperlinksButton* button = [[UIHyperlinksButton alloc] init];
    return [button autorelease];
}

-(void)setUnderlineColor:(UIColor *)color{
    lineColor = [color copy];
    [self setNeedsDisplay];
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    isHighlight = YES;
    [self setUnderlineColor:self.titleLabel.textColor];
    
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    [super touchesMoved:touches withEvent:event];
    
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    [super touchesEnded:touches withEvent:event];
    isHighlight = NO;
    //[self setColor:self.titleLabel.highlightedTextColor];
    [self setUnderlineColor:self.titleLabel.textColor];
    
}
-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    [super touchesCancelled:touches withEvent:event];
    [self setUnderlineColor:self.titleLabel.highlightedTextColor];
}

- (void) drawRect:(CGRect)rect {
    CGRect textRect = self.titleLabel.frame;
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    
    if (isHighlight) {
        CGContextSetRGBFillColor(contextRef, 0.5, 0.5, 0.5, 1.0);
        CGContextFillRect(contextRef, textRect);
        CGContextStrokePath(contextRef);
    }
    CGFloat descender = self.titleLabel.font.descender;
    if([lineColor isKindOfClass:[UIColor class]]){
        CGContextSetStrokeColorWithColor(contextRef, lineColor.CGColor);
    }
    
    CGContextMoveToPoint(contextRef, textRect.origin.x, textRect.origin.y + textRect.size.height + descender+1);
    CGContextAddLineToPoint(contextRef, textRect.origin.x + textRect.size.width, textRect.origin.y + textRect.size.height + descender+1);
    
    CGContextClosePath(contextRef);
    CGContextDrawPath(contextRef, kCGPathStroke);
}

@end
