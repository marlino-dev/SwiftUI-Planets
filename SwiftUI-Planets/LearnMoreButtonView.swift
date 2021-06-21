//
//  LearnMoreButton.swift
//  SwiftUI-Planets
//
//  Created by Marlon Orellana on 5/14/21.
//

import SwiftUI
import SafariServices

struct LearnMoreButtonView: View {
    
    @State var showSafari = false
    
    var url: String
    
    var body: some View {
        Button(action: {
            self.showSafari = true
        }, label: {
            HStack(spacing: 8) {
                Text("Learn More")
                
                Image(systemName: "chevron.right.circle")
                    .imageScale(.large)
            }
            .padding()
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        })
        .sheet(isPresented: $showSafari, content: {
            SafariView(url: URL(string: self.url)!)
        })
        .padding()
        .accentColor(.white)
    }
}

struct SafariView: UIViewControllerRepresentable {

    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }

}
