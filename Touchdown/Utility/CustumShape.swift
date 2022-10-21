//
//  CustumShape.swift
//  Touchdown
//
//  Created by intozoom on 8/25/21.
//

import SwiftUI

struct CustumShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}

//MARK: - PREVIEW

struct CustumShape_Previews: PreviewProvider {
    static var previews: some View {
        CustumShape()
            .previewLayout(.fixed(width: 428, height: 120))
            .padding()
    }
}
