//
//  ContentView.swift
//  boeksearch
//
//  Created by Thibaud Traen on 25/02/2025.
//

import SwiftUI
struct ContentView: View {
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
                    TextField("Books & Audiobooks", text: .constant(""))
                        .padding(10)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                    
                    Image(systemName: "mic.fill")
                        .foregroundColor(.gray)
                }.navigationTitle("Search")
                    .padding(.horizontal).font(.custom("Serif", size: 24))
                Spacer()
                HStack{
                    Text("Trending").font(.title3)
                        .bold().padding([.top, .horizontal])
                        .font(.custom("Serif", size: 20))
                    Spacer()
                }
                List(trendingSearches, id: \..self) { search in
                    Label(search, systemImage: "magnifyingglass").foregroundColor(.gray)
                        .font(.custom("Serif", size: 18))
                    
                    
                }.listStyle(PlainListStyle())
                Text("Learn more about search result")
                Spacer()
            }
        }
    }
}

struct MainTabView: View {
    var body: some View {
        TabView {
            ContentView()
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
struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

    #Preview {
        ContentView()
        
    }
