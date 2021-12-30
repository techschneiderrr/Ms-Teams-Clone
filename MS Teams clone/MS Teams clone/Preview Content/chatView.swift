//
//  chatView.swift
//  MS Teams clone
//
//  Created by Manav Deep Singh Lamba on 30/12/21.
//

import SwiftUI

struct chatView: View {
    var body: some View {
        ZStack {
           
        
        NavigationView {
            
            Text("")
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                .navigationBarTitle("Chat", displayMode: .inline)
                .background(Color(red: 0.102, green: 0.102, blue: 0.098))
                .ignoresSafeArea()
                .navigationBarItems(
                    leading:
                        HStack {
                            ZStack {
                                Image(systemName: "line.horizontal.3")
                                    .imageScale(.large)
                                Circle()
                                    .fill(Color.red)
                                    .frame(width: 12, height: 12)
                                    .offset(x:6,y:-4)
                                Text("1")
                                    .bold()
                                    .offset(x:6,y:-4)
                                    .font(.system(size: 8))
                            }
                            Image(systemName: "magnifyingglass")
                                .imageScale(.large)
                            
                        },
                    
                    trailing:
                        HStack {
                            
                            Image(systemName: "square.and.pencil")
                                .imageScale(.large)
                            
                        }
                )
            
        }
            ScrollView(.vertical, showsIndicators: true) {
                VStack(spacing:1) {
                    messageView(name:"AKASH SHARMA",mes:"You: import socket",stat:1,date: "12-09",pic:"as")
                    messageView(name:"ARYAN KHANNA",mes:"You: konsa wala",stat:1,date: "12-09",pic:"ak")
                    messageView(name:"SMART8",mes:"You: Thanks and regards",stat:1,date: "11-18",pic:"smart")
                    messageView(name:"HARSHIT SINGH",mes:"Hi bro we are in the same batch for DCC...",stat:2,date: "11-17",pic:"hs")
                    messageView(name:"ROHIN SRIVASTAVA",mes:"import socket",stat:1,date: "11-11",pic:"rs")
                    messageView(name:"MANGAMUDI YASHWANTH",mes:"thank u",stat:1,date: "11-11",pic:"my")
                    messageView(name:"Gundala Swathi",mes:"You: Good evening mam,",stat:1,date: "11-06",pic:"gs")
                    messageView(name:"KAMISETTY SAI DEERAJ KUMAR",mes:"no problem",stat:3,date: "10-23",pic:"kk")
                    messageView(name:"YUVRAJ 19BIT0424",mes:"Ok",stat:1,date: "10-22",pic:"y")
                    messageView(name:"AAYU OJHA",mes:"chalo badhiya",stat:3,date: "10-22",pic:"ao")
                    
                    
                }
            }.offset(y:50)
            Group {
                Rectangle()
                    .fill(Color(red: 0.102, green: 0.102, blue: 0.098))
                    .frame(height: 70)
                    .shadow(color: Color(hue: 1.0, saturation: 0.024, brightness: 0.194, opacity: 0.598), radius:10, x: 5, y: 5)
            }.offset(y:370)
            
            div().offset(y:-320)
            
            
        
    }
}
}

struct div: View {
    var body: some View {
        Rectangle()
            .background(Color.red)
            .frame( height: 0.34)

    }
}

struct chatView_Previews: PreviewProvider {
    static var previews: some View {
        chatView()
            .preferredColorScheme(.dark)
    }
}
