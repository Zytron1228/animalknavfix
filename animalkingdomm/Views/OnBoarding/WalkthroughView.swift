//
//  WalkthroughView.swift
//  screen
//
//  Created by PMStudent on 11/10/21.
//

import SwiftUI

struct WalkthroughView: View {
    @State private var selection = 0
    @Binding var isWalktrhoughViewShowing: Bool
    @Binding public var show: String
    public var scalingVars = ScalingVars()
    var body: some View {
        ZStack {
            GradientView()
            
            VStack{
                PageTabView(selection: $selection)
                ButtonsView(selection: $selection)
                AccountButtonView(iswalktrhoughViewShowing: $isWalktrhoughViewShowing, show: $show)
                
            }
            .frame(width: scalingVars.screenWidth + 15, height: scalingVars.screenHeight - 135)
        }
        .transition(.move(edge: .bottom))
    }
    
}

//struct WalkthroughView_Previews: PreviewProvider {
//    static var previews: some View {
//        WalkthroughView(isWalktrhoughViewShowing: Binding.constant(true))
//    }
//}
