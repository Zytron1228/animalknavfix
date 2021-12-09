//
//  ContentView.swift
//  screen
//
//  Created by PMStudent on 11/10/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isWalktrhoughViewShowing = true
    
    var body: some View {
        Group {
            if isWalktrhoughViewShowing {
               WalkthroughView(isWalktrhoughViewShowing:
                                $isWalktrhoughViewShowing)
            } else {
                Text("Hello World")
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
