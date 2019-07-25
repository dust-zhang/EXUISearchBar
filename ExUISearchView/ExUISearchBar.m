//
//  ExUISearchBar.m
//  movikr
//
//  Created by Mapollo28 on 15/11/23.
//  Copyright © 2015年 movikr. All rights reserved.
//

#import "ExUISearchBar.h"

#define RGBA(r, g, b, a)    [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define UWFONT(fontSize)    [UIFont systemFontOfSize:fontSize]

@implementation ExUISearchBar

//inputType :输入的是密码还是其他类型
//0：其他类型，显示清空按钮
//1：密码，显示隐藏显示密码按钮
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        UIView *viewbg = [[UIView alloc ] initWithFrame:CGRectMake(0, 0, frame.size.width, 36)];
        viewbg.userInteractionEnabled = YES;
        [viewbg setBackgroundColor:RGBA(248,248,249,1)];
        [viewbg.layer setMasksToBounds:YES ];
        [viewbg.layer setCornerRadius:3];
        [self addSubview:viewbg];
        
        UIImageView *imgViewSearch = [[UIImageView alloc] initWithFrame:CGRectMake(15, 72/4-13/2, 20, 13)];
        [imgViewSearch setImage:[UIImage imageNamed:@"SearchBarLeftIcon"]];
        [viewbg addSubview:imgViewSearch];
        
        self.myTextField = [[UITextField alloc]initWithFrame:CGRectMake(imgViewSearch.frame.origin.x+imgViewSearch.frame.size.width+8, 0, frame.size.width, frame.size.height)];
        [self.myTextField setFont:UWFONT(14)];
        [self.myTextField setTextColor:RGBA(29, 29, 29, 1)];
        [viewbg addSubview:self.myTextField];

         self.btnDelete = [[UIButton alloc ] initWithFrame:CGRectMake(frame.size.width-frame.size.height, 0, frame.size.height, frame.size.height)];
        [self.btnDelete setImage:[UIImage imageNamed:@"LoginMobileDelete"] forState:UIControlStateNormal];
        [self.btnDelete addTarget:self action:@selector(onButtonDelete:) forControlEvents:UIControlEventTouchUpInside];
        [viewbg addSubview:self.btnDelete];
      
    }
    return self;
}

-(void)onButtonDelete:(UIButton*)sender
{
    if ([self.delegate respondsToSelector:@selector(onButtonClearText)])
    {
        [self.delegate onButtonClearText];
    }
}

@end
