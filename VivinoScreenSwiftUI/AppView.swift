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
            Image(systemName: "cart").font(.system(size: 22))
                Text("Shop")
            }
            
        ContentView()
        .tabItem {
            Image(systemName: "magnifyingglass").font(.system(size: 22))
            Text("Search")
        }
        
        CameraView()
        .tabItem {
            Image(systemName: "camera.circle.fill").font(.system(size: 60))
            
            }
        FriendsView()
        .tabItem {
                Image(systemName: "person.2.fill").font(.system(size: 22))
            Text("Friends")
            }
            
        ProfileView()
            .tabItem {
                Image(systemName: "person.fill").font(.system(size: 22))
                Text("Profile")
            }
      }
    }
  }
    struct AppView_Previews: PreviewProvider {
        static var previews: some View {
            AppView()
        }
    }

