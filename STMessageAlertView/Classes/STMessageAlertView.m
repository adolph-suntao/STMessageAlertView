//
//  HSMessageAlertView.m
//  HSBLD
//
//  Created by adoplh.sun on 2018/8/22.
//  Copyright © 2018年 HSYG. All rights reserved.
//

#import "STMessageAlertView.h"
#import "DQAlertView.h"

@implementation STMessageAlertView

///单按钮 默认取消按钮标题为确定
+ (void)showMessage:(NSString *)message {
    dispatch_async(dispatch_get_main_queue(), ^{
        DQAlertView * alertView = [[DQAlertView alloc] initWithTitle:nil message:message cancelButtonTitle:@"确定" otherButtonTitle:nil];
        alertView.messageLabel.font = [UIFont systemFontOfSize:15];
        [alertView show];
    });
}

///单按钮 按钮标题为确定 带标题
+ (void)showMessage:(NSString *)message title:(NSString *)title {
    dispatch_async(dispatch_get_main_queue(), ^{
        DQAlertView * alertView = [[DQAlertView alloc] initWithTitle:title message:message cancelButtonTitle:@"确定" otherButtonTitle:nil];
        alertView.messageLabel.font = [UIFont systemFontOfSize:15];
        [alertView show];
    });
}

///单按钮 自定义按钮标题 按钮回调
+ (void)showMessage:(NSString *)message title:(NSString *)title btnTitle:(NSString *)customTitle completion:(cancelBlock)completion {
    dispatch_async(dispatch_get_main_queue(), ^{
        DQAlertView * alertView = [[DQAlertView alloc] initWithTitle:title message:message cancelButtonTitle:customTitle otherButtonTitle:nil];
        alertView.messageLabel.font = [UIFont systemFontOfSize:15];
        alertView.cancelButtonAction = ^{
            if (completion) {
                completion();
            }
        };
        [alertView show];
    });
}

///单按钮 自定义按钮标题 按钮回调 主题
+ (void)showThemeMessage:(NSString *)message title:(NSString *)title themeColor:(UIColor *)color btnTitle:(NSString *)customTitle completion:(cancelBlock)completion {
    dispatch_async(dispatch_get_main_queue(), ^{
        DQAlertView * alertView = [[DQAlertView alloc] initWithTitle:title message:message cancelButtonTitle:customTitle otherButtonTitle:nil];
        alertView.messageLabel.font = [UIFont systemFontOfSize:15];
        [alertView.cancelButton setBackgroundColor:[UIColor colorWithRed:0/255 green:0/255 blue:0/255 alpha:0.6]];
        alertView.cancelButtonAction = ^{
            if (completion) {
                completion();
            }
        };
        [alertView show];
    });
}

///双按钮 按钮内容默认取消 确定
+ (void)showMessage:(NSString *)message otherBtncompletion:(finishedBlock)completion {
    dispatch_async(dispatch_get_main_queue(), ^{
        DQAlertView * alertView = [[DQAlertView alloc] initWithTitle:nil message:message cancelButtonTitle:@"取消" otherButtonTitle:@"确定"];
        alertView.messageLabel.font = [UIFont systemFontOfSize:15];
        [alertView show];
        alertView.otherButtonAction = ^{
            if (completion) {
                completion();
            }
        };
    });
}

+ (void)showMessage:(NSString *)message title:(NSString *)title otherBtncompletion:(finishedBlock)completion {
    dispatch_async(dispatch_get_main_queue(), ^{
        DQAlertView * alertView = [[DQAlertView alloc] initWithTitle:title message:message cancelButtonTitle:@"取消" otherButtonTitle:@"确定"];
        alertView.messageLabel.font = [UIFont systemFontOfSize:15];
        [alertView.cancelButton setTitleColor:[UIColor colorWithRed:21/255 green:21/255 blue:24/255 alpha:1] forState:UIControlStateNormal];
        alertView.cancelButton.titleLabel.font = [UIFont systemFontOfSize:17];
        [alertView show];
        alertView.otherButtonAction = ^{
            if (completion) {
                completion();
            }
        };
    });
}

///双按钮 按钮标题自定义 双按钮回调 内容居中显示
+ (void)showMessage:(NSString *)message
              title:(NSString *)title
     cancelBtnTitle:(NSString *)cancelTitle
      otherBtnTitle:(NSString *)otherTitle
cancelBtncompletion:(cancelBlock)cancelCompletion
 otherBtncompletion:(finishedBlock)completion {
    dispatch_async(dispatch_get_main_queue(), ^{
        DQAlertView * alertView = [[DQAlertView alloc] initWithTitle:title message:message cancelButtonTitle:cancelTitle otherButtonTitle:otherTitle];
        alertView.messageLabel.font = [UIFont systemFontOfSize:17];
        [alertView.cancelButton setTitleColor:[UIColor colorWithRed:0/255 green:0/255 blue:0/255 alpha:0.6] forState:UIControlStateNormal];
        
        alertView.cancelButtonAction = ^{
            if (cancelCompletion) {
                cancelCompletion();
            }
        };
        alertView.otherButtonAction = ^{
            if (completion) {
                completion();
            }
        };
        [alertView show];
    });
}

///双按钮 按钮标题自定义 双按钮回调 内容 textAlignment 自定义
+ (void)showMessage:(NSString *)message
   msgTextAlignment:(NSTextAlignment)textAlignment
              title:(NSString *)title
     cancelBtnTitle:(NSString *)cancelTitle
      otherBtnTitle:(NSString *)otherTitle
cancelBtncompletion:(cancelBlock)cancelCompletion
 otherBtncompletion:(finishedBlock)completion {
    dispatch_async(dispatch_get_main_queue(), ^{
        DQAlertView * alertView = [[DQAlertView alloc] initWithTitle:title message:message cancelButtonTitle:cancelTitle otherButtonTitle:otherTitle];
        alertView.messageLabel.font = [UIFont systemFontOfSize:15];
        alertView.messageLabel.textAlignment = textAlignment;
        [alertView.cancelButton setTitleColor:[UIColor colorWithRed:0/255 green:0/255 blue:0/255 alpha:0.6] forState:UIControlStateNormal];
        
        alertView.cancelButtonAction = ^{
            if (cancelCompletion) {
                cancelCompletion();
            }
        };
        alertView.otherButtonAction = ^{
            if (completion) {
                completion();
            }
        };
        [alertView show];
    });
}
@end
