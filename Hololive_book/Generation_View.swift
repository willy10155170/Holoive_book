//
//  Generation_View.swift
//  Hololive_book
//
//  Created by Shiroha on 2021/11/4.
//

import SwiftUI

struct Generation_View: View {
    let JP_generations = [
        Generation_info(generation: "0期生", country: "JP"),
        Generation_info(generation: "1期生", country: "JP"),
        Generation_info(generation: "2期生", country: "JP"),
        Generation_info(generation: "3期生", country: "JP"),
        Generation_info(generation: "4期生", country: "JP"),
        Generation_info(generation: "5期生", country: "JP"),
        Generation_info(generation: "gamers", country: "JP")
    ]
    let EN_generations = [
        Generation_info(generation: "1期生", country: "EN"),
        Generation_info(generation: "2期生", country: "EN")
    ]
    var body: some View {
        NavigationView{
            List{
                Section{
                    ForEach(0..<JP_generations.count){ index in
                        NavigationLink{
                            Showing_View(gen_info: JP_generations[index])
                        }label: {
                            Generation_Row(gen_info: JP_generations[index])
                        }
                    }
                }header:{
                    Text("JP")
                }
                Section{
                    ForEach(0..<EN_generations.count){ index in
                        NavigationLink{
                            Showing_View(gen_info: EN_generations[index])
                        }label: {
                            Generation_Row(gen_info: EN_generations[index])
                        }
                    }
                }header:{
                    Text("EN")
                }
            }
            .navigationTitle("各期生總覽")
        }
        
    }
}

struct Generation_View_Previews: PreviewProvider {
    static var previews: some View {
        Generation_View()
.previewInterfaceOrientation(.portrait)
    }
}
