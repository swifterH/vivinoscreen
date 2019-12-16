//
//  CombineView.swift
//  TestingStuffSwiftUI
//
//  Created by Micaela Cavallo on 15/12/2019.
//  Copyright © 2019 Micaela Cavallo. All rights reserved.
//

import SwiftUI

struct CombineView: View {
    
    var body: some View {
        
            List {
                ImageRow().padding(EdgeInsets(top: -5, leading: 0, bottom: -6, trailing: 0))
                .offset(x: -8)

        }
       
        
           
           // .frame(width: 380, height: 575)
        
    }
}

struct CombineView_Previews: PreviewProvider {
    static var previews: some View {
        CombineView()
    }
}
