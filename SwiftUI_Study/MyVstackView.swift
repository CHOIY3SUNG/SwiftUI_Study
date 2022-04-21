//
//  MyVstackView.swift
//  SwiftUI_Study
//
//  Created by Y3SUNG on 2022/04/21.
//

import SwiftUI

struct MyVstackView: View {
    var body: some View {
        VStack {
            Text("1!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("2!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("3!")
                .fontWeight(.bold)
                .font(.system(size: 60))
        } // Vstack
            .background(Color.red)
    }
}
