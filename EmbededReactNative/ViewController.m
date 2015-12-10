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
    
    [self.view addSubview:self.reactView];
    
    [self updateView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)save:(id)sender {
    NSDictionary *newProps = @{@"property 1 name": self.textField.text};
    [self.reactView save:newProps];
    
    [self updateView];
}

- (void) updateView {
    self.label.text = self.reactView.props[@"property 1 name"];
    self.textField.text = self.reactView.props[@"property 1 name"];
}
@end
