//
//  ContentView.swift
//  VariableFonts
//
//  Created by Merve Şahan on 11.01.23.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var fontVariationsData: SliderModel = SliderModel()
    @State private var axisValue: [Int:Int] = [:]

    var body: some View {
        VStack {
            Text("Variable Fonts Example Text")
                .font(.variableFont( 24.0,
                                     axis: axisValue))
        }.padding(.vertical)
        ScrollView {
            VStack(spacing: 16) {
                ForEach(fontVariationsData.sliderValues) { slider in
                    SliderView(value: slider.currentValue,
                               axisValue: $axisValue,
                               axisName: slider.axisName,
                               minValue: slider.minValue,
                               maxValue: slider.maxValue)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
