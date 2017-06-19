//
//  ViewController.m
//  31-Swift之Block回顾
//
//  Created by meixiang02 on 2017/6/19.
//  Copyright © 2017年 好杰. All rights reserved.
//

#import "ViewController.h"
#import "HttpRequestTool.h"
@interface ViewController ()

@property (nonatomic, strong) HttpRequestTool       *request;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.request = [[HttpRequestTool alloc] init];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    
    /***************************************
     **    不要看到block就认为会产生循环引用   **
     **                                   **
     ***************************************/
    
    
    //这里用self不会造成循环引用
    /*
     因为此时  block拥有了控制器对象 , 控制器对象拥有了HttpRequestTool对象 , 但是HttpRequestTool对象没有拥有block;  通过dealloc来验证一下
     */
    [self.request requestData:^(NSString *jsonData) {
        NSLog(@"回调成功后拿到的json数据:%@",jsonData);
        
        self.view.backgroundColor = [UIColor blueColor];
    }];
    
    //这里用self会造成循环引用  delloc不会调用
    /*
     因为此时  block拥有了控制器对象 , 控制器对象拥有了HttpRequestTool对象 , HttpRequestTool对象拥有block(self.failedBlock = failedBlock;);  通过dealloc来验证一下
     */
    //解决循环引用的方法
    __weak ViewController *weakSelf = self;
    [self.request requestDataFailed:^(NSString *jsonData) {
        NSLog(@"回调失败后的结果:%@",jsonData);
        
        weakSelf.view.backgroundColor = [UIColor purpleColor];
    }];
}

- (void)dealloc
{
    NSLog(@"ViewController-----dealloc");
}

@end
