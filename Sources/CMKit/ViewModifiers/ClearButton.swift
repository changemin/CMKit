//
//  SwiftUIView.swift
//  
//
//  Created by 변경민 on 2021/05/03.
//

import SwiftUI

/**
 TextField에 Clear Button을 추가합니다.
 
 - Parameters:
 - text: text 바인딩
 
 # 사용예시 #
 ```
 TextField("ID", text: $id).modifier(ClearButton($id))
 ```
 */
public struct ClearButton: ViewModifier {
    @Binding var text: String

    public func body(content: Content) -> some View {
        ZStack(alignment: .trailing) {
            content
            if !text.isEmpty {
                Button(action: {
                    self.text = ""
                }) {
                    Image(systemName: "xmark")
                        .foregroundColor(Color("gray6"))
                        .font(.system(size: 15))
                        .zIndex(1)
                }
                .padding(.trailing, 12)
            }
        }
    }
}
