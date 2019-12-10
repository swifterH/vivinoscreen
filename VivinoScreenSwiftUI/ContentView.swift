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
                
                ScrollView {
                    HStack {
                       Image("rocks").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.top).frame(width: 150, height: 150)
                        Image("rocks").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.top).frame(width: 150, height: 150)
                        Image("rocks").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.top).frame(width: 150, height: 150)
                        
                    }
                    HStack {
                        Image("rocks").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.top).frame(width: 150, height: 150)
                        Image("rocks").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.top).frame(width: 150, height: 150)
                        Image("rocks").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.top).frame(width: 150, height: 150)
                    }
                    HStack {
                                        Image("rocks").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.top).frame(width: 150, height: 150)
                                        Image("rocks").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.top).frame(width: 150, height: 150)
                                        Image("rocks").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.top).frame(width: 150, height: 150)
                                    }
                    HStack {
                                        Image("rocks").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.top).frame(width: 150, height: 150)
                                        Image("rocks").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.top).frame(width: 150, height: 150)
                                        Image("rocks").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.top).frame(width: 150, height: 150)
                                    }
                    
                }
            }
                
            .navigationBarItems(trailing: HStack {
                Button(action: {}) {
                    Image(systemName: "cart.fill")
                        //.font(.largeTitle)
                }.foregroundColor(.blue)
                Button(action: {}) {
                    Image(systemName: "bell.fill")
                       // .font(.largeTitle)
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
