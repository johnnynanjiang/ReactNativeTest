//
//  ViewController.m
//  EmbededReactNative
//
//  Created by Wu Di on 3/31/15.
//  Copyright (c) 2015 吴迪（子回）. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.viewModel = [[ViewModel alloc] init];
    
    [self updateView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)save:(id)sender {
    NSDictionary *newProps = @{@"key1": self.textField.text};
    [self.viewModel save:newProps];
    
    [self updateView];
}

- (void) updateView {
    self.label.text = self.viewModel.props[@"key1"];
    self.textField.text = self.viewModel.props[@"key1"];
}
@end
