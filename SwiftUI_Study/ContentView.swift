//
//  ContentView.swift
//  SwiftUI_Study
//
//  Created by Y3SUNG on 2022/04/21.
//

import SwiftUI

struct ContentView: View {
    // @State : 값의 변화 감지 -> 뷰에 적용
    @State
    private var isActivated: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    MyVstackView(isActivated: $isActivated)
                    MyVstackView(isActivated: $isActivated)
                    MyVstackView(isActivated: $isActivated)
                } // Hstack
                    .padding(isActivated ? 50 : 10)
                    .background(isActivated ? Color.yellow : Color.black)
                  // 탭 재스쳐 추가
                    .onTapGesture {
                        print("HStack 이 클릭되었다.")
                        
                        // 애니메이션
                        withAnimation {
                            self.isActivated.toggle()
                        }
                    }
            // 네비게이션 버튼(링크)
            NavigationLink(destination: MyTextView(isActivated: $isActivated)){
                Text("네비게이션")
                    .font(.system(size: 60))
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(Color.white)
                    .cornerRadius(30)
            } .padding(.top, 50)
            } // Vstack
        }
    }

}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
