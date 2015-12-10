//
//  ReactView.m
//  EmbededReactNative
//
//  Created by Wu Di on 3/31/15.
//  Copyright (c) 2015 吴迪（子回）. All rights reserved.
//

#import "ReactView.h"
#import "RCTRootView.h"

@implementation ReactView

- (void)awakeFromNib {
    NSString *urlString = @"http://localhost:8081/ReactComponents/index.ios.bundle";
    NSURL *jsCodeLocation = [NSURL URLWithString:urlString];
    
    NSDictionary *props = @{@"property 1 name" : @"property 1 value", @"property 2 name" : @"property 2 value"};
    
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                        moduleName:@"SimpleApp"
                                                        initialProperties:props
                                                        launchOptions:nil];
    [self addSubview:rootView];
    rootView.frame = self.bounds;
}

@end
