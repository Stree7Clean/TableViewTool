//
//  Doctor.m
//  MySDAutolayoutDemo
//
//  Created by liangshangjia on 16/4/1.
//  Copyright © 2016年 Sami-Network. All rights reserved.
//

#import "STDemoDoctor.h"
#import "MJExtension.h"

@implementation STDemoDoctor

+ (NSArray *)fakeDatas
{
    NSArray *array = @[
                       @{
                           @"gravatar":@"icon_imageLoad_fail.jpg",
                           @"name":@"王大石",
                           @"type":@"见习医生",
                           @"hospital":@"中国中医研究院望京医院北京市针灸骨伤学院附属医院",
                           @"goodat":@"擅长：割眼袋，做手术，美容"
                           },
                       @{
                           @"gravatar":@"icon_imageLoad_fail.jpg",
                           @"name":@"野厦木盛",
                           @"type":@"主任医生",
                           @"hospital":@"广州整形美容医院附属第三人民医院",
                           @"goodat":@"擅长：割眼袋，做手术，美容"
                           },
                       @{
                           @"gravatar":@"icon_imageLoad_fail.jpg",
                           @"name":@"李一帆",
                           @"type":@"临时医生",
                           @"hospital":@"北京京棉纺织集团有限责任公司二棉分厂医院",
                           @"goodat":@"擅长：割眼袋，做手术，美容"
                           },
                       @{
                           @"gravatar":@"icon_imageLoad_fail.jpg",
                           @"name":@"吴亦凡",
                           @"type":@"权威医生",
                           @"hospital":@"中国中医研究院望京医院北京市针灸骨伤学院附属医院",
                           @"goodat":@"擅长：割眼袋，做手术，美容"
                           },
                       @{
                           @"gravatar":@"icon_imageLoad_fail.jpg",
                           @"name":@"李一帆",
                           @"type":@"主任医生",
                           @"hospital":@"广州整形美容医院附属第三人民医院,北京市第二医院西城佳华骨关节病专科医院",
                           @"goodat":@"擅长：割眼袋，做手术，美容"
                           },
                       @{
                           @"gravatar":@"icon_imageLoad_fail.jpg",
                           @"name":@"李一帆",
                           @"type":@"主任医生",
                           @"hospital":@"北京京棉纺织集团有限责任公司二棉分厂医院",
                           @"goodat":@"擅长：割眼袋，做手术，美容"
                           },                       @{
                           @"gravatar":@"icon_imageLoad_fail.jpg",
                           @"name":@"李一帆",
                           @"type":@"主任医生",
                           @"hospital":@"中国中医研究院望京医院北京市针灸骨伤学院附属医院",
                           @"goodat":@"擅长：割眼袋，做手术，美容"
                           },
                       @{
                           @"gravatar":@"icon_imageLoad_fail.jpg",
                           @"name":@"李一帆",
                           @"type":@"主任医生",
                           @"hospital":@"广州整形美容医院附属第三人民医院,北京市第二医院西城佳华骨关节病专科医院",
                           @"goodat":@"擅长：割眼袋，做手术，美容"
                           },
                       @{
                           @"gravatar":@"icon_imageLoad_fail.jpg",
                           @"name":@"李一帆",
                           @"type":@"主任医生",
                           @"hospital":@"北京京棉纺织集团有限责任公司二棉分厂医院",
                           @"goodat":@"擅长：割眼袋，做手术，美容"
                           },
                       ];
    
    return [self mj_objectArrayWithKeyValuesArray:array];
}




@end
