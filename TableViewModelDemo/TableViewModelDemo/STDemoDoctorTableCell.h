//
//  CustomTableCell.h
//  MySDAutolayoutDemo
//
//  Created by liangshangjia on 16/4/1.
//  Copyright © 2016年 Sami-Network. All rights reserved.
//

#import "BaseTableViewCell.h"

/**
 *  自定义医生Cell
 */

@interface STDemoDoctorTableCell : BaseTableViewCell

@property (nonatomic, strong, readonly) UIImageView *gravatarImageView;   //头像
@property (nonatomic, strong, readonly) UILabel     *nameLabel;           //姓名
@property (nonatomic, strong, readonly) UILabel     *typeLabel;           //医生等级
@property (nonatomic, strong, readonly) UILabel     *hospitalLabel;       //所属医院
@property (nonatomic, strong, readonly) UILabel     *goodatLabel;         //主治



@end
