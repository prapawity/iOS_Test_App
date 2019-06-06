//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by Prapawit Patthasirivichot on 4/6/2562 BE.
//  Copyright © 2562 Prapawit Patthasirivichot. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack {
            Text("Hello World").font(.title).color(.red).bold();
            Text("Testjijojojijijioj")
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}
#endif
