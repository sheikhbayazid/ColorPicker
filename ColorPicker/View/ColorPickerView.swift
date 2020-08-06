//
//  ColorPickerView.swift
//  Color Picker
//
//  Created by Sheikh Bayazid on 8/6/20.
//  Copyright © 2020 Sheikh Bayazid. All rights reserved.
//

import SwiftUI
import Neumorphic

struct ColorPickerView: View {
    let cornerRadius : CGFloat = 15
    let mainColor = Neumorphic.shared.mainColor()
    let secondaryColor = Neumorphic.shared.secondaryColor()
    
    @State private var red: Double = 0
    @State private var green: Double = 0
    @State private var blue: Double = 0
    
    
    var body: some View {
        ZStack{
            Color(red: 224/255, green: 229/255, blue: 236/255)
            VStack{
                Spacer(minLength: 10)
                Text("Color Picker")
                    .font(.largeTitle)
                    .foregroundColor(.gray)
                    .padding(8)
                    .background(Color(red: 255/255, green: 255/255, blue: 255/255))
                    .cornerRadius(15)
                    .shadow(color: Color.white, radius: 7.5, x: -7.5, y: -7.5)
                    .shadow(color: Color(red: 163/255, green: 177/255, blue: 198/255), radius: 5, x: 6, y: 6)
                
                Spacer()
                
                // adding circle
                VStack {
                    Circle()
                        .frame(width: 250, height: 250)
                        .foregroundColor(Color(red: red/255, green: green/255, blue: blue/255))
                        .padding()
                        //.background(Color(red: 255/255, green: 255/255, blue: 255/255))
                        .cornerRadius(20)
                        .shadow(color: Color.white, radius: 5, x: -5, y: -5)
                        .shadow(color: Color(red: 163/255, green: 177/255, blue: 198/255), radius: 5, x: 6, y: 6)
                }.shadow(color: Color.white, radius: 5, x: -5, y: -5)
                    .shadow(color: Color(red: 163/255, green: 177/255, blue: 198/255), radius: 5, x: 6, y: 6)
                
                
                Spacer()
                VStack{
                    // adding slider
                    SliderView(value: $red, label: "Red")
                    
                    SliderView(value: $green, label: "Green")
                    
                    SliderView(value: $blue, label: "Blue")
                }
                
                Spacer()
                
            }.padding().padding()
            
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
