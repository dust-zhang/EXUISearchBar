//
//  ViewController.m
//  UISearchBar
//
//  Created by zhangjingfei on 25/7/2019.
//  Copyright © 2019 zhangjingfei. All rights reserved.
//

#import "ViewController.h"
#define RGBA(r, g, b, a)    [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define UWFONT(fontSize)    [UIFont systemFontOfSize:fontSize]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    searchBar = [[ExUISearchBar alloc ] initWithFrame:CGRectMake(20, 100, 200, 72/2)];
    [self.view addSubview:searchBar];
    [searchBar.myTextField setPlaceholder: @"请输入企业名称"];
    [searchBar.myTextField setValue:RGBA(154,154,161,1) forKeyPath:@"_placeholderLabel.textColor"];
    searchBar.myTextField.delegate =self;
    [searchBar.myTextField setBackgroundColor:[UIColor clearColor]];
    searchBar.delegate = self;
    [searchBar.myTextField addTarget:self action:@selector(textFiledDidBegin:) forControlEvents:UIControlEventEditingDidBegin];
    [searchBar.myTextField addTarget:self action:@selector(textFiledValueChange:) forControlEvents:UIControlEventEditingChanged];
    [self.view addSubview:searchBar ];
}

#pragma mark changedTextField
-(void)textFiledDidBegin:(UITextField*)textField
{
//    [self updateLoginButtonState:textField];
}

-(void)textFiledValueChange:(UITextField*)textField
{
//    [self updateLoginButtonState:textField];
}


- (void)onButtonClearText
{
    
}

@end
