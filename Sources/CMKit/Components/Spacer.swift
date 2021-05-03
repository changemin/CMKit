//
//  SwiftUIView.swift
//  
//
//  Created by 변경민 on 2021/05/03.
//

import SwiftUI

public struct VSpacer: View {
    @State var amount: CGFloat
    
    public init(_ amount: CGFloat) {
        self._amount = .init(initialValue: amount)
    }
    
    public var body: some View {
        Spacer().frame(height: amount)
    }
}

public struct HSpacer: View {
    @State var amount: CGFloat
    
    public init(_ amount: CGFloat) {
        self._amount = .init(initialValue: amount)
    }
    
    public var body: some View {
        Spacer().frame(height: amount)
    }
}
