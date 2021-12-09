//
//  ButtonModifiers.swift
//  BodyProgress
//
//  Created by PMStudent on 9/20/21.
//  Copyright © 2021 Mallow Technologies Private Limited. All rights reserved.
//

import SwiftUI

struct ButtonModifiers: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(minWidth: 0, maxWidth: .infinity)
            .frame(height:20)
            .padding()
            
            .foregroundColor(.white)
            .font(.system(size: 10, weight: .bold))
            .background(LinearGradient(gradient: Gradient(colors: [Color("buttoncolor"), Color("buttoncolor")]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(40.0)
    }
}
