//
//  ContentView.swift
//  Hololive_book
//
//  Created by Shiroha on 2021/11/4.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home_View()
                .tabItem{
                    Label("首頁", systemImage: "house.circle")
                }
            Generation_View()
                .tabItem{
                    Label("世代一覽", systemImage: "person.3.fill")
                }
            All_Member_View()
            .tabItem {
                Label("成員一覽", systemImage: "person")
            }
            DD_View()
            .tabItem {
                Label("臭DD", systemImage: "gamecontroller")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
