//
//  All_Member_View.swift
//  Hololive_book
//
//  Created by Shiroha on 2021/11/5.
//

import SwiftUI

struct All_Member_View: View {
    @State private var all_gen = Generation_info(generation: "all", country: "ALL")
    //@State private var all_vtuber: Array<Member_info> = []
    @State private var all_vtuber = Generation_info(generation: "all", country: "ALL").get_all_members()
    var body: some View {
        NavigationView{
            VStack{
                ScrollView(.horizontal) {
                    let rows = [GridItem()]
                    LazyHGrid(rows: rows) {
                        Button(action:{
                            self.all_gen.country = "ALL"
                            self.all_vtuber = all_gen.get_country_members()
                        }){
                            HGrid_View(country: "ALL")
                        }
                        Button(action:{
                            self.all_gen.country = "JP"
                            self.all_vtuber = all_gen.get_country_members()
                        }){
                            HGrid_View(country: "JP")
                        }
                        Button(action:{
                            self.all_gen.country = "EN"
                            self.all_vtuber = all_gen.get_country_members()
                        }){
                            HGrid_View(country: "EN")
                        }
                    }
                }
                .fixedSize(horizontal: false, vertical: true)
                All_Member_Grid(all_vtuber: self.all_vtuber)
                    .frame(width: 400, height: 700)
            }
            .offset(y: 10)
        }
    }
}

struct All_Member_View_Previews: PreviewProvider {
    static var previews: some View {
        All_Member_View()
    }
}
