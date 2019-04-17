//
//  AViewController.m
//  JLRouterDemo
//
//  Created by 于朝盼 on 2019/3/28.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import "AViewController.h"
#import "URL_Roueter.h"
#import "JLRoutes.h"

@interface AViewController ()

@end

@implementation AViewController

+ (void)load {
    
}
- (void)viewDidLoad {
    [super viewDidLoad];

//    [[URL_Roueter sharedInstance] registerURLPattern:@"JLRouter://AViewController" toHandler:^(NSDictionary * _Nonnull param) {
//
//    }];
    
    [[JLRoutes routesForScheme:@""] addRoute:@"" handler:^BOOL(NSDictionary<NSString *,id> * _Nonnull parameters) {
        
        
        return YES;
    }];
}


@end
