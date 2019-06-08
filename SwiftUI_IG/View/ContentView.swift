//
//  ContentView.swift
//  SwiftUI_IG
//
//  Created by Kananat Suwanviwatana on 2019/06/06.
//  Copyright © 2019 Kananat Suwanviwatana. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var input: String = ""
    
    var body: some View {
        VStack {
            TimelineView()
            // DebugView(input: $input)
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
