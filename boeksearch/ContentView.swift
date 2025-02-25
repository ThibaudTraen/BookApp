//
//  ContentView.swift
//  boeksearch
//
//  Created by Thibaud Traen on 25/02/2025.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        TabView {
            Text("Home")
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            BookView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            
            Text("Library")
                .tabItem {
                    Label("Library", systemImage: "books.vertical.fill")
                }
            
            Text("Book Store")
                .tabItem {
                    Label("Book Store", systemImage: "bag.fill")
                }
            
            Text("Audiobooks")
                .tabItem {
                    Label("Audiobooks", systemImage: "headphones")
                }
        }
    }
}

struct BookView: View {
    let trendingSearches = [
        "gratis",
        "will packer",
        "susan morrison",
        "the lexington letter",
        "the body keeps the score",
        "never split the difference",
        "how to win friends & influence people",
        "the 48 laws of power",
        "if she knew",
        "the you you are"
    ]
    
    var body: some View {
        NavigationStack{
            VStack {
                HStack {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        
                        TextField("Books & Audiobooks", text: .constant(""))
                            .padding(10)
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                        
                        Image(systemName: "mic.fill")
                            .foregroundColor(.gray)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(radius: 2)
                }.navigationTitle("Search")
                   .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .padding()
                Spacer()
                HStack{
                    Text("Trending")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .padding()
                    Spacer()
                }
                List(trendingSearches, id: \..self) { search in
                    Label(search, systemImage: "magnifyingglass")
                        
                       
                    
                }.listStyle(PlainListStyle())
                Text("Learn more about search result")
                Spacer()
            }
        }
    }
}

    #Preview {
        ContentView()
        
    }
