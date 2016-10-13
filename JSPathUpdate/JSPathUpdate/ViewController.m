//
//  ViewController.m
//  JSPathUpdate
//
//  Created by 金玉衡 on 16/10/13.
//  Copyright © 2016年 mit. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self test];
    
    //[self.changeBtn setTitle:@"changebtn" forState:UIControlStateNormal];
    
    [self changeBtnColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)test
{
    self.textLabel.text = @"test jspath a";
    self.label.text = @"native label is lable";
}

- (void)changeBtnColor
{
    [self.changeBtn setBackgroundColor:[UIColor blackColor]];
    [self.changeBtn setTitle:@"按钮" forState:UIControlStateNormal];
    [self.changeBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //[self.changeBtn addTarget:self action:@selector(changeAction:) forControlEvents:UIControlEventTouchUpInside];
}


@end
