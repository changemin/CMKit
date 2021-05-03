//
//  SwiftUIView.swift
//  
//
//  Created by 변경민 on 2021/05/03.
//

import SwiftUI

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
