//
//  UIImage+Initial.m
//  ST_Demos
//
//  Created by 梁尚嘉 on 16/4/9.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "UIImage+Initial.h"

@implementation UIImage (Initial)

+ (instancetype)st_pngNamed:(NSString *)aName
{
    return [self st_imageNamed:aName type:@"png"];
}

+ (instancetype)st_jpgNamed:(NSString *)aName
{
    return [self st_imageNamed:aName type:@"jpg"];
}

+ (instancetype)st_imageNamed:(NSString *)aName type:(NSString *)aType
{
    NSString *imagePath = [[NSBundle mainBundle] pathForResource:aName ofType:aType];
    return [UIImage imageWithContentsOfFile:imagePath];
}


@end
