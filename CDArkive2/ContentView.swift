//
//  ContentView.swift
//  CDArkive2
//
//  Created by Mark Strijdom on 07/08/2024.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    
    @Query var songCollections: [SongCollection]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(songCollections) { collection in
                    VStack {
                        Text(collection.collectionName)
                            .font(.headline)
                    }
                }
                .onDelete(perform: deleteCollection)
            }
            .navigationTitle("CD Arkive 2")
        }
    }
    
    func deleteCollection(_ indexSet: IndexSet) {
        for i in indexSet {
            let collection = songCollections[i]
            modelContext.delete(collection)
        }
    }
}

#Preview {
    ContentView()
}
