//
//  Person.m
//  runTimeOne
//
//  Created by 林世冠 on 16/8/5.
//  Copyright © 2016年 林世冠. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>
@implementation Person
//获取一个类的全部成员变量名
-(void)test1
{
    unsigned int count;
    Ivar *ivars = class_copyIvarList([Person class], &count);
    for (int i =0; i<count; i++) {
        Ivar ivar = ivars[i];
        const char *name = ivar_getName(ivar);
        NSString *key = [NSString stringWithUTF8String:name];
        NSLog(@"%d=%@",i,key);
    }
}

//获取一个类的全部属性名
-(void)test2
{
    unsigned int count;
    objc_property_t *properties = class_copyPropertyList([Person class], &count);
    for (int i =0; i<count; i++) {
        objc_property_t property = properties[i];
        const char *name = property_getName(property);
        NSString *key = [NSString stringWithUTF8String:name];
        NSLog(@"%d=%@",i,key);
    }
}

//获取一个类的全部方法
-(void)test3
{
    unsigned int count;
    Method *methods = class_copyMethodList([Person class], &count);
    for (int i =0; i<count; i++) {
        Method meothod = methods[i];
        SEL methodSEL = method_getName(meothod);
        const char *name = sel_getName(methodSEL);
        NSString *key = [NSString stringWithUTF8String:name];
        NSLog(@"%d=%@",i,key);
    }
}
-(void)test4
{
    
}
@end
