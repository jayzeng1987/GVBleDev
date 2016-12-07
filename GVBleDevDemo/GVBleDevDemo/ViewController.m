//
//  ViewController.m
//  GVBleDevDemo
//
//  Created by JayZ on 16/8/16.
//  Copyright © 2016年 genvict. All rights reserved.
//

#import "ViewController.h"
#import "GVObuSDK.h"

@interface ViewController ()

@property (nonatomic, strong) GVObuSDK * gvObuSDK;

- (IBAction)onTestBtnClick:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.gvObuSDK = [GVObuSDK sharedObuSDK];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTestBtnClick:(id)sender {
    NSLog(@"onTestBtnClick");

}

@end
