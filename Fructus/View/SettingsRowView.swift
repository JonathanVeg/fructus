//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Jonathan Goncalves da Silva on 04/10/21.
//

import SwiftUI

struct SettingsRowView: View {
    var name: String
    var content: String? = nil
    
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination: URL(string: "http://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Foo", content: "Bar")
                .padding()
                .previewLayout(.fixed(width: 375, height: 60))
            SettingsRowView(name: "Foo", linkLabel: "foo.com", linkDestination: "twitter.com")
                .padding()
                .previewLayout(.fixed(width: 375, height: 60))
                .preferredColorScheme(.dark)
        }
    }
}
