//
//  Member_List.swift
//  Hololive_book
//
//  Created by Shiroha on 2021/11/4.
//

import SwiftUI

struct Member_List: View {
    let mem_info: Member_info
    var body: some View {
        HStack{
            Image(mem_info.name)
            .resizable()
            .scaledToFill()
            .frame(width: 80, height: 80)
            .clipped()
            VStack(alignment: .leading) {
                Text("Hololive" + mem_info.generation)
                Text(mem_info.name)
            }
            Spacer()
        }
    }
}

struct Member_List_Previews: PreviewProvider {
    static var previews: some View {
        Member_List(mem_info: Member_info(name: "星街すいせい", generation: "0期生", debut_date: "2018年3月22日", birthday: "3月22日", height: "160cm", fan_name: "星詠み", illustrator: "手島nari"))
    }
}
