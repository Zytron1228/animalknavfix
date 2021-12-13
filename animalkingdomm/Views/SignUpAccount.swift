
//  SignUpView.swift
//  BodyProgress
//
//  Created by PMStudent on 9/22/21.
//  Copyright © 2021 Mallow Technologies Private Limited. All rights reserved.
//

import SwiftUI
class AppViewModel: ObservableObject {
   @Published var signedIn = true
    
    
  
}
struct SignUpView: View {
    @State var buttonState = false
    @State var PetinfoView = false
    @Binding public var show: String
    @State var email: String = ""
    @State var password: String = ""
    @State private var username: String = ""
    @State private var profileImage: Image?
    @State private var pickedImage: Image?
    @State private var showingActionSheet = false
    @State private var showingImagePicker = false
    @Namespace var animation
    @EnvironmentObject var viewModel: AppViewModel
    @State private var imageData: Data = Data()
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    func loadImage() {
        guard let inputImage = pickedImage else {return }
        profileImage = inputImage
    }
    
    
    var body: some View {
        
            ZStack {
//                NavigationLink(destination: animalkingdomm.Main().navigationBarBackButtonHidden(true), isActive: $PetinfoView) { EmptyView() }
//                Button(action: {
//                    show = "Forms"
//                }) {
//                    EmptyView()
//                }
                Color.blue.edgesIgnoringSafeArea(.all)
                VStack {
                    VStack(spacing: 20) {
                        //add weight lifting logo, change button design
//                        Image(systemName: "camera").font(.system(size: 60,
//                                                                 weight: .black, design: .rounded))
                        VStack(alignment: .center) {
                            Text("Welcome").font(.system(size: 32, weight: .heavy))
                            Text("Sign Up To Continue").font(.system(size: 16, weight: .medium))
                            
                        }
                        VStack{
//                            Group{
//                                if profileImage != nil {
//                                    profileImage!.resizable()
//                                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
//                                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                                        .padding(.top, 20)
//                                        .onTapGesture {
//                                            self.showingActionSheet = true
//                                        }
//                                } else {
//                                    Image(systemName: "person.circle.fill")
//                                        .resizable()
//                                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                                        .padding(.top, 20)
//                                        .onTapGesture {
//                                            self.showingActionSheet = true
//
//                                        }
//                                }
//
//
//                            }
                            
                        }
                        
                        Group{
                            
                            Text("Username").offset(y: 25)
                                .foregroundColor(.white)

                            FormField(value: $username, icon: "person", placeholder: "Username",animation: animation)
                                .padding(.top, 5)
                            
                            Text("Email").offset(y: 25)
                                .foregroundColor(.white)

                            FormField(value: $email, icon: "envelope", placeholder: "Email",animation: animation)
                                .padding(.top, 5)
                            

                            Text("Password").offset(y: 25)
                                .foregroundColor(.white)
                            FormField(value: $password, icon: "person", placeholder: "Password",isSecure : true, animation: animation)
                                .padding(.top, 5)
                        }
                        
                        
                        Button(action: {
//                            PetinfoView = true
                            show = "Forms"
                        }
                            
                            
                            
                        ){
                            Text("Sign Up").font(.title).modifier(ButtonModifiers()).padding()
                            
                        }.padding(.top)
                        
                        
                        
                        
                    }.offset(y:-100)
                }
                .sheet(isPresented: $showingImagePicker, onDismiss: loadImage){
                    ImagePicker(pickedImage: self.$pickedImage, showImagePicker: self.$showingImagePicker, imageData: self.$imageData)
                    }.actionSheet(isPresented: $showingActionSheet) {
                        ActionSheet(title: Text(""), buttons:[ .default(Text("Choose A Photo")){
                            self.sourceType = .photoLibrary
                            self.showingImagePicker = true
                        },
                        .default(Text("Take A Photo")){
                            self.sourceType = .camera
                            self.showingImagePicker = true
                            
                        }, .cancel()])
                }
            }
        
        
        
        
    }
}

//struct SignUpView_Previews: PreviewProvider {
//    static var previews: some View {
//        SignUpView(show: $show)
//    }
//}
