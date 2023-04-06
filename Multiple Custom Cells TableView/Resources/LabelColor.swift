//
//  Fonts.swift
//  Multiple Custom Cells TableView
//
//  Created by Yusuf Karan on 6.04.2023.
//

import UIKit

enum LabelColor {
    
    case boldColor
    case lightColor
    
    var uiColorCode: UIColor {
        switch self {
        case .boldColor:
            return UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        case .lightColor:
            return UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        }
    }
    
}
