//
//  SwiftUIView.swift
//  TeenfullyApp
//
//  Created by Rohan Tamhankar on 7/27/23.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var password: String = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        SecureField("Password", text: $password)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
