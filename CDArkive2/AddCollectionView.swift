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
            TextField("ASIN", value: $collection.asin, format: .number)
        }
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
