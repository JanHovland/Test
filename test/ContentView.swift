//
//  ContentView.swift
//  test
//
//  Created by Jan Hovland on 12/04/2020.
//  Copyright © 2020 Jan Hovland. All rights reserved.
//

import SwiftUI
import WebKit

struct TestView : NSViewRepresentable {
    var value: String
    func makeNSView(context: Context) -> WKWebView  {
        let view = WKWebView()
//        if let url = URL(string: "https://www.duckduckgo.com/") {
        if let url = URL(string: value) {
            view.load(URLRequest(url: url))
        }
        return view
    }

    func updateNSView(_ view: WKWebView, context: Context) {
    }

}


struct ContentView: View {
    var body: some View {
        TestView(value: "https://www.duckduckgo.com/")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        NavigationView {
//            List {
//                ForEach(1 ... 10, id: \.self) { index in
//                    NavigationLink(destination: DetailView(value: index)) {
//                        Text("Link \(index)")
//                    }
//                }
//
//            }
//        }
//        .listStyle(SidebarListStyle())
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//struct DetailView: View {
//    var value: Int
//
//    var body: some View {
//        Text("Detail Link for index " + String(value))
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//    }
//}
