//
//  HttpRequestTool.h
//  31-Swift之Block回顾
//
//  Created by meixiang02 on 2017/6/19.
//  Copyright © 2017年 好杰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HttpRequestTool : NSObject



//传一个block参数
- (void)requestData:(void(^)(NSString *jsonData))successBlock;

- (void)requestDataFailed:(void(^)(NSString *jsonData))failedBlock;

@end
