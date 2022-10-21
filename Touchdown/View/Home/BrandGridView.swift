//
//  BrandGridView.swift
//  Touchdown
//
//  Created by intozoom on 8/25/21.
//

import SwiftUI

struct BrandGridView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout,spacing: columnSpacing, pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/, content: {
                ForEach(brands){ brand in
                    BrandItemView(brand: brand)
                } //: LOOP
            }) //: Grid
            .frame(height: 200)
            .padding(15)
        }) //: SCROLL
    }
}

//MARK: - PREVIEW

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
