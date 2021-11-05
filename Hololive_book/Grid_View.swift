//
//  Grid_View.swift
//  Hololive_book
//
//  Created by Shiroha on 2021/11/5.
//

import SwiftUI

struct Grid_View: View {
    let vtuber: Member_info
    var body: some View {
        let country = ["JP", "EN"]
        VStack{          
            Image(vtuber.name)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .clipped()
            Text("Hololive " + vtuber.generation)
            Text(vtuber.name)
        }
    }
}

struct Grid_View_Previews: PreviewProvider {
    static var previews: some View {
        Grid_View(vtuber: Member_info(name: "星街すいせい", generation: "0期生", debut_date: "2018年3月22日",
                    birthday: "3月22日", height: "160cm", fan_name: "星詠み", illustrator: "手島nari"))
    }
}
