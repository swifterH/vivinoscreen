//
//  MultiScrollableView.swift
//  VivinoScreenSwiftUI
//
//  Created by Micaela Cavallo on 12/12/2019.
//  Copyright © 2019 Micaela Cavallo. All rights reserved.
//

import SwiftUI

struct HorizontalScrollView: View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            VStack(spacing : 1) {
                
                HStack(spacing: 1) {
                    WineZStack()
                    WineZStack()
                    WineZStack()
                    WineZStack()
                    WineZStack()
                                       WineZStack()
                    
                }
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                HStack(spacing: 1) {
                    WineZStack()
                    WineZStack()
                    WineZStack()
                    WineZStack()
                    WineZStack()
                                       WineZStack()
                    
                }
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                .padding(.leading, 0) .padding(.trailing, 0)
                
                HStack(spacing: 1) {
                    WineZStack()
                    WineZStack()
                    WineZStack()
                    WineZStack()
                    WineZStack()
                                       WineZStack()
                }
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            }
        }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
    }
    
}

struct MultiScrollableView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalScrollView()
    }
}
