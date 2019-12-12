//
//  SegmentedPicker.swift
//  VivinoScreenSwiftUI
//
//  Created by Micaela Cavallo on 12/12/2019.
//  Copyright © 2019 Micaela Cavallo. All rights reserved.
//

import SwiftUI


struct SegmentedPicker: View {
    
    
    @State private var favoriteColor = 0 //for the segmented bar view
    var body: some View {
        Picker(selection: $favoriteColor, label: Text("How would you like to browse for wine?")) {
            Text("Type").tag(0)
            Text("Pairing").tag(1)
            Text("Style").tag(2)
        }.pickerStyle(SegmentedPickerStyle())
            .background(Color.white)
            .frame(width: 300, height: 10, alignment: .leading)
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
    }
}

struct SegmentedPicker_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedPicker()
    }
}
