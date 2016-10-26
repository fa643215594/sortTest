//
//  studentModel.h
//  sortTest
//
//  Created by feng on 2016/10/26.
//  Copyright © 2016年 feng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface studentModel : NSObject

@property(nonatomic,assign)NSInteger number;
@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)NSInteger age;
@property(nonatomic,assign)CGFloat height;

-(instancetype)initWithNumber:(NSInteger)number name:(NSString*)name age:(NSInteger)age height:(CGFloat)heiht;
+(instancetype)studentWithNumber:(NSInteger)number name:(NSString*)name age:(NSInteger)age height:(CGFloat)heiht;

-(NSComparisonResult)comparWithNumberAsc:(studentModel *)model;
-(NSComparisonResult)comparWithNumberDesc:(studentModel *)model;

-(NSComparisonResult)comparWithNameAsc:(studentModel *)model;
-(NSComparisonResult)comparWithNameDesc:(studentModel *)model;

+(NSArray *)getList;
@end
