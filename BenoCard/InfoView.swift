//
//  InfoView.swift
//  BenoCard
//
//  Created by Beno Suriano on 2/Nov/21.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        ZStack {
            Capsule()
                .frame(height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.all)
                .foregroundColor(.white)
                .overlay(
                    HStack {
                        Image(systemName: imageName)
                            .foregroundColor(Color(red: 0.17, green: 0.24, blue: 0.31, opacity: 1.00))
                        Text(text)
                    }
                )
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "+1 809 763 0390", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
