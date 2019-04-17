//
//  URL_Roueter.h
//  JLRouterDemo
//
//  Created by 于朝盼 on 2019/3/28.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef void (^componentBlock) (NSDictionary *param);

@interface URL_Roueter : NSObject

+ (instancetype)sharedInstance;

- (void)registerURLPattern:(NSString *)urlPattern toHandler:(componentBlock)blk;

- (void)openURL:(NSString *)url withParam:(id)param;

@end

NS_ASSUME_NONNULL_END
