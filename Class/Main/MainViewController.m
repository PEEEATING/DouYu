//
//  MainViewController.m
//  DouYu
//
//  Created by EATING on 2017/2/20.
//  Copyright © 2017年 EATING. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UITabBar *tabbar = [[UITabBar alloc]init];
    [self.view addSubview: tabbar];
    
    tabbar.accessibilityElements = @[];
    
    [self addStoryBoard:@"Home"];
    [self addStoryBoard:@"Follow"];
    [self addStoryBoard:@"Live"];
    [self addStoryBoard:@"Profile"];



}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)addStoryBoard: (NSString *)storyboard{
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:storyboard bundle:nil];
    
    UIViewController *sbvc = [sb instantiateViewControllerWithIdentifier:@"vc"];

    [self.navigationController pushViewController:sbvc animated:YES];

}



@end
