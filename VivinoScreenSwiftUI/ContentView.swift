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
        NavigationView {
            VStack {
                Image("wine_barrel").resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 150)
                    //            .scaledToFill()
                    .clipped()
                
                Spacer()
            }
            .navigationBarItems(trailing: HStack {
                Button(action: {}) {
                    Image(systemName: "minus.square.fill")
                        .font(.largeTitle)
                }.foregroundColor(.blue)
            })
            .navigationBarTitle("Search")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
