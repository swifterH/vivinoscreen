//
//  ImageRow.swift
//  TestingStuffSwiftUI
//
//  Created by Micaela Cavallo on 15/12/2019.
//  Copyright © 2019 Micaela Cavallo. All rights reserved.
//

import SwiftUI

struct ImageRow: View {
    
    var body: some View {
        
        var images : [[Int]] = []
        _ = (1...6).publisher
            .collect(2)
            .collect()
            .sink { images = $0 }
        
        let winetype1 = "Red"
        let winetype2 = "White"
        let winetype3 = "Rose"
        let winetype4 = "Sparkling"
        let winetype5 = "Dessert"
        let winetype6 = "Strong"
        let winetype7 = "Red"
               let winetype8 = "White"
               let winetype9 = "Rose"
               let winetype10 = "Sparkling"
               let winetype11 = "Dessert"
               let winetype12 = "Strong"
        
        let winetypes = [winetype1, winetype2, winetype3, winetype4, winetype5, winetype6, winetype7, winetype8, winetype9, winetype10, winetype11, winetype12]
        

        
        return ForEach(0..<images.count, id: \.self) {
            array in HStack(spacing: 1) {
                ForEach((images[array]), id: \.self) { number in
                    ZStack {
                        Image("photo\(number)")
                            .resizable()
                            .scaledToFill()
                                .frame(width: 180, height: 180)
                            
                            .clipped()
                        .blendMode(.screen)
                            
                        Image("glass\(number)").renderingMode(.template)
                            
                        .resizable()
                        .scaledToFit()
                            .foregroundColor(.white)
                            .contrast(100)
                            .frame(width: 60, height: 60, alignment: .center)
                        
                        Text(winetypes[number])
                            .font(.system(size: 12))
                            .foregroundColor(.white)
                            .frame(height: 30, alignment: .center)
                        .offset(y: 50)
                    }
                
                }
            }
        }
    }
}

struct ImageRow_Previews: PreviewProvider {
    static var previews: some View {
        ImageRow()
    }
}
