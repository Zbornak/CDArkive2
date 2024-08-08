//
//  AddCollectionView.swift
//  CDArkive2
//
//  Created by Mark Strijdom on 07/08/2024.
//

import SwiftData
import SwiftUI

struct AddCollectionView: View {
    @Bindable var collection: SongCollection
    
    var body: some View {
        Form {
            Section("collection type") {
                Picker("Collection type", selection: $collection.collectionType) {
                    Text("Album").tag(1)
                    Text("E.P.").tag(2)
                    Text("Single").tag(3)
                }
                .pickerStyle(.segmented)
            }
            
            Section("details") {
                TextField("ASIN", value: $collection.asin, format: .number)
                
                DatePicker("Release date", selection: $collection.releaseDate)
                
                TextField("Artist name", text: $collection.artistName)
                
                TextField("Collection name", text: $collection.collectionName)
            }

            Section("Notes") {
                TextField("Notes", text: $collection.notes, axis: .vertical)
            }
        }
        .navigationTitle("Edit collection")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    do {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: SongCollection.self, configurations: config)
        let example = SongCollection()
        return AddCollectionView(collection: example).modelContainer(container)
    } catch {
        fatalError("Failed to create model container.")
    }
}
