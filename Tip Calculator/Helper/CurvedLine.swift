//
//  CurvedLine.swift
//  Tip Calculator
//
//  Created by Prakhar Parakh on 27/07/24.
//

import SwiftUI

struct CurvedLine: Shape {
  func path(in rect: CGRect) -> Path {
    var path = Path()
    
    let width = rect.width
    let height: CGFloat = 150
    
    path.move(to: CGPoint(x: 0, y: height))
    
    path.addCurve(
      to: CGPoint(x: width, y: height),
      control1: CGPoint(x: width * 0.25, y: height - 50),
      control2: CGPoint(x: width * 0.75, y: height + 50)
    )
    
    path.addLine(to: CGPoint(x: width, y: 0))
    path.addLine(to: CGPoint(x: 0, y: 0))
    
    return path
  }
}
