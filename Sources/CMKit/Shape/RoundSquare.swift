//
//  SwiftUIView.swift
//  
//
//  Created by 변경민 on 2021/05/03.
//

import SwiftUI

/**
 특정 모서리만 cornerRadius가 적용된 Square Shpe를 반환합니다.
 
 - Parameters:
    - topLeft: 왼쪽 위
    - topRight: 오른쪽 위
    - bottomLeft: 왼쪽 아래
    - bottonRight: 오른쪽 아래
 
 
 - returns: 부분 cornerRadius가 적용된 Shape
 
 # 사용예시 #
 ```
 RoundSquare(topLeft: 10, bottomRight: 10)
 ```
 */
public struct RoundSquare: Shape {
    public var topLeft: CGFloat = 0.0
    public var topRight: CGFloat = 0.0
    public var bottomLeft: CGFloat = 0.0
    public var bottomRight: CGFloat = 0.0
    public init(topLeft: CGFloat = 0, topRight: CGFloat = 0, bottomLeft: CGFloat = 0, bottomRight: CGFloat = 0) {
        self.topLeft = topLeft
        self.topRight = topRight
        self.bottomLeft = bottomLeft
        self.bottomRight = bottomRight
    }
    public func path(in rect: CGRect) -> Path {
        var path = Path()

        let width = rect.size.width
        let height = rect.size.height

        // Make sure we do not exceed the size of the rectangle
        let topRight = min(min(self.topRight, height/2), width/2)
        let topLeft = min(min(self.topLeft, height/2), width/2)
        let bottomLeft = min(min(self.bottomLeft, height/2), width/2)
        let bottomRight = min(min(self.bottomRight, height/2), width/2)

        path.move(to: CGPoint(x: width / 2.0, y: 0))
        path.addLine(to: CGPoint(x: width - topRight, y: 0))
        path.addArc(center: CGPoint(x: width - topRight, y: topRight), radius: topRight,
                    startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)

        path.addLine(to: CGPoint(x: width, y: height - bottomRight))
        path.addArc(center: CGPoint(x: width - bottomRight, y: height - bottomRight), radius: bottomRight,
                    startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)

        path.addLine(to: CGPoint(x: bottomLeft, y: height))
        path.addArc(center: CGPoint(x: bottomLeft, y: height - bottomLeft), radius: bottomLeft,
                    startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)

        path.addLine(to: CGPoint(x: 0, y: topLeft))
        path.addArc(center: CGPoint(x: topLeft, y: topLeft), radius: topLeft,
                    startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)

        return path
    }
}
