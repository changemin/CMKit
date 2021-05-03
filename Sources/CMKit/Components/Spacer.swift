//
//  SwiftUIView.swift
//  
//
//  Created by 변경민 on 2021/05/03.
//

import SwiftUI

/**
 세로 Spacer
 
 - Parameters:
 - amount: CGFloat, 높이
 
 # 사용예시 #
 ```
 VSpacer(10)
 ```
 */
public struct VSpacer: View {
    @State var amount: CGFloat
    
    public init(_ amount: CGFloat) {
        self._amount = .init(initialValue: amount)
    }
    
    public var body: some View {
        Spacer().frame(height: amount)
    }
}

/**
 가로 Spacer
 
 - Parameters:
 - amount: CGFloat, 너비
 
 # 사용예시 #
 ```
 HSpacer(10)
 ```
 */
public struct HSpacer: View {
    @State var amount: CGFloat
    
    public init(_ amount: CGFloat) {
        self._amount = .init(initialValue: amount)
    }
    
    public var body: some View {
        Spacer().frame(height: amount)
    }
}
