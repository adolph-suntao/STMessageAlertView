//
//  HSMessageAlertView.h
//  HSBLD
//
//  Created by adoplh.sun on 2018/8/22.
//  Copyright © 2018年 HSYG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "DQAlertView.h"

typedef void(^finishedBlock)(void);
typedef void(^cancelBlock)(void);

@interface STMessageAlertView : NSObject

#pragma mark - 单个按钮
///单按钮 按钮标题为确定
+ (void)showMessage:(NSString *)message;
///单按钮 按钮标题为确定 带标题
+ (void)showMessage:(NSString *)message title:(NSString *)title;
///单按钮 自定义按钮标题 按钮回调
+ (void)showMessage:(NSString *)message title:(NSString *)title btnTitle:(NSString *)customTitle completion:(cancelBlock)completion;
///单按钮 自定义按钮标题 按钮回调 主题
+ (void)showThemeMessage:(NSString *)message title:(NSString *)title themeColor:(UIColor *)color btnTitle:(NSString *)customTitle completion:(cancelBlock)completion;

#pragma mark - 两个按钮
///双按钮 按钮标题默认取消 确定 右侧按钮方法回调
+ (void)showMessage:(NSString *)message otherBtncompletion:(finishedBlock)completion;
///双按钮 按钮标题默认取消 确定 带标题 右侧按钮方法回调
+ (void)showMessage:(NSString *)message title:(NSString *)title otherBtncompletion:(finishedBlock)completion;
///双按钮 按钮标题自定义 双按钮回调
+ (void)showMessage:(NSString *)message title:(NSString *)title cancelBtnTitle:(NSString *)cancelTitle otherBtnTitle:(NSString *)otherTitle cancelBtncompletion:(cancelBlock)cancelCompletion otherBtncompletion:(finishedBlock)completion;
///双按钮 按钮标题自定义 双按钮回调 内容 textAlignment 自定义
+ (void)showMessage:(NSString *)message
   msgTextAlignment:(NSTextAlignment)textAlignment
              title:(NSString *)title
     cancelBtnTitle:(NSString *)cancelTitle
      otherBtnTitle:(NSString *)otherTitle
cancelBtncompletion:(cancelBlock)cancelCompletion
 otherBtncompletion:(finishedBlock)completion;

@end
