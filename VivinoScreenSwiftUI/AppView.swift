//
//  AppView.swift
//  VivinoScreenSwiftUI
//
//  Created by Micaela Cavallo on 13/12/2019.
//  Copyright © 2019 Micaela Cavallo. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
        
        ShopView().tabItem {
                   Image(systemName: "cart")
                   Text("Shop")
               }
            
        ContentView()
        .tabItem {
            Image(systemName: "magnifyingglass")
            Text("Search")
        }
        
        CameraView()
        .tabItem {
            Image(systemName: "camera.fill")
            
            }
        FriendsView()
        .tabItem {
                Image(systemName: "person.2.fill")
            Text("Friends")
            }
            
        ProfileView()
            .tabItem {
                Image(systemName: "person.fill")
            }
      }
    }
  }
    struct AppView_Previews: PreviewProvider {
        static var previews: some View {
            AppView()
        }
    }

