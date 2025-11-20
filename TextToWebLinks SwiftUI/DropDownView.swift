//
//  DropDownView.swift
//  TextToWebLinks SwiftUI
//
//  Created by Dhathri Bathini on 11/20/25.
//

import SwiftUI

struct DropDownView: View {
    let items: [String]
    let onSelected : (String) -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ForEach(items, id: \.self) { item in
                DropDownButton(item: item)
                Divider()
            }
        }
        .background(Color(.systemBackground))
        .cornerRadius(10)
        .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 5)
        .padding(.horizontal)
    }
    
    func DropDownButton(item: String) -> some View {
        Button {
            onSelected(item)
        } label: {
            HStack {
                Image(systemName: "link")
                    .foregroundColor(.blue)
                Text(item)
                    .foregroundColor(.primary)
            }
            .padding(.vertical, 12)
            .padding(.horizontal)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

