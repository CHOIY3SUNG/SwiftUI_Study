//
//  ContentView.swift
//  Text_Ex
//
//  Created by Y3SUNG on 2022/07/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .font(.system(.body, design: .rounded))
            .fontWeight(.black)
            .multilineTextAlignment(.center)
            //.shadow(color: Color.black, radius: 3, x: 10, y: 5) 그림자 넣는건데 안예뻐서..
            .padding(.all, 20)
            .background(Color.yellow)
            .cornerRadius(5)
            .padding()
            .background(Color.black)
            .cornerRadius(15)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
