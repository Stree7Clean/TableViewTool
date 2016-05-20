//
//  UIImage+Initial.h
//  ST_Demos
//
//  Created by 梁尚嘉 on 16/4/9.
//  Copyright © 2016年 ST. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  图片构造器(一次性加载，不保存到缓存池)
 */

@interface UIImage (Initial)

/**
 *  自定义png图片的加载
 *  @paramm aName 图片名称
 *  @return UIImage 或 nil
 */
+ (instancetype)st_pngNamed:(NSString *)aName;

/**
 *  自定义jpg图片的加载
 *  @paramm aName 图片名称
 *  @return UIImage 或 nil
 */
+ (instancetype)st_jpgNamed:(NSString *)aName;


/**
 *  自定义图片加载
 *  @param aName 图片名称
 *  @param aType 图片类型(png、jpg…… 即图片后缀名)
 *  @return UIImage 或 nil
 */
+ (instancetype)st_imageNamed:(NSString *)aName type:(NSString *)aType;


@end
