//
//  ContentView.swift
//  MenusInSwiftUI
//
//  Created by ramil on 05.08.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var sort: Int = 0
    
    var body: some View {
        Text("SwiftUI")
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Menu {
                        Picker(selection: $sort, label: Text("Sorting options")) {
                            Text("Size").tag(0)
                            Text("Date").tag(1)
                            Text("Location").tag(2)
                        }
                    }
                    label: {
                        Label("Sort", systemImage: "arrow.up.arrow.down")
                    }
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
