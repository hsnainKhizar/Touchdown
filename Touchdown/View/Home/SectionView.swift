//
//  SectionView.swift
//  Touchdown
//
//  Created by intozoom on 8/25/21.
//

import SwiftUI

struct SectionView: View {
    //MARK: - PROPERTIES
    @State var rotationClockWise: Bool
    //MARK: - BODY
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotationClockWise ? 90 : -90))
            Spacer()
        }
        .background(colorGrey.cornerRadius(12))
        .frame(width: 85)
    }
}

//MARK: - PREVIEW

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotationClockWise: true)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
