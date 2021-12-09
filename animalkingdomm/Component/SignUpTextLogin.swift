//
//  singuptext.swift
//  BodyProgress
//
//  Created by PMStudent on 9/23/21.
//  Copyright © 2021 Mallow Technologies Private Limited. All rights reserved.
//

import SwiftUI

struct signuptext: View {
    var body: some View {
        VStack{
        HStack{
        VStack(alignment: .leading, spacing: 10) {
            Text("Login").font(.system(size: 40, weight: .heavy))
                .foregroundColor(.white)
            Text("Please sign in To Continue")
                .fontWeight(.semibold)
                .foregroundColor(.white)
        }
            
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            
        }
        .padding()
        
        }
    }
}

struct signuptext_Previews: PreviewProvider {
    static var previews: some View {
        signuptext()
    }
}
