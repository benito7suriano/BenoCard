//
//  ContentView.swift
//  BenoCard
//
//  Created by Beno Suriano on 2/Nov/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(red: 0.17, green: 0.24, blue: 0.31, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                Image("beno7suriano")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white,lineWidth: 5)
                    )

                Text("Beno Suriano")
                    .font(Font.custom("Montserrat-Regular.ttf", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("Eat&Sleep&Code&GetFit&Repeat")
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                
                Divider()
                
                InfoView(text: "+1 809 763 0390", imageName: "phone.fill")
                InfoView(text: "benosuriano@icloud.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
