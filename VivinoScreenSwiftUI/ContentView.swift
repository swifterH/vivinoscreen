//
//  ContentView.swift
//  VivinoScreenSwiftUI
//
//  Created by Micaela Cavallo on 09/12/2019.
//  Copyright © 2019 Micaela Cavallo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        VStack {
            Image("wine_barrel")
            .edgesIgnoringSafeArea(.top)
            .frame(height: 200)
            .scaledToFit()
            .clipped()
            
        Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
