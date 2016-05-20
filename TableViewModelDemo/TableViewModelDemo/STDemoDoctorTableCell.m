//
//  CustomTableCell.m
//  MySDAutolayoutDemo
//
//  Created by liangshangjia on 16/4/1.
//  Copyright © 2016年 Sami-Network. All rights reserved.
//

#import "STDemoDoctorTableCell.h"

#import "SDAutoLayout/UIView+SDAutoLayout.h"

#import "STDemoDoctor.h"

#define kGravatarImageViewHeight 55
#define kLeftRightEdgeMargin 15.f
#define kTopEdgeMargin 15.f
#define kBottomEdgeMargin 20.f
#define kImageHospitalVerticalDistance 5
#define kHospitalFont [UIFont systemFontOfSize:17]

@interface STDemoDoctorTableCell ()
@property (nonatomic, strong) UIImageView *gravatarImageView;   //头像
@property (nonatomic, strong) UILabel     *nameLabel;           //姓名
@property (nonatomic, strong) UILabel     *typeLabel;           //医生等级
@property (nonatomic, strong) UILabel     *hospitalLabel;       //所属医院
@property (nonatomic, strong) UILabel     *goodatLabel;         //主治
@end

@implementation STDemoDoctorTableCell

/**
 *  初始设置
 */
- (void)configure
{
    [super configure];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
    [self.contentView addSubview:self.gravatarImageView];
    [self.contentView addSubview:self.nameLabel];
    [self.contentView addSubview:self.typeLabel];
    [self.contentView addSubview:self.hospitalLabel];
    [self.contentView addSubview:self.goodatLabel];
    
    [self setupConstraints];
}

/**
 *  设定布局
 */
- (void)setupConstraints
{
    //头像
    self.gravatarImageView.sd_layout
    .leftSpaceToView(self.contentView, kLeftRightEdgeMargin)
    .topSpaceToView(self.contentView, kTopEdgeMargin)
    .heightIs(kGravatarImageViewHeight)
    .widthIs(kGravatarImageViewHeight);
    
    //名字
    self.nameLabel.sd_layout
    .leftSpaceToView(self.gravatarImageView, 15)
    .topSpaceToView(self.contentView,7 + kTopEdgeMargin);
    [_nameLabel setSingleLineAutoResizeWithMaxWidth:100.0f];
    
    //医生等级
    self.typeLabel.sd_layout
    .leftEqualToView(self.nameLabel)
    .topSpaceToView(self.nameLabel,5)
    .autoHeightRatio(0);
    [_typeLabel setSingleLineAutoResizeWithMaxWidth:100.0f];
    
    //医院
    self.hospitalLabel.sd_layout
    .leftEqualToView(self.nameLabel)
    .rightSpaceToView(self.contentView,kLeftRightEdgeMargin)
    .topSpaceToView(self.gravatarImageView,5)
    .autoHeightRatio(0); //代表自动计算高度***
    
    //主治/擅长
    self.goodatLabel.sd_layout
    .leftEqualToView(self.nameLabel)
    .topSpaceToView(self.hospitalLabel,10)
    .rightEqualToView(self.hospitalLabel)
    .autoHeightRatio(0);
    
    //绑定subView整体高度与Superview高度
    [self setupAutoHeightWithBottomView:self.goodatLabel bottomMargin:kBottomEdgeMargin];
    
    //over
}



#pragma mark - Getters
- (UIImageView *)gravatarImageView
{
    if (!_gravatarImageView) {
        _gravatarImageView                    = [[UIImageView alloc]init];
    }
    return _gravatarImageView;
}

- (UILabel *)nameLabel
{
    if (!_nameLabel) {
        _nameLabel = [[UILabel alloc]init];
        _nameLabel.textColor = [UIColor darkGrayColor];
        _nameLabel.font = [UIFont boldSystemFontOfSize:15.5f];
    }
    return _nameLabel;
}

- (UILabel *)typeLabel
{
    if (!_typeLabel) {
        _typeLabel = [[UILabel alloc]init];

        _typeLabel.textColor = RGBCOLOR(153, 80, 84);
        _typeLabel.backgroundColor = RGBCOLOR(217, 104, 49);
        _typeLabel.font = [UIFont systemFontOfSize:14];

    }
    return _typeLabel;
}

- (UILabel *)hospitalLabel
{
    if (!_hospitalLabel) {
        _hospitalLabel = [[UILabel alloc]init];
        _hospitalLabel.textColor = RGBCOLOR(23, 44, 60);
        _hospitalLabel.font = [UIFont systemFontOfSize:17];

    }
    return _hospitalLabel;
}

- (UILabel *)goodatLabel
{
    if (!_goodatLabel) {
        _goodatLabel = [[UILabel alloc]init];
        _goodatLabel.textColor = RGBCOLOR(6, 128, 67);
        _goodatLabel.font = [UIFont systemFontOfSize:16];

    }
    return _goodatLabel;
}


@end
