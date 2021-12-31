//
//  navView.swift
//  MS Teams clone
//
//  Created by Manav Deep Singh Lamba on 31/12/21.
//

import SwiftUI

struct navView: View {
    let img: String
    let text: String
    let stat: Int
    var body: some View {
        VStack {
            ZStack{
                Rectangle()
                    .fill(Color.clear)
                    .frame(width: 20, height: 20)
                if(stat==0) {
                    Image(img)
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                else {
                    Image(systemName: img)
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                
                    
            }
            Text(text)
                .foregroundColor(Color.gray)
                .font(.system(size: 10))
        }
    }
}

struct navView_Previews: PreviewProvider {
    static var previews: some View {
        navView(img:"bell",text:"Activity",stat:1)
    }
}
