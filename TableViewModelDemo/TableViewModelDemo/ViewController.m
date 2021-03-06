//
//  ViewController.m
//  TableViewModelDemo
//
//  Created by liangshangjia on 16/5/19.
//  Copyright © 2016年 SAMI-Network-Technology. All rights reserved.
//

#import "ViewController.h"

#import "STTableViewTool.h"

#import "STDemoDoctorTableCell.h"
#import "STDemoDoctor.h"

@interface ViewController ()
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) STTableViewTool *tableTool;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView = [[UITableView alloc]initWithFrame:self.view.bounds];
    _tableView.delegate = self.tableTool;
    _tableView.dataSource = self.tableTool;
    _tableView.tableFooterView = [UIView new];
    [self.view addSubview:self.tableView];
    
 
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [self.tableTool.sectionModelArray addObject:[self sectionModel]];
        dispatch_sync(dispatch_get_main_queue(), ^{
            [self.tableView reloadData];
        });
    });
}


#pragma mark - Getters
- (STTableViewTool *)tableTool
{
    if (!_tableTool) {
        _tableTool = [STTableViewTool new];
    }
    return _tableTool;
}


- (STTableSectionModel *)sectionModel
{
    /** 注意block的使用规范
     */
    
    NSArray <STDemoDoctor *>* doctors = [STDemoDoctor fakeDatas];
    
    
    //构建sectionModel
    STTableSectionModel *sectionModel = [STTableSectionModel new];
    
    //分区头的类型
    sectionModel.type               = ESectionTypeCustom;
    sectionModel.headerHeight       = 100;
    sectionModel.footerHeight       = 100;
    sectionModel.cellModelArray     = [NSMutableArray array];
    
    
    //分区头的设置
    sectionModel.headerHandler          = ^ id (NSInteger section)
    {
        UILabel *sectionLabel           = [UILabel new];
        sectionLabel.text               = @"section header";
        sectionLabel.textAlignment      = NSTextAlignmentCenter;
        sectionLabel.backgroundColor    = [[UIColor blueColor] colorWithAlphaComponent:.5f];
        return sectionLabel;
    };
    
    //分区尾的设置
    sectionModel.footerHandler          = ^ id (NSInteger section)
    {
        UILabel *sectionLabel           = [UILabel new];
        sectionLabel.text               = @"section footer";
        sectionLabel.textAlignment      = NSTextAlignmentCenter;
        sectionLabel.backgroundColor    = [[UIColor redColor] colorWithAlphaComponent:.5f];
        return sectionLabel;
    };
    
    //cell的设置
    STCellRenderBlock renderBlock   =  ^ id (NSIndexPath *indexPath, UITableView *tableView)
    {
        STDemoDoctorTableCell *cell  = [STDemoDoctorTableCell tableViewCellWithTableView:tableView];
        STDemoDoctor *anObj          = doctors[indexPath.row];
        
        cell.gravatarImageView.image = [UIImage imageNamed:anObj.gravatar];
        cell.nameLabel.text          = anObj.name;
        cell.typeLabel.text          = anObj.type;
        cell.hospitalLabel.text      = anObj.hospital;
        cell.goodatLabel.text        = anObj.goodat;
        
        return cell;
    };
    
    //点击cell事件
    STCellSelectionBlock selectionBlock    = ^ (NSIndexPath *indexPath, UITableView *tableView)
    {
        NSLog(@"%ld",(long)indexPath.row);
    };
    
    
    for (NSInteger i = 0; i < doctors.count; i ++) {
        
        STTableCellModel *cellModel =   [STTableCellModel new];
        cellModel.height            =   150;
        cellModel.renderBlock       =   renderBlock;
        //若cell的点击事件不一样，可以另外单独写block，这里传进同一个block
        cellModel.selectionBlock    =   selectionBlock;
        
        [sectionModel.cellModelArray addObject:cellModel];
    }
    
   return sectionModel;
}

@end
