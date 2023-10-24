//
//  OffsetReader.swift
//  BankingUI
//
//  Created by Aayush kumar on 20/10/23.
//

import SwiftUI

/// Offset Preference key

struct OffsetKey: PreferenceKey {
    static var defaultValue: CGRect = .zero
    
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {
        value = nextValue()
    }
}

extension View {
    /// Offset View Modifier
    @ViewBuilder
    func offsetX(_ addObserver: Bool, completion: @escaping (CGRect) -> ()) -> some View {
        self
            .frame(maxWidth: .infinity)
            .overlay {
                if addObserver {
                    GeometryReader {
                                let rect = $0.frame(in: .global)
                                
                                Color.clear
                                    .preference(key: OffsetKey.self, value: rect)
                                    .onPreferenceChange(OffsetKey.self, perform: completion)
                    }
                }
            }
    }
}
