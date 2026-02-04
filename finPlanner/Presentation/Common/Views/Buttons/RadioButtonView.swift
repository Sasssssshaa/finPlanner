//
//  RadioButtonView.swift
//  finPlanner
//
//  Created by Admin on 03.02.26.
//

import SwiftUI

struct RadioButtonView: View {
    @Binding var isSelected: Bool
    var body: some View {
        ZStack {
            Circle()
                .stroke(.appYellow, lineWidth: 2)
                .frame(width: 26)
            if isSelected {
                Circle()
                    .fill(.appYellow)
                    .frame(width: 12)
            }
        }
        .onTapGesture {
            isSelected.toggle()
        }
    }
}

