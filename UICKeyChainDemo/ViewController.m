//
//  ViewController.m
//  UICKeyChainDemo
//
//  Created by 袁俊晓 on 2018/1/22.
//  Copyright © 2018年 yuanjunxiao. All rights reserved.
//

#import "ViewController.h"
#import "UICKeyChainStore.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //存储密码
    UICKeyChainStore *keychainStore = [UICKeyChainStore keyChainStore];
    [keychainStore setString:@"123456" forKey:@"password"];//存储密码
    //keychainStore[@"passwordabc"] = @"abcd1234";//存储密码，跟上面的使用方法是一样的效果
    // Do any additional setup after loading the view, typically from a nib.
}
-(NSString *)getuserpass{
    //获取存储的密码
    UICKeyChainStore *keychainStore = [UICKeyChainStore keyChainStore];
    NSString *_passWordStr = [keychainStore stringForKey:@"passwordabc"];
    NSLog(@"keychainStore------%@",_passWordStr);
    return _passWordStr;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
