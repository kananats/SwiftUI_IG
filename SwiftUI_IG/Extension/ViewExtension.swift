//
//  ViewExtension.swift
//  SwiftUI_IG
//
//  Created by Kananat Suwanviwatana on 2019/06/09.
//  Copyright © 2019 Kananat Suwanviwatana. All rights reserved.
//

import SwiftUI

extension View {
    func debug(_ color: Color = .blue) -> _ModifiedContent<Self, _OverlayModifier<ShapeView<StrokedShape<Rectangle._Inset>, Color>>> {
        return overlay(Rectangle().inset(by: -0.5).stroke(color, lineWidth: 1))
    }
}
