//
//  ExUISearchBar.h
//  movikr
//
//  Created by Mapollo28 on 15/11/23.
//  Copyright © 2015年 movikr. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ExUISearchBarDelegate <NSObject>
-(void)onButtonClearText;
@end

@interface ExUISearchBar : UIView

@property (strong,nonatomic)    UIButton            *btnDelete;
@property (strong,nonatomic)    UITextField         *myTextField;
@property (nonatomic,weak)      id<ExUISearchBarDelegate> delegate;

- (id)initWithFrame:(CGRect)frame;


@end
