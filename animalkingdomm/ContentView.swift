//
//  ContentView.swift
//  animalkingdomm
//
//  Created by PMStudent on 11/9/21.
//

import SwiftUI

struct ContentView: View {
    @State public var isWalktrhoughViewShowing = true
    @EnvironmentObject var viewModel: AppViewModel
//    @Binding public var show: String
    var body: some View {
        
        
       
            Group {
                ZStack {
//                if isWalktrhoughViewShowing == true {
//                   WalkthroughView(isWalktrhoughViewShowing:
//                                    $isWalktrhoughViewShowing)
//
//                } else {
                    Main(isWalktrhoughViewShowing: $isWalktrhoughViewShowing)
                    
//                }
                }
            }}
        }
    
        
    


//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        SignInView()
//    }
//}
