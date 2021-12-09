//
//  FormField.swift
//  BodyProgress
//
//  Created by PMStudent on 9/17/21.
//  Copyright © 2021 Mallow Technologies Private Limited. All rights reserved.
//

import SwiftUI

struct FormField: View {
    @Binding var value: String
    var icon: String
    
    var placeholder: String
    
    
    var isSecure = false
    
    var animation: Namespace.ID
    
    
    var body: some View {
        VStack(spacing: 6){
            HStack(alignment: .bottom){
                Image(systemName: icon)
                    
                    .font(.system(size:22))
                    .foregroundColor(.primary)
                    .frame(width: 35)
                VStack(alignment: .leading, spacing: 6){
                   
                    ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)){
                        
                        TextField("", text: $value)
                    }
                }
                
                
            }
           
                
            }
           

            
        
        .padding(.horizontal)
        .padding(.vertical, 12)
        
        .background(Color.white.opacity(value == "" ? 1:0))
        .background(Color.white)
        .cornerRadius(8)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 5, y: 5)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: -5, y: -5)
        .padding(.horizontal)

        .padding(.top)
    }
}

