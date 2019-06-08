//
//  TimelineView.swift
//  SwiftUI_IG
//
//  Created by Kananat Suwanviwatana on 2019/06/08.
//  Copyright © 2019 Kananat Suwanviwatana. All rights reserved.
//

import SwiftUI

struct TimelineView: View {
    
    var body: some View {
        NavigationView {
            List {
                ScrollView(showsHorizontalIndicator: false) {
                    HStack(spacing: 24) {
                        ForEach(mock.stories) { story in
                            story.view
                        }
                    }
                    .padding(.top, 8)
                    .padding(.leading, 12)
                    .padding(.trailing, 12)
                }
                .frame(height: 108)
                .padding(.leading, -12)
                .padding(.trailing, -12)
                
                ForEach(mock.posts) { post in
                    post.view
                }
            }
            .navigationBarTitle(Text("Timeline"))
        }
    }
}
