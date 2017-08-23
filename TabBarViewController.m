//
//  TabBarViewController.m
//  物业通1
//
//  Created by macmacpro on 17/8/22.
//  Copyright © 2017年 fy. All rights reserved.
//

#import "TabBarViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController
{
    NSArray *arry;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITabBarController *tabBar=[UITabBarController new];
    
    ViewController1 *vc1=[ViewController1 new];
    ViewController2 *vc2=[ViewController2 new];
    ViewController3 *vc3=[ViewController3 new];
    ViewController4 *vc4=[ViewController4 new];
    
    vc1.title=@"首页";
    [vc1.tabBarItem setImage:[UIImage imageNamed:@"wo"]];
    vc2.title=@"逛一逛";
    [vc2.tabBarItem setImage:[UIImage imageNamed:@"wo"]];
    vc3.title=@"我是大明星";
    [vc3.tabBarItem setImage:[UIImage imageNamed:@"wo"]];
    vc4.title=@"我的";
    [vc4.tabBarItem setImage:[UIImage imageNamed:@"wo"]];


    arry=[[NSArray alloc]initWithObjects:vc1,vc2,vc3,vc4,nil];
    for (int i=0; i<4; i++) {
    [tabBar addChildViewController:[[UINavigationController alloc]initWithRootViewController:arry[i]]];
        
}
    [[[UIApplication sharedApplication]delegate]window].rootViewController = tabBar;

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
