//
//  Stretchy.swift
//  VivinoScreenSwiftUI
//
//  Created by Micaela Cavallo on 13/12/2019.
//  Copyright © 2019 Micaela Cavallo. All rights reserved.
//

import SwiftUI

struct StretchyBanner: View {
    var body: some View {
        
        ScrollView {
            
     
        VStack(alignment: .leading) {
            
            GeometryReader { (geometry: GeometryProxy) in
                
                if geometry.frame(in: .global).minY <= 0 {
                    
                    Image("barrels").resizable()
                        
                        .aspectRatio(contentMode: .fit)
                        
                        .frame(width: geometry.size.width,
                               
                               height: geometry.size.height)
                    
                } else {
                    
                    Image("barrels").resizable()
                        
                        .aspectRatio(contentMode: .fill)
                        
                       //.offset(y: -geometry.frame(in: .global).minY)
                    .offset(y: -150)
                        
                        .frame(width: geometry.size.width +
                            
                            geometry.frame(in: .global).minY,
                               
                               height: geometry.size.height +
                                
                                geometry.frame(in: .global).minY)
                    
                }
                
            }.frame(maxHeight: 300)
             }
        }
    }
}

struct Stretchy_Previews: PreviewProvider {
    static var previews: some View {
        StretchyBanner()
    }
}
