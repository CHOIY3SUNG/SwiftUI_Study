//
//  Myview.swift
//  swiftUIPractice
//
//  Created by Y3SUNG on 2022/06/25.
//

import SwiftUI

struct Myview: View {
    let helloFont: Font
    var body: some View {
        VStack{
            VStack{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .font(.title)
                Text("안녕하세요!")
                    .font(helloFont)
             }
            VStack{
                Text("Hello")
            }
        }
    }
}

struct Myview_Previews: PreviewProvider {
    static var previews: some View {
        Myview(helloFont: .body)
    }
}
