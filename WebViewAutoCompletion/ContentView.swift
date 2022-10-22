//
//  ContentView.swift
//  WebViewAutoCompletion
//
//  Created by mikaurakawa on 2022/10/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isShownWebView = false
    @State private var isShownSFSafariView = false
    private let url = URL(string: "https://kamimi01.github.io/StaticAssetSample/signup.html")!

    var body: some View {
        VStack(spacing: 20) {
            Button(action: {
                isShownWebView = true
            }) {
                Text("WebViewを開く")
            }
            .sheet(isPresented: $isShownWebView) {
                WebView(url: url)
            }

            Button(action: {
                isShownSFSafariView = true
            }) {
                Text("SFSafariViewを開く")
            }
            .sheet(isPresented: $isShownSFSafariView) {
                SFSafariView(url: url)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
