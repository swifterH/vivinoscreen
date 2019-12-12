////
////  SearchView.swift
////  VivinoScreenSwiftUI
////
////  Created by Micaela Cavallo on 12/12/2019.
////  Copyright © 2019 Micaela Cavallo. All rights reserved.
////
//
//import SwiftUI
//
//struct SearchView : View {
//    @Binding var txt : String
//    //@State var txt = ""
//    var data : [String]
//    
//    var body : some View {
//          VStack {
//              ZStack {
//                  HStack {
//                      TextField("Search", text: $txt).padding(.trailing, 75)
//                          .frame(height: 10)
//                  }.padding()
//                      .background(Color.white)
//                      .cornerRadius(28)
//                      .shadow(radius: 5)
//  
//                  HStack {
//                      Spacer()
//                      Button(action: {
//                          self.txt = ""
//                      }) {
//                          Text("Cancel")
//                      }.foregroundColor(.black)
//                  }.padding()
//              }
//              //            List(self.data.filter{$0.lowercased().contains(self.txt.lowercased())}, id: \.self) { i in
//              //                Text(i)
//              //
//              //
//              //            }.frame(height: 60)
//  
//  
//              //Spacer()
//  
//          }.padding()
//    }
//   
//}
//
//struct SearchView_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchView(txt: $txt, data:  data)
//    }
//}
