//
//  SliderView.swift
//  VariableFonts
//
//  Created by Merve Şahan on 13.01.23.
//

import SwiftUI

struct SliderView: View {
    @State var value: Float = .zero
    @Binding var axisValue: [Int:Int]

    var axisName: FontVariations
    var minValue: Float
    var maxValue: Float

    var body: some View {
        VStack {
            Text("\(axisName.description) : \(Int(value))")
            Slider(value: $value, in: minValue...maxValue, step: 1) {
                Text("Value")
            } minimumValueLabel: {
                Text("\(Int(minValue))")
            } maximumValueLabel: {
                Text("\(Int(maxValue))")
            }.onChange(of: value) { newValue in
                axisValue[axisName.rawValue] = Int(newValue)
            }
        }
        .padding([.all], 8)
        .background(Color(hue: 0.588, saturation: 0.363, brightness: 0.969))
        .cornerRadius(20)
    }
}
