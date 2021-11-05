//
//  All_Member_Grid.swift
//  Hololive_book
//
//  Created by Shiroha on 2021/11/5.
//

import SwiftUI

struct All_Member_Grid: View {
    let all_vtuber: Array<Member_info>
    var body: some View {
        VStack{
            ScrollView(.vertical) {
                let columns = [GridItem(.adaptive(minimum: 150))]
                LazyVGrid(columns: columns) {
                    ForEach(all_vtuber){ vtuber in
                        NavigationLink{
                            Hololive_Member(vtuber: vtuber)
                        }label: {
                            Grid_View(vtuber: vtuber)
                        }
                    }
                }
            }
        }
    }
}

struct All_Member_Grid_Previews: PreviewProvider {
    static var previews: some View {
        All_Member_Grid(all_vtuber: [
            Member_info(name: "IRyS", generation: "2期生", debut_date: "2021年07月11日",
                        birthday: "3月7日", height: "166cm", fan_name: "Irystocrats", illustrator: "redjuice"),
            Member_info(name: "九十九佐命", generation: "2期生", debut_date: "2021年08月22日",
                        birthday: "N/A", height: "N/A", fan_name: "N/A", illustrator: "pako"),
            Member_info(name: "セレス・ファウナ", generation: "2期生", debut_date: "22021年08月22日",
                        birthday: "N/A", height: "N/A", fan_name: "N/A", illustrator: "遠坂あさぎ"),
            Member_info(name: "オーロ・クロニー", generation: "2期生", debut_date: "2021年08月22日",
                        birthday: "N/A", height: "N/A", fan_name: "N/A", illustrator: "ワダアルコ"),
            Member_info(name: "七詩ムメイ", generation: "2期生", debut_date: "2021年08月22日",
                        birthday: "N/A", height: "N/A", fan_name: "N/A", illustrator: "あずーる"),
            Member_info(name: "ハコス・ベールズ", generation: "2期生", debut_date: "2021年08月22日",
                        birthday: "N/A", height: "N/A", fan_name: "N/A", illustrator: "Mika Pikazo")
        ])
    }
}
