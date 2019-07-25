//
//  ViewController.h
//  UISearchBar
//
//  Created by zhangjingfei on 25/7/2019.
//  Copyright © 2019 zhangjingfei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ExUISearchBar.h"

@interface ViewController : UIViewController<ExUISearchBarDelegate,UITextFieldDelegate>
{
     ExUISearchBar           *searchBar;
}

@end

