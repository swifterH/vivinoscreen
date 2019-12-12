//
//  RecentsRow.swift
//  VivinoScreenSwiftUI
//
//  Created by Micaela Cavallo on 11/12/2019.
//  Copyright © 2019 Micaela Cavallo. All rights reserved.
//

import SwiftUI

struct RecentsRow: View {
    var body: some View {
        HStack {
            VStack {
                Text("DEC").font(.custom("Helvetica", size: 18))
                Text("10").font(.custom("Helvetica", size: 16)).padding(EdgeInsets(top: 2, leading: 0, bottom: 10, trailing: 0))
                }.foregroundColor(Color("darkMaize"))
            .frame(width: 68, height: 68, alignment: .center)
            
            VStack(alignment: .leading) {
                Text("All wine types").foregroundColor(.black)
                    .fontWeight(.light)
                Text("minPrice - MaxPrice").font(.footnote)
                .foregroundColor(Color("selectedTitle"))
                Text("Goes well with...").font(.footnote).foregroundColor(Color("selectedTitle"))
                Divider()
            }.frame(width: 220, height: 60, alignment: .leading)
            .shadow(radius: 20)
            
            VStack {
                Image(systemName: "chevron.right")
                
                .frame(width: 50, height: 68, alignment: .center)
                .foregroundColor(Color("darkMaize"))
                
            }
                     
            
              } .frame(width:370, height: 70)
    }
}

struct RecentsRow_Previews: PreviewProvider {
    static var previews: some View {
        RecentsRow()
    }
}
