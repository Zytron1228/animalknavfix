//
//  AccountButtonView.swift
//  screen
//
//  Created by PMStudent on 11/11/21.
//

import SwiftUI

struct AccountButtonView: View {
    @Binding var iswalktrhoughVieShowing: Bool
    
    var body: some View {
        Button(action: { dismiss() }, label: {
            Text("Sign Up")
                .foregroundColor(.white)
                .underline()
        })
    }
    
    func dismiss() {
        withAnimation {
            iswalktrhoughVieShowing.toggle()
        }
    }
}

struct AccountButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AccountButtonView(iswalktrhoughVieShowing: Binding.constant(true))
    }
}
