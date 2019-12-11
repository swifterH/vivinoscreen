//
//  ContentView.swift
//  VivinoScreenSwiftUI
//
//  Created by Micaela Cavallo on 09/12/2019.
//  Copyright © 2019 Micaela Cavallo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var txt = ""
    var body: some View {
        
        
        TabView {
            NavigationView {
                
                VStack {
                    Image("wine_barrel").resizable()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(.top)
                        .frame(height: 140)
                        //            .scaledToFill()
                        .clipped()
                    
                    Spacer()
                    
                    SearchView(txt: $txt, data: data).frame(width: 360, height: 60, alignment: .leading)
                        .offset(x: 0, y: -40)
                        .padding(.bottom, -40)
                        .zIndex(1)
                    
                    VStack {
                        Text("Browse wines")
                            .font(.custom("Helvetica", size: 16))
                            .fontWeight(.semibold)
                    
                            //.foregroundColor(Color.init(white: 0.2))
                        .foregroundColor(Color("selectedTitle"))
                        .padding()
                        
                        
                        
                            
                    }
                    
                    ScrollView {
                        HStack {
                            WineZStack()
                            WineZStack()
                            
                            
                        }
                        HStack {
                            WineZStack()
                            WineZStack()
                            
                        }
                        HStack {
                            WineZStack()
                            WineZStack()
                        }
                        HStack {
                            
                            Image("rocks").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.top).frame(width: 160, height: 160)
                                .padding()
                                .border(Color.green, width: 2)
                            Image("rocks").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.top).frame(width: 160, height: 160)
                                .padding()
                                .border(Color.green, width: 2)
                        }
                        
                    }
                }.background(Color("lightBackground"))
                    .edgesIgnoringSafeArea(.all)
                    
                .navigationBarItems(trailing: HStack {
                    Button(action: {}) {
                        Image(systemName: "cart.fill")
                            .font(.system(size: 20))
                    }.foregroundColor(Color.white)
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 20))
                    
                    Button(action: {}) {
                        Image(systemName: "bell.fill")
                            .font(.system(size: 20))
                    }.foregroundColor(Color.white)
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 10))
                    
                })
                    .navigationBarTitle("", displayMode: .inline)
                    .font(.custom("Helvetica", size: 16))// this modifies the searchbar text
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct SearchView : View {
    
    @Binding var txt : String
    var data : [String]
    
    var body : some View {
        VStack {
            ZStack {
                HStack {
                    TextField("Search", text: $txt).padding(.trailing, 75)
                    .frame(height: 10)
                }.padding()
//                    .background(Color.green)
                     .background(Color.white)
                    .cornerRadius(28)
                .shadow(radius: 5)
                //.border(Color.red, width: 4)
                
                HStack {
                    Spacer()
                    Button(action: {
                        self.txt = ""
                    }) {
                        Text("Cancel")
                    }.foregroundColor(.black)
                }.padding()
            }
            //            List(self.data.filter{$0.lowercased().contains(self.txt.lowercased())}, id: \.self) { i in
            //                Text(i)
            //
            //
            //            }.frame(height: 60)
            
            
            //Spacer()
            
        }.padding()
    }
}

extension UINavigationController {
    override open func viewDidLoad() {
        super.viewDidLoad()
        
        let standardAppearance = UINavigationBarAppearance()
        standardAppearance.configureWithTransparentBackground()
        
        let scrollEdgeAppearance = UINavigationBarAppearance()
        scrollEdgeAppearance.configureWithTransparentBackground()
        
        let compactAppearance = UINavigationBarAppearance()
        compactAppearance.configureWithTransparentBackground()
        
        navigationBar.standardAppearance = standardAppearance
        navigationBar.scrollEdgeAppearance = scrollEdgeAppearance
        navigationBar.compactAppearance = compactAppearance
    }
}
