//
//  ALTcoolBtn.swift
//  RandomNumberGame
//
//  Created by Mattias Liljenberg on 2021-12-08.
//

import SwiftUI

struct ALTcoolBtn: View {
    var body: some View {
        
        
        VStack {
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image(systemName: "arrow.down.square.fill")
                    .foregroundColor(.random)
                .font(.system(size: 100))
            }
           
        }
    }
}

struct ALTcoolBtn_Previews: PreviewProvider {
    static var previews: some View {
        ALTcoolBtn()
    }
}
