//
//  Person.h
//  runTimeOne
//
//  Created by 林世冠 on 16/8/5.
//  Copyright © 2016年 林世冠. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PersonDelegate <NSObject>

-(void)PersonDelegateToWork;

@end

@interface Person : NSObject
@property (copy, nonatomic)NSString *name;
@property (copy, nonatomic)NSString *age;
@property (copy, nonatomic)NSString *job;

-(void)eat;
-(void)sleep;
-(void)test1;
-(void)test2;
-(void)test3;
@end
