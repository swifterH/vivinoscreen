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
                Text("DEC").font(.footnote)
                Text("10").font(.body)
                }.foregroundColor(Color("darkMaize"))
            .frame(width: 68, height: 68, alignment: .center)
            VStack {
                Text("All wine types").foregroundColor(.black)
                    .fontWeight(.light)
                Text("minPrice - MaxPrice").font(.footnote)
                .foregroundColor(Color("selectedTitle"))
                Text("Goes well with...").font(.footnote).foregroundColor(Color("selectedTitle"))
            }.frame(width: 270, height: 60, alignment: .leading)
            .shadow(radius: 20)
                     
            
              } .frame(width:370, height: 70)
    }
}

struct RecentsRow_Previews: PreviewProvider {
    static var previews: some View {
        RecentsRow()
    }
}
