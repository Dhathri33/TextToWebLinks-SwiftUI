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
        List(items, id:\.self){ item in
            DropDownButton(item: item)
            Divider()
        }
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

