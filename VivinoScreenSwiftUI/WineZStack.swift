//
//  WineZStack.swift
//  VivinoScreenSwiftUI
//
//  Created by Micaela Cavallo on 11/12/2019.
//  Copyright © 2019 Micaela Cavallo. All rights reserved.
//

import SwiftUI

struct WineZStack: View {
    var body: some View {
        ZStack {
            Image("winePic").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.top)
                //.frame(width: 190, height: 190)
                .frame(width: 192, height: 192)
            
                .clipped()
                .blendMode(.screen)
                //.padding()
                //.border(Color.green, width: 2)
            
            VStack {
                Image("wineIcon").renderingMode(.template)
                    .resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.top).frame(width: 60, height: 60)
                    .foregroundColor(Color.white)
                
                //.padding()
                
                Text("Red wine")
                    .font(.custom("Helvetica", size: 14))
                .fontWeight(.regular)
                    .foregroundColor(.white)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            
            
        }
    }
}

struct WineZStack_Previews: PreviewProvider {
    static var previews: some View {
        WineZStack()
    }
}
