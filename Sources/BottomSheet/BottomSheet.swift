//***************************************
//**  Created by @dwancin              **
//**  Daniel Ialcin Misser Westergaard **
//***************************************


import SwiftUI
import UIKit

@available(iOS 15.0, *)
public extension View {
    func bottomSheet<Content: View>(isPresented: Binding<Bool>, prefersGrabberVisible: Bool, prefersEdgeAttachedInCompactHeight: Bool, widthFollowsPreferredContentSizeWhenEdgeAttached: Bool, prefersScrollingExpandsWhenScrolledToEdge: Bool, preferredCornerRadius: CGFloat, detents: [UISheetPresentationController.Detent], @ViewBuilder content: @escaping () -> Content) -> some View {
        self
            .background(BottomSheetView(isPresented: isPresented, prefersGrabberVisible: prefersGrabberVisible, prefersEdgeAttachedInCompactHeight: prefersEdgeAttachedInCompactHeight, widthFollowsPreferredContentSizeWhenEdgeAttached: widthFollowsPreferredContentSizeWhenEdgeAttached, prefersScrollingExpandsWhenScrolledToEdge: prefersScrollingExpandsWhenScrolledToEdge, preferredCornerRadius: preferredCornerRadius, detents: detents, content: content))
    }
}
