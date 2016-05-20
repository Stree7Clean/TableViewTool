//
//  TableViewModel.m
//  TableViewModelDemo
//
//  Created by liangshangjia on 16/5/19.
//  Copyright © 2016年 SAMI-Network-Technology. All rights reserved.
//

#import "STTableViewTool.h"

@implementation STTableViewTool
#pragma mark - UITableView Delegate
//点击cell
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    STCellSelectionBlock selectionBlock = [self cellModelAtIndexPath:indexPath].selectionBlock;
    if (selectionBlock) {
        selectionBlock(indexPath,tableView);
    }
}

//cell的高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [self cellModelAtIndexPath:indexPath].height;
}

//section header高度
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return [self sectionModelInSection:section].headerHeight;
}

//section footer高度
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return [self sectionModelInSection:section].footerHeight;
}

//section header配置
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    SectionConfigureHandler headerHandler = [self sectionModelInSection:section].headerHandler;
    if (headerHandler && [self sectionModelInSection:section].type == ESectionTypeCustom) {
        return headerHandler(section);
    }
    return nil;
}

//section footer配置
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    SectionConfigureHandler footerHandler = [self sectionModelInSection:section].footerHandler;
    if (footerHandler && [self sectionModelInSection:section].type == ESectionTypeCustom) {
        return footerHandler(section);
    }
    return nil;
}

//section header title
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    STTableSectionModel *sectionModel = [self sectionModelInSection:section];
    if (sectionModel.type == ESectionTypeDefault) {
        return nil;
    }
    return sectionModel.headerTitle;
}

//section footer title
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    STTableSectionModel *sectionModel = [self sectionModelInSection:section];
    if (sectionModel.type == ESectionTypeDefault) {
        return nil;
    }
    return sectionModel.footerTitle;
}




#pragma mark - UITableView Datasource
//section个数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.sectionModelArray.count;
}

//每个section包含的cell个数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self sectionModelInSection:section].cellModelArray.count;
}


//cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    STCellRenderBlock renderBlock = [self cellModelAtIndexPath:indexPath].renderBlock;
    UITableViewCell *cell = nil;
    if (renderBlock) {
        cell = renderBlock(indexPath,tableView);
    }
    return cell;
}


#pragma mark - Getters
- (STTableSectionModel *)sectionModelInSection:(NSInteger)section
{
    return self.sectionModelArray[section];
}

- (STTableCellModel *)cellModelAtIndexPath:(NSIndexPath *)indexPath
{
    return [self sectionModelInSection:indexPath.section].cellModelArray[indexPath.row];
}


- (NSMutableArray<STTableSectionModel *> *)sectionModelArray
{
    if (!_sectionModelArray) {
        _sectionModelArray = [NSMutableArray array];
    }
    return _sectionModelArray;
}


@end


@implementation STTableSectionModel
@end

@implementation STTableCellModel
@end