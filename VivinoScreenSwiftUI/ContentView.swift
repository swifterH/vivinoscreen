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
                        .frame(height: 150)
                        //            .scaledToFill()
                        .clipped()
                    
                    Spacer()
                    
                    SearchView(txt: $txt, data: data).frame(width: 360, height: 60, alignment: .leading)
                    .offset(x: 0, y: -40)
                    .padding(.bottom, -40)
                    .zIndex(1)
                    
                    ScrollView {
                        HStack {
                            ZStack {
                                Image("winePic").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.top).frame(width: 190, height: 190)
                                .clipped()
                                .blendMode(.screen)
                                //.padding()
                                .border(Color.green, width: 2)
                                
                                Image("wineIcon").renderingMode(.template)
                                    .resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.top).frame(width: 60, height: 60)
                                    .foregroundColor(Color.white)

                                //.padding()
                                
                            }
                            
//                            Image("rocks").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.top).frame(width: 160, height: 160)
//                            .padding()
//                            .border(Color.green, width: 2)
                            Image("rocks").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.top).frame(width: 160, height: 160)
                            .padding()
                            .border(Color.green, width: 2)
                            
                        }
                        HStack {
                            Image("rocks").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.top).frame(width: 160, height: 160)
                            .padding()
                            .border(Color.green, width: 2)
                            Image("rocks").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.top).frame(width: 160, height: 160)
                            .padding()
                            .border(Color.green, width: 2)
                            
                        }
                        HStack { Image("rocks").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.top).frame(width: 160, height: 160)
                            .padding()
                            .border(Color.green, width: 2)
                            Image("rocks").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.top).frame(width: 160, height: 160)
                            .padding()
                            .border(Color.green, width: 2)
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
                }
                    
                .navigationBarItems(trailing: HStack {
                    Button(action: {}) {
                        Image(systemName: "cart.fill")
                            .font(.system(size: 24))
                    }.foregroundColor(Color.wineColor)
                    
                    Button(action: {}) {
                        Image(systemName: "bell.fill")
                            .font(.system(size: 24))
                    }.foregroundColor(Color.wineColor)
                        
                })
                    .navigationBarTitle("Search")
                
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
                }.padding()
                .background(Color.green)
                    .cornerRadius(28)
                
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


