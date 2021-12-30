//
//  messageView.swift
//  MS Teams clone
//
//  Created by Manav Deep Singh Lamba on 31/12/21.
//

import SwiftUI

struct messageView: View {
    let name: String
    let mes: String
    let stat: Int
    let date: String
    let pic: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(red: 0.102, green: 0.102, blue: 0.098))
                .frame(height: 70)
                
            HStack(alignment: .top) {
                ZStack {
                    Image(pic)
                        .resizable()
                        .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    if (stat==1) {
                        Circle()
                            .fill(Color.gray)
                            .frame(width: 16, height: 16)
                            .offset(x:16,y:16)
                    }
                    else if(stat==2) {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(Color.green)
                            .background(Color.black)
                            .frame(width: 16, height: 16)
                            .clipShape(Circle())
                            .offset(x:16,y:16)
                    }
                    else {
                        Image(systemName: "clock.fill")
                            .foregroundColor(Color.yellow)
                            .background(Color.black)
                            .frame(width: 16, height: 16)
                            .clipShape(Circle())
                            .offset(x:16,y:16)
                    }
                    
                }
                VStack {
                    Text(name)
                        .font(.system(size: 16))
                        .fontWeight(.regular)
                    .foregroundColor(Color.white)
                    .frame(minWidth: 0, maxWidth: .infinity,alignment: .leading)
                    Text(mes)
                        .foregroundColor(Color.gray)
                        .frame(minWidth: 0, maxWidth: .infinity,alignment: .leading)
                        .font(.system(size: 14))
                        
                }.padding(.top,6)
                Text(date)
                    .foregroundColor(Color.gray)
                    .font(.system(size: 14))
            }.padding(.leading,20)
                .padding(.trailing,10)
            Divider().offset(y:35).padding(.leading,25)
                .foregroundColor(Color.red)
        }
      
    }
}

struct messageView_Previews: PreviewProvider {
    static var previews: some View {
        messageView(name:"ARYAN KHANNA",mes:"You: konsa wala",stat:1,date: "12-09",pic:"ak")
    }
}
