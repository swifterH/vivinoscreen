//
//  BannerImage.swift
//  VivinoScreenSwiftUI
//
//  Created by Micaela Cavallo on 12/12/2019.
//  Copyright © 2019 Micaela Cavallo. All rights reserved.
//

import SwiftUI

struct BannerImage: View {
    var body: some View {
    //    GeometryReader { (geometry: GeometryProxy) in
        Image("barrels").resizable()
                                  .blendMode(.plusDarker)
                                  .aspectRatio(contentMode: .fill)
                                  .edgesIgnoringSafeArea(.top)
                                  //.frame(width: geometry.size.width,height: 140)
                                .frame(height: 140)
        .offset(y: -200)
            .edgesIgnoringSafeArea(.all)
                                        //.scaledToFill()
            
                                 // .clipped()
 //       }
    }
}

struct BannerImage_Previews: PreviewProvider {
    static var previews: some View {
        BannerImage()
    }
}
