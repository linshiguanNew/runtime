//
//  TabBarViewController.m
//  XYTabBarDemo
//
//  Created by 潘显跃 on 16/5/12.
//  Copyright © 2016年 Panda. All rights reserved.
//

#import "TabBarViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
    [self setupTabBarChildController];
}

- (void)setupTabBarChildController {
    
    NSArray *imageArray = @[@"home", @"category", @"center", @"cart", @"mine"];
    NSArray *titleArray = @[@"首页", @"分类", @"", @"购物车", @"我"];
    for (int i = 0; i < imageArray.count; i++) {
        UIViewController *vc = [UIViewController new];
        [vc.view setBackgroundColor:[UIColor whiteColor]];
        
        vc.tabBarItem.image = [[UIImage imageNamed:imageArray[2]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        vc.tabBarItem.selectedImage = [[UIImage imageNamed:[imageArray[2] stringByAppendingString:@"_selected"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        vc.title = titleArray[i];
        
        if (i == 3) {
            vc.tabBarItem.badgeValue = @"99";
        }
        
        [self addChildViewController:vc];
    }
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
