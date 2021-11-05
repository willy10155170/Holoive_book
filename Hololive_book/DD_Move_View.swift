//
//  DD_Move_View.swift
//  Hololive_book
//
//  Created by Shiroha on 2021/11/6.
//

import SwiftUI
import AVKit


struct DD_Move_View: View {
    @State private var rotateDegree: Double = 0
    @State private var show = false
    let player = AVPlayer()
    let vtuber: Member_info
    var body: some View {
        VStack {
            if show {
                Image(vtuber.name)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .clipped()
                    .transition(.scale(scale: 3))
            }
        }
        .animation(.easeInOut(duration: 5), value: show)
        .onAppear {
            show = true
            let url = Bundle.main.url(forResource: "GHOST", withExtension: "mp3")!
            let playerItem = AVPlayerItem(url:url)
            player.replaceCurrentItem(with: playerItem)
            player.play()
        }
    }
}

struct DD_Move_View_Previews: PreviewProvider {
    static var previews: some View {
        DD_Move_View(vtuber: Member_info(name: "星街すいせい", generation: "0期生", debut_date: "2018年3月22日",
                                    birthday:	"3月22日",height:"160cm",fan_name:"星詠み",illustrator:"手島nari"))
    }
}
