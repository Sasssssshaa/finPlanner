//
//  MainViewContentHeader.swift
//  finPlanner
//
//  Created by Admin on 19.01.26.
//

import SwiftUI

struct MainViewContentHeader: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Борг")
                    .cygre(.black, 16)
                    .foregroundStyle(.appYellow)
                Spacer()
                HStack(spacing: 16) {
                    Button {
                        //
                    } label: {
                        Text("Щомісяця")
                            .cygre(.black, 12)
                            .foregroundStyle(.white)
                    }
                    Button {
                        //
                    } label: {
                        Text("одноразово")
                            .cygre(.light, 12)
                            .foregroundStyle(.white)
                    }


                }
            }
            
            HStack(spacing: 4) {
                Text("$ 25.000 /")
                    .cygre(.black, 14)
                Text("Кожен місяць")
                    .cygre(.regular, 14)
            }
            .foregroundStyle(.white)
        }
    }
}

