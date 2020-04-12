//
//  ContentView.swift
//  test
//
//  Created by Jan Hovland on 12/04/2020.
//  Copyright © 2020 Jan Hovland. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(1 ... 10, id: \.self) { index in
                    NavigationLink(destination: DetailView(value: index)) {
                        Text("Link \(index)")
                    }
                }

            }
        }
        .listStyle(SidebarListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DetailView: View {
    var value: Int
    
    var body: some View {
        Text("Detail Link for index " + String(value))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
