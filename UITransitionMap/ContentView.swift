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
    @State var show = false
    var body: some View{
        NavigationView{
            ZStack{
                NavigationLink(destination: SingUp(show: self.$show),
                               isActive: self.$show ){
                    Text("")
                    
                }
                .hidden()
                Login(show: self.$show)
            }
            .navigationTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
    
}

struct Login : View {
    @State var color = Color.black.opacity(0.7)
   
    @State var email = ""
    @State var pass = ""
    @State var visible = false
    @Binding var show : Bool
    var body: some View{
        
        VStack{
             
            Text(" あなたのアカウントにログイン")
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
                    self.visible.toggle()
                    
                }) {
                    
                    Image(systemName: self.visible ? "eye.slash.fill" : "eye.fill")
                        .foregroundColor(Color.orange)
                }
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 4).stroke(self.pass != "" ?  Color("Color"): self.color,lineWidth: 2))
            .padding(.top, 25)
            
            Button(action:  {
               
            })
            {
               Text("ログイン")
                .foregroundColor(.white)
                .padding(.vertical)
                .frame( width: UIScreen.main.bounds.width - 50)
            }
            .background(Color("Color"))
            .cornerRadius(10)
            .padding(.top, 25)
            
            HStack(spacing: 8){
                
                Text("すでに持っていて、アカウントを持っていますか？")
                    .font(.system(size: 10))
                   
                Button (action:  {
                    self.show.toggle()
                })
                {
                   
                    Text(" クレタ島とアカウント")
                        .foregroundColor(.red)
                        .font(.system(size: 10))
                       
                }
               
                .padding(10)
            }
           
        
            
        }
        .padding(.horizontal,25)
       
       
       
    }
}
struct SingUp : View {
    @State var color = Color.black.opacity(0.7)
     @State var name = ""
    @State var email = ""
    @State var pass = ""
    @State var visible = false
    @Binding var show : Bool
    var body: some View{
        
        VStack{
             
            Text(" クリティアカウント")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(self.color)
                .padding(.top ,8)
            TextField ("名前", text: self.$name)
             
            .padding()
            .background(RoundedRectangle(cornerRadius: 4).stroke(self.name != "" ?  Color("Color"): self.color,lineWidth: 2))
            .padding(.top, 25)
            
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
                    self.visible.toggle()
                    
                }) {
                    
                    Image(systemName: self.visible ? "eye.slash.fill" : "eye.fill")
                        .foregroundColor(Color.orange)
                }
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 4).stroke(self.pass != "" ?  Color("Color"): self.color,lineWidth: 2))
            .padding(.top, 25)
            
            Button(action:  {
               
            })
            {
               Text("クリティ島で")
                .foregroundColor(.white)
                .padding(.vertical)
                .frame( width: UIScreen.main.bounds.width - 50)
            }
            .background(Color("Color"))
            .cornerRadius(10)
            .padding(.top, 25)
            
            HStack(spacing: 8){
                Text("すでに持っていて、アカウントを持っていますか？")
                    .font(.system(size: 12))
                Button (action:  {
                    self.show.toggle()
                })
                {
                   
                    Text(" ログイン")
                        .foregroundColor(.red)
                        .font(.system(size: 12))
                       
                }
                .padding(10)
               
            }
            
            
            
        }
        .padding(.horizontal,25)
       
        .navigationBarBackButtonHidden(true)
       
    }
}
