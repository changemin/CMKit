//
//  SwiftUIView.swift
//  
//
//  Created by 변경민 on 2021/05/03.
//

import SwiftUI

/**
 이미지를 늘릴 수 있게 하고, templace rendering image로 변환하여 다른 색을 입힙니다.
 
 - Parameters:
     - width: 사진의 가로
     - height: 사진의 높이
     - color: 사진 색
 
    
 # 사용예시 #
 ```
 Image("test").resizableImage(wdith: 30, heigiht: 30, .red)
 ```
 */
extension Image {
    public func resizableImage(width: CGFloat, height: CGFloat, _ color: Color) -> some View {
        self.renderingMode(.template)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: width, height: height)
            .foregroundColor(color)
    }
    public func resizableImage(width: CGFloat, _ color: Color) -> some View {
        self.renderingMode(.template)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: width)
            .foregroundColor(color)
    }
    public func resizableImage(height: CGFloat, _ color: Color) -> some View {
        self.renderingMode(.template)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: height)
            .foregroundColor(color)
    }
}
