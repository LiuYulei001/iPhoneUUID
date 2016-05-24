//
//  ViewController.m
//  Demo
//
//  Created by SPI-绿能宝 on 16/5/24.
//  Copyright © 2016年 北京SPI绿能宝. All rights reserved.
//

#import "ViewController.h"

#import <MyUUID/SPIMyUUID.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString * strUUID = (NSString *)[SPIMyUUID load:@"KEY_USERNAME_PASSWORD"];
    
    //首次执行该方法时，uuid为空
    if ([strUUID isEqualToString:@""] || !strUUID)
    {
        //生成一个uuid的方法
        CFUUIDRef uuidRef = CFUUIDCreate(kCFAllocatorDefault);
        
        strUUID = (NSString *)CFBridgingRelease(CFUUIDCreateString (kCFAllocatorDefault,uuidRef));
        
    }
    
    NSLog(@"%@",strUUID);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
