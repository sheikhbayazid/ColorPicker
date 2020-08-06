//
//  SliderView.swift
//  Color Picker
//
//  Created by Sheikh Bayazid on 8/6/20.
//  Copyright © 2020 Sheikh Bayazid. All rights reserved.
//

import SwiftUI
import Neumorphic


struct SliderView: View {
    let cornerRadius : CGFloat = 15
    let mainColor = Neumorphic.shared.mainColor()
    let secondaryColor = Neumorphic.shared.secondaryColor()
    
    @Binding var value:Double
    var label: String
    
    
    
    var body: some View {
        VStack {
            VStack{
                
                Slider(value: $value, in: 0...255, step: 1)
                    .padding(10)
                    .background(Color(red: 255/255, green: 255/255, blue: 255/255))
                    .cornerRadius(20)
                    .shadow(color: Color.white, radius: 5, x: -5, y: -5)
                    .shadow(color: Color(red: 163/255, green: 177/255, blue: 198/255), radius: 6, x: 6, y: 6)
                
                
                
            }.shadow(color: Color.white, radius: 5, x: -5, y: -5)
                .shadow(color: Color(red: 163/255, green: 177/255, blue: 198/255), radius: 4, x: 5, y: 5)
            
            
            Text("\(label): \(Int(value))")
                .padding(9)
                .foregroundColor(.gray)
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: Binding.constant(0), label: "Label").padding(25)
    }
}
