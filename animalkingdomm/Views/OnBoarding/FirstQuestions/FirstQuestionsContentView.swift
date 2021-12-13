//
//  ContentView.swift
//  Animal
//
//  Created by PMStudent on 11/9/21.
//

import SwiftUI

struct FirstQuestionContentView: View {

    @State var SecondViews = false
    @State var ThirdViews = false
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
        NavigationView {
            ZStack {
                skyBlue.ignoresSafeArea(.all)
                VStack {
                    
                    Text("Are You Looking For / Found a Missing Pet?")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .offset(y: -130)
                    
//                    NavigationLink(destination: animalkingdomm.SecondViews(show: $show), isActive: $SecondViews) { EmptyView() }
                    
                    VStack {
                        Button(action: {
//                            SecondViews = true
                            show = "Second"
                        }) {
                            
                            Text("YES")
                                .foregroundColor(.white)
                        }
                        .padding(.vertical, 17 )
                        .padding(.horizontal, 90)
                        .background(lightBlue)
                        .cornerRadius(40)
                        .padding(20)
                        
                        
                        Button(action: {
//                            ThirdViews = true
                            show = "Third"
                        }) {
                            Text("NO")
                                .foregroundColor(.white)
                        }
                        .padding(.vertical, 17 )
                        .padding(.horizontal, 90)
                        .background(darkBlue)
                        .cornerRadius(40)
                        .padding(20)
                    }
                }
                .frame(width: screenWidth, height: screenHeight)
            }
        }
    }
}

