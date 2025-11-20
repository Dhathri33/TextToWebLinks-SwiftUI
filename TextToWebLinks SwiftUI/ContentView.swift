//
//  ContentView.swift
//  TextToWebLinks SwiftUI
//
//  Created by Dhathri Bathini on 11/20/25.
//

import SwiftUI

struct ContentView: View {
    @State var text = ""
    var body: some View {
        VStack {
            HeaderView()
            TextFieldView
            Spacer()
        }
        .padding()
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
}

#Preview {
    ContentView()
}
