//
//  Hololive_Member.swift
//  Hololive_book
//
//  Created by Shiroha on 2021/11/4.
//

//星街すいせい
//デビュー日：2018年3月22日
//
//誕生日：3月22日
//
//身長：160cm
//
//ファンネーム：星詠み
//
//イラストレーター：手島nari
//
import Foundation
import SwiftUI
struct Hololive_Member: View {
    let vtuber: Member_info
    var body: some View {
        VStack{
            HStack(alignment: .top) {
                Image(vtuber.name)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 200)
                .clipped()
                .transition(.scale)
                
                VStack(alignment: .leading) {
                    Text(vtuber.name)
                        .font(.system(size:20))
                    Spacer()
                        .frame(height: 40)
                    Text(vtuber.generation)
                        .font(.system(size:14))
                    Text("デビュー日：" + vtuber.debut_date)
                        .font(.system(size:14))
                    Text("誕生日：" + vtuber.birthday)
                        .font(.system(size:14))
                    Text("身長：" + vtuber.height)
                        .font(.system(size:14))
                    Text("ファンネーム：" + vtuber.fan_name)
                        .font(.system(size:14))
                    Text("イラストレーター：" + vtuber.illustrator)
                        .font(.system(size:14))
                }
                Spacer()
            }
            VStack(alignment: .leading) {
                Link(destination: URL(string: vtuber.get_yt_link())!){
                    Text("前往Youtube")
                        .font(.system(size: 20))
                }
                Link(destination: URL(string: vtuber.get_tw_link())!){
                    Text("前往Twitter")
                        .font(.system(size: 20))
                }
                Text("自我介紹")
                    .font(.system(size: 30))
                ScrollView(.vertical){
                    Text(vtuber.get_intro())
                }

            }
        }
        .animation(.easeInOut)
        .frame(width:380, height:750, alignment: .top)
        //.position(x: 200, y: 250)
    }
}

struct Hololive_Member_Previews: PreviewProvider {
    static var previews: some View {
        Hololive_Member(vtuber:         Member_info(name: "ときのそら", generation: "0期生", debut_date: "2017年9月7日",
                                                    birthday: "5月15日", height: "160cm", fan_name: "そらとも", illustrator: "おるだん"))
    }
}
