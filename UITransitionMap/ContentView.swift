//
//  ContentView.swift
//  UITransitionMap
//
//  Created by Md Omar Faruq on 9/19/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct Home: View {
    var body: some View{
        VStack{
            Login()
        }
    }
    
}

struct Login : View {
    @State var color = Color.black.opacity(0.7)
    @State var email = ""
    @State var pass = ""
    @State var visible = false
    var body: some View{
        VStack{
             
            Text(" Log in to your Account")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(self.color)
                .padding(.top ,8)
            TextField ("Eメール", text: self.$email)
                .padding()
                .background(RoundedRectangle(cornerRadius: 4).stroke(self.email != "" ?  Color("Color"): self.color,lineWidth: 2))
                .padding(.top, 25)
            HStack (spacing: 15){
                VStack{
                    if self.visible{
                        TextField("パスワード", text: self.$pass)
                           
                    } else{
                        SecureField("パスワード", text: self.$pass)
                        
                    }
                }
                Button(action: {
                    visible.toggle()
                    
                }) {
                    
                    Image(systemName: self.visible ? "eye.slash.fill" : "eye.fill")
                        .foregroundColor(self.color)
                }
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 4).stroke(self.pass != "" ?  Color("Color"): self.color,lineWidth: 2))
            .padding(.top, 25)
        }
        .padding(.horizontal,25)
    }
}
