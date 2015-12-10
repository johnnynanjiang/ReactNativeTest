//
//  ReactView.m
//  EmbededReactNative
//
//  Created by Wu Di on 3/31/15.
//  Copyright (c) 2015 吴迪（子回）. All rights reserved.
//

#import "ViewModel.h"

@implementation ViewModel

- (id)init
{
    self = [super init];
    if (self)
    {
        [self awakeFromNib];
    }
    return self;
}

- (void)awakeFromNib {
    // need to change to http://localhost:8081/ReactComponents/index.ios.bundle on my own Mac, strange!
    NSString *urlString = @"http://localhost:8081/index.ios.bundle";
    NSURL *jsCodeLocation = [NSURL URLWithString:urlString];
    
    NSDictionary *props = @{@"key1" : @"initial value", @"key2" : @"initial value 2"};
    
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                        moduleName:@"SimpleApp"
                                                        initialProperties:props
                                                        launchOptions:nil];
    
    self.props = rootView.appProperties;
}

- (void)save:(NSDictionary *)props {
    self.props = props;
}
@end
