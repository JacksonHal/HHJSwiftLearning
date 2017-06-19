//
//  HttpRequestTool.m
//  31-Swift之Block回顾
//
//  Created by meixiang02 on 2017/6/19.
//  Copyright © 2017年 好杰. All rights reserved.
//

#import "HttpRequestTool.h"

@interface HttpRequestTool ()

@property (nonatomic, copy)void (^failedBlock)(NSString *);

@end

@implementation HttpRequestTool

//模仿网络请求的过程
- (void)requestData:(void (^)(NSString *))successBlock {
    
    //1.发送网络异步请求
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        
        NSLog(@"已经发送了网络请求:%@",[NSThread currentThread]);
        
        //2.回到主线程
        dispatch_sync(dispatch_get_main_queue(), ^{
            NSLog(@"回到主线程:%@",[NSThread currentThread]);
            
            //3.将获取到的数据回调出去
            successBlock(@"Hellow world!");
        });
        
    });
}

//模仿制造循环引用
- (void)requestDataFailed:(void (^)(NSString *))failedBlock {
    //1.发送网络异步请求
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        
        //HttpRequestTool对象拥有了block
        self.failedBlock = failedBlock;
        
        NSLog(@"已经发送了网络请求:%@",[NSThread currentThread]);
        
        //2.回到主线程
        dispatch_sync(dispatch_get_main_queue(), ^{
            NSLog(@"回到主线程:%@",[NSThread currentThread]);
            
            //3.将获取到的数据回调出去
            failedBlock(@"获取数据失败");
        });
        
    });
}
@end
