//
//  RatingsSizesDetailView.swift
//  Touchdown
//
//  Created by intozoom on 8/25/21.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    let sizes: [String] = ["XS","S","M","L","XL"]
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            // RATING
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGrey)
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(0 ..< 5 , id:\.self) { item in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28 , alignment: .center)
                                .background(colorGrey.cornerRadius(5))
                                .foregroundColor(.white)
                        })
                    } //: BUTTON
                }) //: HSTACK
            }) //: VSTACK
            Spacer()
            
            // SIZES
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGrey)
                HStack{
                    ForEach(sizes, id: \.self) { size in
                        Button(action: {}, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGrey)
                                .frame(width: 28, height: 28 , alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGrey, lineWidth: 2)
                                )
                        }) //: BUTTON
                    } //: LOOP
                } // HSTACK
            }) //: VStack
            
        }) //: HSTACK
    }
}

//MARK: - PREVIEW

struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
