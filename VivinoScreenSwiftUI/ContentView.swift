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
    @State private var favoriteColor = 0 //for the segmented bar view
    
    var body: some View {
        
        
        TabView {
            NavigationView {
                
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    
                    
                    VStack {
                        Image("barrels").resizable()
                            .blendMode(.plusDarker)
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
                                .fontWeight(.semibold).foregroundColor(Color("selectedTitle"))
                                .padding()
                            
                            Picker(selection: $favoriteColor, label: Text("What is your favorite color?")) {
                                Text("").tag(0)
                                Text("").tag(1)
                                Text("").tag(2)
                            }.pickerStyle(SegmentedPickerStyle())
                                .background(Color.white)
                                .frame(width: 300, height: 10, alignment: .leading)
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                            //.foreground(Color.wineColor)
                            
                            //Text("Value: \(favoriteColor)")
                            
                            
                        }
                        
                        HorizontalScrollView().offset(x: -5, y: 0) //offset hacks away a current scrollview bug that adds unwanted space at the beginning.
                        
                        
                        VStack {
                            Text("More filters").font(.custom("Helvetica", size: 16))
                                .fontWeight(.regular).foregroundColor(Color("wineColor")).padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                                .font(.subheadline)
                            
                            Text("Country, grape, vintage, etc.")
                                .font(.custom("Helvetica", size: 12))
                                .fontWeight(.regular).foregroundColor(Color("darkMaize"))
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
                            
                            Rectangle().frame(width: 380, height: 20, alignment: .leading)
                                .foregroundColor(Color("lightMaize"))
                                .offset(x: 0, y: -5)
                            
                            VStack() {
                                Text("Recent searches") .font(.custom("Helvetica", size: 20))
                                    .fontWeight(.regular).foregroundColor(Color("selectedTitle"))
                                    .multilineTextAlignment(.leading)
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
                            }
                            
                            RecentsRow()
                            RecentsRow()
                            RecentsRow()
                            
                            HStack {
                                Text("Show all").font(.custom("Helvetica", size: 12)).foregroundColor(Color.wineColor)
                                    .fontWeight(.semibold)
                                    .padding()
                            }.frame(width: 280, height: 30, alignment: .leading)
                            
                            Rectangle().frame(width: 380, height: 100, alignment: .leading)
                                .foregroundColor(Color("lightMaize"))
                        }
                        
                    }
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10)) //this is making the top image wider
                    
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
