//
//  View.ext.swift
//  finPlanner
//
//  Created by Admin on 16.01.26.
//

import SwiftUI

extension View {
    func cygre(_ font: Cygre = .regular, _ size: CGFloat = 14) -> some View {
        self
            .font(.custom(font.rawValue, size: size))
    }
}

