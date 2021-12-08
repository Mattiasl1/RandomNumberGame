//
//  CoolButton.swift
//  RandomNumberGame
//
//  Created by Mattias Liljenberg on 2021-12-08.
//



import SwiftUI

struct CoolButton: View {
    
    let text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .background(.random)
            .foregroundColor(.random)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.black, lineWidth: 5)
            )
            .cornerRadius(30)
            .padding(.bottom, 10.0)
            .shadow(color: .black, radius: 4, x: 0, y: 0)
            .padding(.horizontal)
            .shadow(color: .white, radius: 3, x: 0, y: 0)
    }
}

struct CoolButton_Previews: PreviewProvider {
    static var previews: some View {
        CoolButton(text: "")
    }
}
