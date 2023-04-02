//
//  ContentView.swift
//  CountryList
//
//  Created by MYS on 4/2/23.
//

import SwiftUI

struct ContentView: View {
    let countries = ["United States", "Canada", "Mexico", "Brazil", "Argentina"]
    let capitals = ["Washington D.C.", "Ottawa", "Mexico City", "Brasília", "Buenos Aires"]

    var body: some View {
        NavigationView {
            List(0..<countries.count) { index in
                NavigationLink(destination: CountryDetailView(country: countries[index], capital: capitals[index])) {
                    Text(countries[index])
                }
            }
            .navigationTitle("Countries")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CountryDetailView: View {
    let country: String
    let capital: String

    var body: some View {
        VStack {
            Image(country)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)

            Text(country)
                .font(.largeTitle)
                .bold()

            Text("Capital: \(capital)")
                .font(.title2)
                .foregroundColor(.gray)
        }
        .navigationTitle(country)
    }
}

