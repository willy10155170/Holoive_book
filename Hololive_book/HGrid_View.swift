//
//  HGrid_View.swift
//  Hololive_book
//
//  Created by Shiroha on 2021/11/5.
//

import SwiftUI

struct HGrid_View: View {
    let country: String
    var body: some View {
        VStack{
            Image(country + "_1期生")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            Text("Hololive " + country)
        }
        
    }
}

struct HGrid_View_Previews: PreviewProvider {
    static var previews: some View {
        HGrid_View(country: "ALL")
    }
}
