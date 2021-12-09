

import SwiftUI

struct SignInView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @Namespace var animation
    static let screenHeight = UIScreen.main.bounds.size.height
    var body: some View {
        
        
        NavigationView {
            ZStack {
                Color.blue.edgesIgnoringSafeArea(.all)

                VStack(spacing: 20) {
                    //add weight lifting logo, change button design
                    VStack{

                        signuptext()
                        
                        
                        FormField(value: $email, icon: "envelope", placeholder: "Email", isSecure: false,animation: animation)
                            .padding(.top, 5)
                        FormField(value: $password, icon: "lock", placeholder: "Password", isSecure: true,animation: animation)
                            .padding(.top, 5)
                        
                        Button(action: {}){
                            Text("Sign In").font(.title).modifier(ButtonModifiers())
                            
                        }.padding(.top).padding(.top)
                        
                        
               
                            
                            
                                NavigationLink(destination: SignUpView()) {
                                    Text("New").font(.system(size: 15))
                                        .opacity(1)
                                        .foregroundColor(.white)
                                        .padding(.top)
                                        .padding(.top)

                                    
                                }
                            
                        
                        
                    }.padding()
                }
            }
        }
        
    }
    
}

struct SignInView_Previews: PreviewProvider {
  static var previews: some View {
    SignInView()
        .previewDevice("iPhone 12")
  }
}
