//
//  ContentView.swift
//  TextToWebLinks SwiftUI
//
//  Created by Dhathri Bathini on 11/20/25.
//

import SwiftUI

struct ContentView: View {
    @State var text = ""
    @State var dropdownItems: [String] = []
    @State var selectedURL: URL?
    @State var isPresented: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack {
            HeaderView()
            TextFieldView
            Spacer()
        }
        .padding()
        .sheet(isPresented: $isPresented) {
            
        }
    }
}

struct HeaderView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Text To Web")
                .font(.title)
                .bold()
            Text("Convert text to clickable web links instantly")
                .font(.subheadline)
                .foregroundStyle(.gray)
        }
    }
}

extension ContentView {
    var TextFieldView: some View {
        TextField("Enter text here", text: $text)
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(10)
    }
    
    var WebViewSection: some View {
        VStack {
            if isLoading {
                ProgressView("Loading...")
                    .padding()
            }
            if let url = selectedURL {
                WebView(url: url, isLoading: $isLoading)
            }
        }
    }
}

#Preview {
    ContentView()
}
