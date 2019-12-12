//
//  ShowAllRow.swift
//  VivinoScreenSwiftUI
//
//  Created by Micaela Cavallo on 12/12/2019.
//  Copyright © 2019 Micaela Cavallo. All rights reserved.
//

import SwiftUI

struct ShowAllRow: View {
    var body: some View {
        
        VStack {
            HStack {
                Text("Show all").font(.custom("Helvetica", size: 12)).foregroundColor(Color.wineColor)
                    .fontWeight(.semibold)
                    .padding()
            }.frame(width: 280, height: 30, alignment: .leading)
            
            Rectangle().frame(width: 380, height: 100, alignment: .leading)
                .foregroundColor(Color("lightMaize"))
        }
        
    }
}

struct ShowAllRow_Previews: PreviewProvider {
    static var previews: some View {
        ShowAllRow()
    }
}
