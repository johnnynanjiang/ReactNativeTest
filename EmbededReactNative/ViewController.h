//
//  ViewController.h
//  EmbededReactNative
//
//  Created by Wu Di on 3/31/15.
//  Copyright (c) 2015 吴迪（子回）. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ReactView.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *saveButton;
@property (weak, nonatomic) IBOutlet ReactView *reactView;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

