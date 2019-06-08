//
//  Content.swift
//  SwiftUI_IG
//
//  Created by Kananat Suwanviwatana on 2019/06/08.
//  Copyright © 2019 Kananat Suwanviwatana. All rights reserved.
//

import UIKit

struct Content {
    let text: String?
    let date: Date?
    let image: UIImage?
    
    init(text: String? = nil, date: Date? = nil, image: UIImage? = nil) {
        self.text = text
        self.date = date
        self.image = image
    }
}
