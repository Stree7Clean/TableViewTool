//
//  BaseTableViewCell.m
//  ST_Demos
//
//  Created by 梁尚嘉 on 16/4/9.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "BaseTableViewCell.h"

@implementation BaseTableViewCell

+ (instancetype)tableViewCellWithTableView:(UITableView *)aTableView
{
    BaseTableViewCell *cell = [aTableView dequeueReusableCellWithIdentifier:[self cellIdentifier]];
    if (nil == cell) {
        cell = [[[self class] alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[self cellIdentifier]];
    }
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        [self configure];
    }
    return self;
}


- (void)configure
{
    self.clipsToBounds = YES;
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}



#pragma mark - Class
+ (NSString *)cellIdentifier
{
    return  NSStringFromClass([self class]);
}



@end
