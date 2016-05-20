//
//  BaseTableViewCell.h
//  ST_Demos
//
//  Created by 梁尚嘉 on 16/4/9.
//  Copyright © 2016年 ST. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIColor+Ext.h"

@interface BaseTableViewCell : UITableViewCell

/**
 *  cell构造器
 *  @param aTableView UITableView
 *  @return BaseTableViewCell实例
 */
+ (instancetype)tableViewCellWithTableView:(UITableView *)aTableView;


/**
 *  初始化方法
 */
- (void)configure NS_REQUIRES_SUPER;

/**
 *  cell的重用识别码
 *  @return 识别码
 */
+ (NSString *)cellIdentifier;



@end
