//
//  URL_Roueter.m
//  JLRouterDemo
//
//  Created by 于朝盼 on 2019/3/28.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import "URL_Roueter.h"

@interface URL_Roueter()
@property (nonatomic, strong) NSMutableDictionary *cache;
@end

@implementation URL_Roueter

+ (instancetype)sharedInstance
{
    static URL_Roueter *router;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        router = [[URL_Roueter alloc] init];
    });
    return router;
}

-(NSMutableDictionary *)cache{
    if (!_cache) {
        _cache = [NSMutableDictionary new];
    }
    return _cache;
}

- (void)registerURLPattern:(NSString *)urlPattern toHandler:(componentBlock)blk {

    [self.cache setObject:blk forKey:urlPattern];
}

- (void)openURL:(NSString *)url withParam:(id)param {
    
    componentBlock blk = [self.cache objectForKey:url];
    if (blk) blk(param);
}
@end
