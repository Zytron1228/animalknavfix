//
//  AccountButtonView.swift
//  screen
//
//  Created by PMStudent on 11/11/21.
//

import SwiftUI

struct AccountButtonView: View {
    @Binding var iswalktrhoughViewShowing: Bool
    @Binding public var show: String
    
    var body: some View {
        Button(action: {
            show = "FirstQuestion"
            dismiss() }, label: {
            Text("Sign Up")
                .foregroundColor(.white)
                .underline()
        })
    }
    
    func dismiss() {
        withAnimation {
            iswalktrhoughViewShowing.toggle()
        }
    }
}

//struct AccountButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        AccountButtonView(iswalktrhoughViewShowing: Binding.constant(true), show: $show)
//    }
//}
