//
//  SwiftUIView.swift
//  
//
//  Created by 변경민 on 2021/05/03.
//

import SwiftUI

/**
 노치가 있는 모델은 True, 아니면 False를 가집니다.
 
 - returns: 노치 있으면 True, 아니면 False

 ```
 if hasNotch {
 
 }
 ```
 */
public var hasNotch: Bool = UIDevice.current.hasNotch

extension UIDevice {
    var hasNotch: Bool {
        let bottom = UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0
        return bottom > 0
    }
}
