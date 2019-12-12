//
//  BottomHeader.swift
//  VivinoScreenSwiftUI
//
//  Created by Micaela Cavallo on 12/12/2019.
//  Copyright © 2019 Micaela Cavallo. All rights reserved.
//

import SwiftUI

struct BottomHeader: View {
    var body: some View {
        
        VStack {
            Text("More filters").font(.custom("Helvetica", size: 16))
                .fontWeight(.regular).foregroundColor(Color("wineColor")).padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                .font(.subheadline)
            
            Text("Country, grape, vintage, etc.")
                .font(.custom("Helvetica", size: 12))
                .fontWeight(.regular).foregroundColor(Color("darkMaize"))
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
            
            Rectangle().frame(width: 380, height: 20, alignment: .leading)
                .foregroundColor(Color("lightMaize"))
                .offset(x: 0, y: -5)
            
            VStack(alignment: .leading) {
                
                Text("Recent searches") .font(.custom("Helvetica", size: 20))
                    .fontWeight(.regular).foregroundColor(Color("selectedTitle"))
                        .multilineTextAlignment(.leading)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
            }
        }
        
    }
}

struct BottomHeader_Previews: PreviewProvider {
    static var previews: some View {
        BottomHeader()
    }
}
