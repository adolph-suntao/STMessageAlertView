//
//  YJMessageAlertView.swift
//  YUANJI
//
//  Created by 孙涛 on 2020/6/17.
//  Copyright © 2020 孙涛. All rights reserved.
//

import UIKit
import STExtensionKit

struct YJMessageAlertView {

    /// 弹窗展示
    /// - Parameters:
    ///   - title: 标题
    ///   - message: 内容
    ///   - cancelBtnTitle: 取消按钮 默认 取消
    ///   - otherBtnTitle: 确定按钮 默认 确定
    ///   - cancelBtnCompletion: 取消按钮回调
    ///   - otherBtnCompletion: 确定按钮回调
    static func showMessage(title: String?,
                            message: String,
                            cancelBtnTitle: String? = "取消",
                            otherBtnTitle: String? = "确定",
                            cancelBtnCompletion: (()->Void)?,
                            otherBtnCompletion: (()->Void)?)  {
        let alertView = DQAlertView(title: title, message: message, cancelButtonTitle: cancelBtnTitle, otherButtonTitle: otherBtnTitle)
    
        /// 字体颜色
        alertView?.cancelButton.setTitleColor(UIColor(hexRGB: 0x717171), for: .normal)
        alertView?.otherButton.setTitleColor(UIColor(hexRGB: 0x4180FF), for: .normal)
        alertView?.messageLabel.textColor = UIColor(hexRGB: 0x151518)
        
        /// 字体大小
        alertView?.titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        alertView?.cancelButton.titleLabel?.font = UIFont.systemFont(ofSize: 17)

        alertView?.otherButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        alertView?.messageLabel.font = UIFont.systemFont(ofSize: 15)

        alertView?.cancelButtonAction = {
            cancelBtnCompletion?()
        }
        alertView?.otherButtonAction = {
            otherBtnCompletion?()
        }
        
        alertView?.show()
    }
    
    static func showMessage(title: String?,
                            message: String,
                            leftBtnTitle: String? = "取消",
                            rightBtnTitle: String? = "确定",
                            leftColor: UIColor = UIColor(hexRGB: 0x717171),
                            rightColor: UIColor = UIColor(hexRGB: 0x4180FF),
                            leftBtnCompletion: (()->Void)?, rightBtnCompletion: (()->Void)?)  {
        let alertView = DQAlertView(title: title, message: message, cancelButtonTitle: leftBtnTitle, otherButtonTitle: rightBtnTitle)
    
        /// 字体颜色
        alertView?.cancelButton.setTitleColor(leftColor, for: .normal)
        alertView?.otherButton.setTitleColor(rightColor, for: .normal)
    
        alertView?.messageLabel.textColor = UIColor(hexRGB: 0x151518)
        alertView?.separatorColor = UIColor(hexRGB: 0xECECEC)
        alertView?.titleBottomPadding = 15
        alertView?.messageBottomPadding = 20
        /// 字体大小
        alertView?.titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
//        alertView?.cancelButton.titleLabel?.font = UIFont(name: "PingFangSC-Medium", size: 17)
        
        alertView?.cancelButton.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        alertView?.otherButton.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        alertView?.messageLabel.font = UIFont.systemFont(ofSize: 15)
        
        alertView?.cancelButtonAction = {
            leftBtnCompletion?()
        }
        alertView?.otherButtonAction = {
            rightBtnCompletion?()
        }
        
        alertView?.show()
    }

}
