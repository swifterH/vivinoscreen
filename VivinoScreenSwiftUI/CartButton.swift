//
//  BarButtons.swift
//  VivinoScreenSwiftUI
//
//  Created by Micaela Cavallo on 12/12/2019.
//  Copyright © 2019 Micaela Cavallo. All rights reserved.
//

import SwiftUI

struct CartButton: View {
    var body: some View {
        Button(action: {}) {
            Image(systemName: "cart.fill")
                .font(.system(size: 20))
        }.foregroundColor(Color.white)
            .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 20))
    }
}

struct BellButton: View {
    var body: some View {
        Button(action: {}) {
            Image(systemName: "bell.fill")
                .font(.system(size: 20))
        }.foregroundColor(Color.white)
            .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 20))
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton()
    }
}
