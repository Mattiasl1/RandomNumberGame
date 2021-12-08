

//
//  SmallCoolBtn.swift
//  RandomNumber
//
//  Created by Mattias Liljenberg on 2021-12-07.
//

import SwiftUI

struct SmallCoolBtn: View {
    
    let smalltext: String
    
    var body: some View {
        
        Text(smalltext)
            .foregroundColor(.random)
            .font(.system(size: 30))
            .underline(true, color: .random)
    }
}

struct SmallCoolBtn_Previews: PreviewProvider {
    static var previews: some View {
        SmallCoolBtn(smalltext: "")
    }
}

