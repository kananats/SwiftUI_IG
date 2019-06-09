//
//  StoryView.swift
//  SwiftUI_IG
//
//  Created by Kananat Suwanviwatana on 2019/06/08.
//  Copyright © 2019 Kananat Suwanviwatana. All rights reserved.
//

import SwiftUI

extension Story {
    struct View: SwiftUI.View {
        let story: Story
        
        @State private var visible = false
        
        @State private var dashPhase: Length = 0
        
        var body: some SwiftUI.View {
            VStack {
                Image(uiImage: story.content.image!.cropToSquare())
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 75, height: 75)
                    .clipped()
                    .overlay(Circle().inset(by: -2.5).stroke(AngularGradient(gradient: Gradient(colors: Color.instagram), center: .center), style: StrokeStyle(lineWidth: 5, dash: [7.5, 2.5], dashPhase: dashPhase)))
                    .overlay(Circle().inset(by: -1.25).stroke(Color.white, lineWidth: 2.5))
                    .shadow(radius: 4)
                    .opacity(visible ? 1 : 0)
                    .onAppear {
                        withAnimation(Animation.basic(duration: 1).delay(0.35 * Double(self.story.id))) {
                            self.visible = true
                        }
                    }
                    .tapAction {
                        withAnimation(.basic(duration: 0.8, curve: .easeOut)) {
                            self.dashPhase -= 45
                        }
                    }

                Text(story.user.name)
                    .font(.caption)
            }
        }
    }
}
