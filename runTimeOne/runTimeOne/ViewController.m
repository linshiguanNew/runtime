//
//  ViewController.m
//  runTimeOne
//
//  Created by 林世冠 on 16/8/5.
//  Copyright © 2016年 林世冠. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
@interface ViewController ()
/*
 获取协议，归档的时候挺好用的
 */
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Person *person = [Person new];
    [person test1];
    [person test2];
    [person test3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
