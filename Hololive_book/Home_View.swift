//
//  Home_View.swift
//  Hololive_book
//
//  Created by Shiroha on 2021/11/5.
//

import SwiftUI
import AVKit

struct Home_View: View {
    //@StateObject private var model = PlayerViewModel(fileName: "ホロライブオルタナティブ ティザー")
//    let player = AVPlayer(url: Bundle.main.url(forResource: "ホロライブオルタナティブ ティザー", withExtension: "mp4")!)
    var body: some View {
        //let url = Bundle.main.url(forResource: "hololive_alternative", withExtension: "mp4")!
        NavigationView{
            VStack{
                Image("hololive_logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 400, height: 100)
                    .clipped()
                    .offset(y: -80)
//                Spacer()
//                    .frame(width: 400, height: 50)
                Text("宣傳照")
                    .font(.system(size: 30))
                    .offset(x: -150, y: -60)
                    .frame(height: 5)
                TabView {
                    ForEach(1..<4) { item in
                        Image("hololive_\(item)")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300, height: 200)
                            .clipped()
                            .animation(.easeIn)
                    }
                }
                .tabViewStyle(.page)
                .offset(y: -70)
                Text("宣傳片")
                    .font(.system(size: 30))
                    .offset(x: -150, y: -90)
                    .frame(height: 5)
                NavigationLink{
                    Video_View()
                }label:{
                    VStack{
                        Image("hololive")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300, height: 200)
                            .clipped()
                        Text("Hololive")
                    }
                    .offset(y: -80)
                }
            }
            //.offset(y: -10)
        }
    }
}

struct Home_View_Previews: PreviewProvider {
    static var previews: some View {
        Home_View()
    }
}
