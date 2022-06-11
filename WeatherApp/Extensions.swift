//
//  Extensions.swift
//  WeatherApp
//
//  Created by Sanjana Dasadia.
//

import Foundation
import SwiftUI

extension Double {
    // just a rounding function up to 2 decimal place
    func roundDouble() ->String {
        return String(format: "%.0f", self)
    }
    
}


extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
            clipShape(RoundedCorner(radius: radius, corners: corners))
        }
}

// Custom RoundedCorner shape used for cornerRadius extension above
struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
