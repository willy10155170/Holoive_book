//
//  DD_View.swift
//  Hololive_book
//
//  Created by Shiroha on 2021/11/6.
//

import SwiftUI
import AVFoundation

struct DD_View: View {
    @State private var gen = ""
    @State private var country = ""
    @State private var vtuber = Member_info(name: "", generation: "", debut_date: "",birthday: "", height: "", fan_name: "", illustrator: "")
    var body: some View {
        NavigationView{
            VStack{
                Button(action:{
                    let temp_gen = Int.random(in: 0...5)
                    self.gen = "\(temp_gen)期生"
                    if temp_gen == 1 || temp_gen == 2{
                        let temp = Int.random(in: 0...1)
                        if temp == 0 {
                            self.country = "JP"
                        }
                        else {
                            self.gen = "EN"
                        }
                    }
                    else {
                        self.country = "JP"
                    }
                    self.vtuber = Generation_info(generation: self.gen, country: self.country).get_random_member()
                }){
                    Text("隨機產生老婆")
                        .foregroundColor(Color.white)
                        .padding()
                        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                    //DD_IMG_View(gen: self.gen, country: self.country)
                }
                NavigationLink{
                    DD_Move_View(vtuber: self.vtuber)
                }label:{
                    DD_IMG_View(vtuber: self.vtuber)
                }
            }
        }
        .onAppear{
            let url = Bundle.main.url(forResource: "GHOST", withExtension: "mp3")!
            let playerItem = AVPlayerItem(url:url)
            let player = AVPlayer()
            player.replaceCurrentItem(with: playerItem)
            player.play()
        }
    }
}

struct DD_View_Previews: PreviewProvider {
    static var previews: some View {
        DD_View()
    }
}
