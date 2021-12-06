//
//  BottomSheet
//
//  Created by @dwancin
//  Copyright (c) Daniel Ialcin Misser Westergaard. All rights reserved.
//
//


import SwiftUI
import UIKit
import Foundation


@available(iOS 15.0, *)
public extension View {
    func bottomSheet<Content: View>(isPresented: Binding<Bool>, indicator: Bool = true, background: Color, onDismiss: (() -> Void)? = nil, size: String, radius: Int, @ViewBuilder content: @escaping () -> Content) -> some View {
        self
            .background(BottomSheetView(isPresented: isPresented, content: content, indicator: indicator, background: background, onDismiss: onDismiss, size: size, radius: radius))
    }
}
