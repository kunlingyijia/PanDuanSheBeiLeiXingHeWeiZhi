//
//  ViewController.m
//  判断设备类型及获取位置信息
//
//  Created by 席亚坤 on 16/7/6.
//  Copyright © 2016年 席亚坤. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    if (self.traitCollection.userInterfaceIdiom == UIUserInterfaceIdiomPad) {
        NSLog(@"设备为iPad");
    }
    
    if (self.traitCollection.userInterfaceIdiom == UIUserInterfaceIdiomPhone) {
        NSLog(@"设备为Phone");
    }
    
}
-(void)willTransitionToTraitCollection:(UITraitCollection *)newCollection withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator{
    [super willTransitionToTraitCollection:newCollection withTransitionCoordinator:coordinator];
    
    if (newCollection.horizontalSizeClass == UIUserInterfaceSizeClassCompact) {
        NSLog(@"Compact width");
    }
    if (newCollection.verticalSizeClass == UIUserInterfaceSizeClassCompact) {
        NSLog(@"Compact Height");
    }

    
    if (newCollection.horizontalSizeClass == UIUserInterfaceSizeClassRegular) {
        NSLog(@"Regular width");
    }
    if (newCollection.verticalSizeClass == UIUserInterfaceSizeClassRegular) {
        NSLog(@"Regular Height");
    }
    

    
}



-(void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator{
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    UIDeviceOrientation orientation = [UIDevice currentDevice].orientation;
    if (orientation == UIDeviceOrientationLandscapeLeft) {
        NSLog(@"横向 顶端在左侧");
    }
    if (orientation == UIDeviceOrientationLandscapeRight) {
        NSLog(@"横向 顶端在右侧");
    }
    if (orientation == UIDeviceOrientationPortrait) {
        NSLog(@"竖向");
    }
    if (orientation == UIDeviceOrientationPortraitUpsideDown) {
        NSLog(@"竖向但上下颠倒");
    }
    if (orientation == UIDeviceOrientationUnknown) {
        NSLog(@"方向位置");
    }
    NSLog(@"分辨率%.0fx%0f",size.width,size.height);

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
