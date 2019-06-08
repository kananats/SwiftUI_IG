//
//  Post.swift
//  SwiftUI_IG
//
//  Created by Kananat Suwanviwatana on 2019/06/08.
//  Copyright © 2019 Kananat Suwanviwatana. All rights reserved.
//

import SwiftUI

struct Post: Identifiable {
    let id = sharedId
    
    let user: User
    let content: Content
    
    var view: View {
        return View(post: self)
    }
}

private extension Post {
    static var _sharedId = 0
    
    static var sharedId: Int {
        get {
            _sharedId += 1
            return _sharedId
        }
    }
}
