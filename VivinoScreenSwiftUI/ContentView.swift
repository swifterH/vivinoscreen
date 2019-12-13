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
        
        
            NavigationView {
                
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    
                    
                    VStack {
                        
                        BannerImage()
                        
                        Spacer()
                        
                        SearchView(txt: $txt, data: data)
                            .frame(width: 360, height: 60, alignment: .leading)
                            .offset(x: 0, y: -40)
                            .padding(.bottom, -40)
                            .zIndex(1)
                        
                        VStack {
                            Text("Browse wines").font(.custom("Helvetica", size: 16))
                                .fontWeight(.semibold).foregroundColor(Color("selectedTitle"))
                                    .padding()
                            
                            SegmentedPicker()
                        }
                        
                        HorizontalScrollView().offset(x: -5, y: 0) //offset hacks away a current scrollview bug that adds unwanted space at the beginning.
                        
                        
                        VStack {

                            BottomHeader()
                            RecentsRow()
                            RecentsRow()
                            RecentsRow()
                            ShowAllRow()
                        }
                        
                    }
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10)) //this is making the top image wider
                    
                }.background(Color("lightBackground"))
                    .edgesIgnoringSafeArea(.all)
                    
                    .navigationBarItems(trailing: HStack {
                       
                        CartButton()
                        BellButton()
                        
                    })
                    .navigationBarTitle("", displayMode: .inline)
                    .font(.custom("Helvetica", size: 16))// this modifies the searchbar text
                
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
                    .background(Color.white)
                    .cornerRadius(28)
                    .shadow(radius: 5)

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


