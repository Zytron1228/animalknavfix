//
//  File.swift
//  Animal
//
//  Created by PMStudent on 11/15/21.
//

import SwiftUI

struct ThirdViews: View {
    
    let skyBlue = Color("skyBlue")
    
    var body: some View {
        ZStack {
            skyBlue.ignoresSafeArea(.all)
            
            Text("This is third view")
                .navigationBarTitle("ThirdView", displayMode: .inline)
        }
    }
}

struct ThirdViews_Previews: PreviewProvider {
    static var previews: some View {
        ThirdViews()
    }
}


