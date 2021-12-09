//
//  Settings.swift
//  RandomNumberGame
//
//  Created by Mattias Liljenberg on 2021-12-08.
//

import SwiftUI

struct Settings: View {
    
    @State var CoolColors = false
    @State var toggleText = "Clean theme"
    
    var body: some View {
        VStack {
            Text("Change theme here")
                .padding()
            Toggle(isOn: $CoolColors) {
                    Text(toggleText)
                    .font(.system(size: 30))
                
                
                
                } 
            
            
        }
        
    }
    
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
