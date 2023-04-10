//
//  LabelFont.swift
//  Multiple Custom Cells TableView
//
//  Created by Yusuf Karan on 6.04.2023.
//

import UIKit


enum FontTemp {
    case sBold
    case sMedium
    case sLight
    case ssLight
    
    var uiFontCode: UIFont {
        switch self {
        case .sBold:
            return .systemFont(ofSize: 16, weight: .bold)
        case .sMedium:
            return .systemFont(ofSize: 16, weight: .medium)
        case .sLight:
            return .systemFont(ofSize: 16, weight: .light)
        case .ssLight:
            return .systemFont(ofSize: 12, weight: .light)
        }
    }
}
