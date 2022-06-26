//
//  ContentView.swift
//  MyAssets
//
//  Created by Y3SUNG on 2022/06/26.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .asset
    
    enum Tab {
        case asset
        case recommend
        case alert
        case setting
    }
    
    var body: some View {
        TabView(selection: $selection) {
            Color.white
                .tabItem{
                    Image(systemName: "dollarsign.circle.fill")
                    Text("asset")
                }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
