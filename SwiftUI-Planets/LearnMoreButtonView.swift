//
//  LearnMoreButton.swift
//  SwiftUI-Planets
//
//  Created by Marlon Orellana on 5/14/21.
//

import SwiftUI

struct LearnMoreButtonView: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            HStack(spacing: 8) {
                Text("Learn More")
                
                Image(systemName: "chevron.right.circle")
                    .imageScale(.large)
            }
            .padding()
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        })
        .padding()
        .accentColor(.white)
    }
}

struct LearnMoreButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LearnMoreButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
