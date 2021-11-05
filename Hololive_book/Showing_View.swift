//
//  Showing_View.swift
//  Hololive_book
//
//  Created by Shiroha on 2021/11/4.
//

import SwiftUI
//import XCTest

struct Showing_View: View {
    let gen_info: Generation_info
    var body: some View {
        let gen_members = gen_info.get_gen_members()
        VStack{
            Text(gen_info.generation)
                .font(.system(size:30))
                .offset(x: -140, y: 20)
//            Image(gen_info.country + "_" + gen_info.generation)
//                .resizable()
//                .scaledToFill()
//                .frame(width: 390, height: 230)
//                .clipped()
            image_extra_subview(img_name: gen_info.country + "_" + gen_info.generation, width: 390, height: 230)
            List{
//                ForEach(0..<gen_members.count){ index in
//                    NavigationLink{
//                        Hololive_Member(vtuber: gen_members[index])
//                    }label: {
//                        Member_List(mem_info: gen_members[index])
//                    }
//                }
                ForEach(gen_members) { gen_member in
                    NavigationLink{
                        Hololive_Member(vtuber: gen_member)
                    }label: {
                        Member_List(mem_info: gen_member)
                    }
                }
            }
        }
    }
}

struct Showing_View_Previews: PreviewProvider {
    static var previews: some View {
        Showing_View(gen_info: Generation_info(generation: "0期生", country: "JP"))
    }
}

struct image_extra_subview: View {
    let img_name: String
    let width: CGFloat
    let height: CGFloat
    var body: some View {
        Image(img_name)
            .resizable()
            .resizable()
            .scaledToFill()
            .frame(width: width, height: height)
            .clipped()
    }
}
