//
//  ViewController.m
//  sortTest
//
//  Created by feng on 2016/10/26.
//  Copyright © 2016年 feng. All rights reserved.
//

#import "ViewController.h"
#import "studentModel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *arr=[studentModel getList];
    
    NSArray *arrByNumber=[arr sortedArrayUsingSelector:@selector(comparWithNumberAsc:)];
    NSLog(@"%@",arrByNumber);
    
    NSArray *ArrByName=[arr sortedArrayUsingSelector:@selector(comparWithNameDesc:)];
    NSLog(@"%@",ArrByName);
    
///先按number排序再按name排序（双重排序）
//---begin-----
  NSArray *arr1=[arr sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        return [((studentModel*)obj1).name compare:((studentModel*)obj2).name];
    }];
   NSArray *arr2=[arr1 sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
       return [@(((studentModel*)obj1).number) compare:@(((studentModel*)obj2).number)];
   }];
    NSLog(@"%@",arr2);
}
//------end-------------

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
