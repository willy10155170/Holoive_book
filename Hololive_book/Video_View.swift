//
//  Video_View.swift
//  Hololive_book
//
//  Created by Shiroha on 2021/11/5.
//

import SwiftUI
import AVKit

struct Video_View: View {
    var body: some View {
        let url = Bundle.main.url(forResource: "hololive_alternative", withExtension: "mp4")!
        VideoPlayer(player: AVPlayer(url: url))
            //.edgesIgnoringSafeArea(.all)
    }
}

struct Video_View_Previews: PreviewProvider {
    static var previews: some View {
        Video_View()
.previewInterfaceOrientation(.portrait)
    }
}
