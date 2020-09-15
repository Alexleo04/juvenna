//
//  ContentView.swift
//  Juvenna
//
//  Created by Aleksey Leonov on 10/09/2020.
//  Copyright © 2020 Aleksey Leonov. All rights reserved.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        WebView(startPage: "https://duckduckgo.com/")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WebView: NSViewRepresentable {
    var startPage: String
    func makeNSView(context: Context) -> WKWebView {
        let view = WKWebView()
        if let startPageUrl = URL(string: startPage) {
            view.load(URLRequest(url: startPageUrl))
        }
        return view
    }
    func updateNSView(_ view: WKWebView, context: Context) {
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
