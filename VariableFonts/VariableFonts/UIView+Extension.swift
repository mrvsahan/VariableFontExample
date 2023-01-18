//
//  UIView+Extension.swift
//  VariableFonts
//
//  Created by Merve Şahan on 12.01.23.
//

import UIKit
import SwiftUI

public enum FontVariations: Int, CustomStringConvertible {
    case weight = 2003265652
    case width = 2003072104
    case opticalSize = 1869640570
    case grad = 1196572996
    case slant = 1936486004
    case xtra = 1481921089
    case xopq = 1481592913
    case yopq = 1498370129
    case ytlc = 1498696771
    case ytuc = 1498699075
    case ytas = 1498693971
    case ytde = 1498694725
    case ytfi = 1498695241

    public var description: String {
        switch self {
        case .weight:
            return "Weight"
        case .width:
            return "Width"
        case .opticalSize:
            return "Optical Size"
        case .grad:
            return "Grad"
        case .slant:
            return "Slant"
        case .xtra:
            return "Xtra"
        case .xopq:
            return "Xopq"
        case .yopq:
            return "Yopq"
        case .ytlc:
            return "Ytlc"
        case .ytuc:
            return "Ytuc"
        case .ytas:
            return "Ytas"
        case .ytde:
            return "Ytde"
        case .ytfi:
            return "Ytfi"
        }
    }

}

public extension Font {
    static func variableFont(_ size: CGFloat, axes: [Int: Int] = [:]) -> Font {
        let uiFontDescriptor = UIFontDescriptor(fontAttributes: [.name: "Roboto Flex", kCTFontVariationAttribute as UIFontDescriptor.AttributeName: axes])
        let newUIFont = UIFont(descriptor: uiFontDescriptor, size: size)
        return Font(newUIFont)
    }
}
