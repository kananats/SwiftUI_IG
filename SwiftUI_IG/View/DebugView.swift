//
//  DebugView.swift
//  SwiftUI_IG
//
//  Created by Kananat Suwanviwatana on 2019/06/08.
//  Copyright © 2019 Kananat Suwanviwatana. All rights reserved.
//

import SwiftUI

struct DebugView: View {
    let input: Binding<String>
    
    var body: some View {
        TextField(input, placeholder: Text("Debug Field"))
    }
}
