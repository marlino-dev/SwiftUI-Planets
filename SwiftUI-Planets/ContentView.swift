//
//  ContentView.swift
//  SwiftUI-Planets
//
//  Created by Marlon Orellana on 5/14/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
            TabView {
                CardView(planet: "Mercury", topColor: .black, bottomColor: .gray, image: "mercury", description: "Mercury is the smallest planet in the Solar System and the closest to the Sun. Its orbit around the Sun takes 87.97 Earth days, the shortest of all the Sun's planets.", url: "https://en.wikipedia.org/wiki/Mercury_(planet)")
                CardView(planet: "Venus", topColor: .yellow, bottomColor: .orange, image: "venus", description: "Venus is the second planet from the Sun. Venus orbits the Sun every 224.7 Earth days.", url: "https://en.wikipedia.org/wiki/Venus")
                CardView(planet: "Earth", topColor: .blue, bottomColor: .green, image: "earth", description: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. Earth orbits around the Sun in about 365.25 days.", url: "https://en.wikipedia.org/wiki/Earth")
                CardView(planet: "Mars", topColor: .orange, bottomColor: .red, image: "mars", description: "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, being larger than only Mercury. In English, Mars carries the name of the Roman god of war and is often referred to as the \"Red Planet\".", url: "https://en.wikipedia.org/wiki/Mars")
                CardView(planet: "Jupiter", topColor: Color("brown"),  bottomColor: .gray, image: "jupiter", description: "Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass (more than) two and a half times that of all the other planets in the Solar System combined.", url: "https://en.wikipedia.org/wiki/Jupiter")
                CardView(planet: "Saturn", topColor: Color("deepbrown"), bottomColor: Color("s_yellow"), image: "saturn", description: "Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine and a half times that of Earth.", url: "https://en.wikipedia.org/wiki/Saturn")
                CardView(planet: "Uranus", topColor: .blue, bottomColor: Color("cyan"), image: "uranus", description: "Uranus is the seventh planet from the Sun. It has the third-largest planetary radius and fourth-largest planetary mass in the Solar System.", url: "https://en.wikipedia.org/wiki/Uranus")
                CardView(planet: "Neptune", topColor: .purple, bottomColor: .blue, image: "neptune", description: "Neptune is the eighth and farthest-known Solar planet from the Sun. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet.", url: "https://en.wikipedia.org/wiki/Neptune")
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    
    var planet: String
    var topColor: Color
    var bottomColor: Color
    var image: String
    var description: String
    var url: String
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .top, endPoint: .bottom)
                .cornerRadius(20.0)
            VStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
                    .padding()
                
                Text(planet)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                    .padding()
                
                Text(description)
                    .font(.system(size: 20, weight: .light, design: .default))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 480)
                
                Spacer()
                LearnMoreButtonView(url: self.url)
                Spacer()
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .padding(.horizontal, 20)
    }
}
