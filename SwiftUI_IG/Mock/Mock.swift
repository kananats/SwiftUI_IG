//
//  Mock.swift
//  SwiftUI_IG
//
//  Created by Kananat Suwanviwatana on 2019/06/08.
//  Copyright © 2019 Kananat Suwanviwatana. All rights reserved.
//

import UIKit

let mock = Mock()

struct Mock {
    let posts = [post_1, post_2, post_3]
    
    let stories = [story_1, story_2, story_3, story_4]
}

private let user_1 = User(name: "kanaminori", image: UIImage(named: "photo_1")!)

private let content_1 = Content(text: "Lunch!!!", date: Date().addingTimeInterval(-3600), image: UIImage(named: "photo_2")!)

private let content_2 = Content(text: "Tokyo at night", date: Date().addingTimeInterval(-3600 * 2), image: UIImage(named: "photo_3")!)

private let content_3 = Content(text: "🌺", date: Date().addingTimeInterval(-3600 * 4), image: UIImage(named: "photo_4")!)

private let content_4 = Content(image: UIImage(named: "photo_5")!)

private let content_5 = Content(image: UIImage(named: "photo_6")!)

private let content_6 = Content(image: UIImage(named: "photo_7")!)

private let content_7 = Content(image: UIImage(named: "photo_8")!)


private let post_1 = Post(user: user_1, content: content_1)

private let post_2 = Post(user: user_1, content: content_2)

private let post_3 = Post(user: user_1, content: content_3)

private let story_1 = Story(user: user_1, content: content_4)

private let story_2 = Story(user: user_1, content: content_5)

private let story_3 = Story(user: user_1, content: content_6)

private let story_4 = Story(user: user_1, content: content_7)
