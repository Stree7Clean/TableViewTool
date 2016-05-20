//
//  TableViewModel.h
//  TableViewModelDemo
//
//  Created by liangshangjia on 16/5/19.
//  Copyright © 2016年 SAMI-Network-Technology. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class STTableSectionModel,STTableCellModel;



@interface STTableViewTool : NSObject <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray <STTableSectionModel*> *sectionModelArray;

@end



typedef UIView * (^SectionConfigureHandler)(NSInteger section);

/**
 *  分区的类别
 */
typedef NS_ENUM(NSUInteger,ESectionType) {
    /**
     *  默认系统分区视图
     */
    ESectionTypeDefault = 0x01,
    /**
     *  自定义view的分区视图
     */
    ESectionTypeCustom
};

@interface STTableSectionModel : NSObject

@property (nonatomic, strong)   NSMutableArray  <STTableCellModel *>*cellModelArray;
// headerTitle can be nil
@property (nonatomic, copy)     NSString                *headerTitle;
// footerTitle can be nil
@property (nonatomic, copy)     NSString                *footerTitle;
// headerHeight is 0 as default
@property (nonatomic, assign)   CGFloat                 headerHeight;
// footerHeight is 0 as default
@property (nonatomic, assign)   CGFloat                 footerHeight;
// headerHandler can be nil unless ESectionType is ESectionTypeCustom
@property (nonatomic, copy)     SectionConfigureHandler headerHandler;
// footerHandler can be nil unless ESectionType is ESectionTypeCustom
@property (nonatomic, copy)     SectionConfigureHandler footerHandler;

//ESectionType is ESectionTypeDefault as default
@property (nonatomic, assign)   ESectionType            type;
//...

@end




typedef UITableViewCell * (^STCellRenderBlock)(NSIndexPath *indexPath, UITableView *tableView);
typedef void (^STCellSelectionBlock)(NSIndexPath *indexPath, UITableView *tableView);

@interface STTableCellModel : NSObject
//renderBlock can't be nil ,and must return a real cell(UITableViewCell Instance) in block
@property (nonatomic, copy)     STCellRenderBlock       renderBlock;
//selectionBlock can be nil
@property (nonatomic, copy)     STCellSelectionBlock    selectionBlock;
//default is 0
@property (nonatomic, assign)   CGFloat                 height;
//...

@end