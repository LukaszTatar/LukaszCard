//
//  ContentView.swift
//  LukaszCard
//
//  Created by Łukasz Tatarynowicz on 23/12/2019.
//  Copyright © 2019 Łukasz Tatarynowicz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red:0.00, green:0.72, blue:0.58)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("Lukasz")
                    .resizable()
                    .aspectRatio(contentMode: .fit).frame(width: 150.0, height: 200.0)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Lukasz Tatarynowicz")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+48 694 479 977", imageName: "phone.down.circle.fill")
                InfoView(text: "tatarynowicz@icloud.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


