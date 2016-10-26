//
//  studentModel.m
//  sortTest
//
//  Created by feng on 2016/10/26.
//  Copyright © 2016年 feng. All rights reserved.
//

#import "studentModel.h"

@implementation studentModel

-(instancetype)initWithNumber:(NSInteger)number name:(NSString *)name age:(NSInteger)age height:(CGFloat)heiht{
    
    if (self=[super init]) {
        self.number=number;
        self.name=name;
        self.age=age;
        self.height=heiht;
    }
    return self;
}

+(instancetype)studentWithNumber:(NSInteger)number name:(NSString *)name age:(NSInteger)age height:(CGFloat)heiht{
    
    return [[self alloc]initWithNumber:number name:name age:age height:heiht];
}

-(NSComparisonResult)comparWithNumberAsc:(studentModel *)model{
    
        return [@(self.number)compare:@(model.number)];
}
-(NSComparisonResult)comparWithNumberDesc:(studentModel *)model{
    
    return -[@(self.number)compare:@(model.number)];
}

-(NSComparisonResult)comparWithNameAsc:(studentModel *)model{
    
    return [self.name compare:model.name];
}
-(NSComparisonResult)comparWithNameDesc:(studentModel *)model{
    
    return -[self.name compare:model.name];
}

+(NSArray *)getList{
    
    studentModel *model1=[studentModel studentWithNumber:2 name:@"feng" age:18 height:13.5f];
    studentModel *model2=[studentModel studentWithNumber:7 name:@"eng" age:18 height:13.5f];
    studentModel *model3=[studentModel studentWithNumber:9 name:@"xeng" age:18 height:13.5f];
    studentModel *model4=[studentModel studentWithNumber:1 name:@"seng" age:18 height:13.5f];
    studentModel *model5=[studentModel studentWithNumber:3 name:@"aeng" age:18 height:13.5f];
    studentModel *model6=[studentModel studentWithNumber:8 name:@"beng" age:18 height:13.5f];
     studentModel *model7=[studentModel studentWithNumber:3 name:@"meng" age:18 height:13.5f];
     studentModel *model8=[studentModel studentWithNumber:3 name:@"feng" age:18 height:13.5f];
     studentModel *model9=[studentModel studentWithNumber:3 name:@"neng" age:18 height:13.5f];
    
    NSArray *arr=@[model1,model2,model3,model4,model5,model6,model7,model8,model9];
    return arr;
}

-(NSString *)description{
    
    return [NSString stringWithFormat:@"number:%ld,name:%@,age:%ld,height%.1f",_number,_name,_age,_height];
}
@end
