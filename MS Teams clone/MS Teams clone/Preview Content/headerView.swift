//
//  headerView.swift
//  MS Teams clone
//
//  Created by Manav Deep Singh Lamba on 31/12/21.
//

import SwiftUI

struct headerView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.clear)
                .frame( height: 125, alignment: .leading)
            VStack(alignment: .leading) {
                HStack {
                Image(systemName: "chevron.down")
                        .font(.system(size: 12))
                        .foregroundColor(Color.gray)
                    Text("Pinned")
                        .font(.system(size: 16))
                        .bold()
                        .foregroundColor(Color.white)
                    Spacer()
                Text("See all")
                        .font(.system(size: 14))
                        .foregroundColor(Color.purple)
                }
                HStack {
                    ZStack {
                        Image(systemName: "pin")
                            .foregroundColor(Color.white)
                            .rotationEffect(.degrees(-45))
                        Rectangle()
                            .stroke(style: StrokeStyle(lineWidth:1, dash: [5]))
                            .foregroundColor(Color.white)
                            .frame(width: 35, height: 35)
                            
                    }
                    Text("Pin a channel here for quick access")
                            .font(.system(size: 14))
                            .foregroundColor(Color.gray)
                }.offset(x:20)
                HStack {
                Image(systemName: "chevron.down")
                        .font(.system(size: 12))
                        .foregroundColor(Color.gray)
                    Text("Chats")
                        .font(.system(size: 16))
                        .bold()
                        .foregroundColor(Color.white)
                    Spacer()
                }.padding(.top,10)
            }.padding()
        }
    }
}

struct headerView_Previews: PreviewProvider {
    static var previews: some View {
        headerView()
    }
}
