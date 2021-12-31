//
//  ContentView.swift
//  MS Teams clone
//
//  Created by Manav Deep Singh Lamba on 30/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            chatView()
        }
        
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
