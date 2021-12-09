//
//  ContentView.swift
//  animalkingdomm
//
//  Created by PMStudent on 11/9/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isWalktrhoughViewShowing = true
    @EnvironmentObject var viewModel: AppViewModel

    var body: some View {
        
        
       
            Group {
                if isWalktrhoughViewShowing {
                   WalkthroughView(isWalktrhoughViewShowing:
                                    $isWalktrhoughViewShowing)
                } else {
    FirstQuestionContentView()
                    
                }
            }}
        }
    
        
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
