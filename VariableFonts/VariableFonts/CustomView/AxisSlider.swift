//
//  Slider.swift
//  VariableFonts
//
//  Created by Merve Şahan on 14.01.23.
//

import SwiftUI

class SliderModel: ObservableObject {
    @Published var sliderValues: [AxisSlider] = FontVariants.getValues()
}

struct AxisSlider: Identifiable {
    var id = UUID()
    var minValue: Float
    var maxValue: Float
    var currentValue: Float
    var axisName: FontVariations
}

class FontVariants {
    static func getValues() -> [AxisSlider] {
        return [ AxisSlider(minValue: 80, maxValue: 800, currentValue: 300.0, axisName: .weight),
                 AxisSlider(minValue: 25, maxValue: 151, currentValue: 40.0, axisName: .width),
                 AxisSlider(minValue: 8, maxValue: 144, currentValue: 60.0, axisName: .opticalSize),
                 AxisSlider(minValue: -200, maxValue: 150, currentValue: 50.0, axisName: .grad),
                 AxisSlider(minValue: -10, maxValue: 0, currentValue: 0, axisName: .slant),
                 AxisSlider(minValue: 323, maxValue: 603, currentValue: 400, axisName: .xtra),
                 AxisSlider(minValue: 27, maxValue: 175, currentValue: 50, axisName: .xopq),
                 AxisSlider(minValue: 25, maxValue: 135, currentValue: 50, axisName: .yopq),
                 AxisSlider(minValue: 416, maxValue: 570, currentValue: 490, axisName: .ytlc),
                 AxisSlider(minValue: 528, maxValue: 760, currentValue: 700, axisName: .ytuc),
                 AxisSlider(minValue: 649, maxValue: 854, currentValue: 750, axisName: .ytas),
                 AxisSlider(minValue: -305, maxValue: -98, currentValue: -250, axisName: .ytde),
                 AxisSlider(minValue: 560, maxValue: 788, currentValue: 600, axisName: .ytfi)
        ]
    }
}
