//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Roy Welborn on 12/29/22.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    //MARK: BODY
    var body: some View {
        VStack {
            HStack {
                Divider().padding(.vertical, 4)
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
                
            }
        }//: HSTACK
    }//: VSTACK
}

//MARK: PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: ("John Doe"))
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
            .preferredColorScheme(.dark)
        
    }
}
