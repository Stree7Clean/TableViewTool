//
//  UIColor+Ext.m
//  ST_Demos
//
//  Created by 梁尚嘉 on 16/4/10.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "UIColor+Ext.h"

@implementation UIColor (Ext)
+ (instancetype)colorwith256FxWithRed:(CGFloat)r
                             green:(CGFloat)g
                              blue:(CGFloat)b
                             alpha:(CGFloat)a
{
    return [self colorWithRed:r/255.f green:g/255.f blue:b/255.f alpha:a];
}

@end
