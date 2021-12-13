//
//  Forms.swift
//  PetRescueApp
//
//  Created by PMStudent on 11/23/21.
//

import SwiftUI //AAA AAAAAAAAAAAA AAAAAAAAA AA AAAÆAAA AAAAA THE AAAAAA AAAAAAAAA AAAA

struct Forms: View {
    let color1 = Color.blue
    @Binding public var show: String
    var body: some View {
        ZStack {
            color1.ignoresSafeArea(.all)
            VStack {
                Spacer()
                Button(action: {
                    show = "Lost" //brings you to the lost pet form
                }) {
                    Text("I Have Lost A Pet")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.yellow)
                        .bold()
                }
                Spacer()
                Button(action: {
                    show = "Found" //brings you to the found pet form
                }) {
                    Text("I have Found A Pet")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.yellow)
                        .bold()
                }
                Spacer()
            }
        }
    }
}

//struct Forms_Previews: PreviewProvider { //wont work so commented out
//    static var previews: some View {
//        Forms(show: $show)
//    }
//}
