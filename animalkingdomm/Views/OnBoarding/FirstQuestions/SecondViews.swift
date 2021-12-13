//
//  SecondViews.swift
//  Animal
//
//  Created by PMStudent on 11/15/21.
//

import SwiftUI

struct SecondViews: View {
    
    @State var buttonState = false
    @State var SecondViews = false
    @State var SignUpView = false
    @Binding public var show: String
    
    let skyBlue = Color("skyBlue")
    let darkBlue = Color("darkBlue")
    let lightBlue = Color("lightBlue")
    
    //     Screen Width
    public var screenWidth: CGFloat {
        return UIScreen.main.bounds.width - 25
    }
    
    // Screen Height
    public var screenHeight: CGFloat {
        return UIScreen.main.bounds.height - 25
    }
    
    var body: some View {
        ZStack {
            skyBlue.ignoresSafeArea(.all)
            
//            NavigationLink(destination: animalkingdomm.SignUpView(show: $show), isActive: $SignUpView) { EmptyView() }
            
            VStack {
                Text("Which One?")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .offset(y: -130)
                VStack {
                    Button(action: {
//                        SignUpView = true
                        show = "SignUpView"
                    }) {
                        
                        Text("Lost")
                            .foregroundColor(.white)
                    }
                    .padding(.vertical, 17 )
                    .padding(.horizontal, 90)
                    .background(lightBlue)
                    .cornerRadius(40)
                    .padding(20)
                    
                    Button(action: {
                        show = "SignUpView"
                        
                    }) {
                        Text("Found")
                            .foregroundColor(.white)
                    }
                    .padding(.vertical, 17 )
                    .padding(.horizontal, 85)
                    .background(darkBlue)
                    .cornerRadius(40)
                    .padding(20)
                    
                }
            }
            .frame(width: screenWidth, height: screenHeight)
        }
    }
}
//struct SecondViews_Previews: PreviewProvider {
//    static var previews: some View {
//        SecondViews()
//    }
//}
