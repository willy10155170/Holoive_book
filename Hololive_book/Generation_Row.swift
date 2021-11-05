//
//  Generation_Row.swift
//  Hololive_book
//
//  Created by Shiroha on 2021/11/4.
//

import SwiftUI

struct Generation_Row: View {
    let gen_info: Generation_info
    var body: some View {
        HStack {
            Image(gen_info.country + "_" + gen_info.generation)
            .resizable()
            .scaledToFill()
            .frame(width: 160, height: 90)
            .clipped()
            VStack(alignment: .leading) {
                Text("Hololive" + gen_info.country)
                Text(gen_info.generation)
            }
            Spacer()
        }
    }
}

struct Generation_Row_Previews: PreviewProvider {
    static var previews: some View {
        Generation_Row(gen_info: Generation_info(generation: "0期生", country: "JP"))
    }
}
