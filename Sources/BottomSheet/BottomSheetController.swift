//***************************************
//**  Created by @dwancin              **
//**  Daniel Ialcin Misser Westergaard **
//***************************************


import SwiftUI

@available(iOS 15.0, *)
final class BottomSheetController<Content: View>: UIHostingController<Content> {
    
    
    private let prefersGrabberVisible: Bool
    private let prefersEdgeAttachedInCompactHeight: Bool
    private let widthFollowsPreferredContentSizeWhenEdgeAttached: Bool
    private let prefersScrollingExpandsWhenScrolledToEdge: Bool
    private let preferredCornerRadius: CGFloat
    private let detents: [UISheetPresentationController.Detent]
   
    
    init(rootView: Content, prefersGrabberVisible: Bool, prefersEdgeAttachedInCompactHeight: Bool, widthFollowsPreferredContentSizeWhenEdgeAttached: Bool, prefersScrollingExpandsWhenScrolledToEdge: Bool, preferredCornerRadius: CGFloat, detents: [UISheetPresentationController.Detent]) {
        self.prefersGrabberVisible = prefersGrabberVisible
        self.prefersEdgeAttachedInCompactHeight = prefersEdgeAttachedInCompactHeight
        self.widthFollowsPreferredContentSizeWhenEdgeAttached = widthFollowsPreferredContentSizeWhenEdgeAttached
        self.prefersScrollingExpandsWhenScrolledToEdge = prefersScrollingExpandsWhenScrolledToEdge
        self.preferredCornerRadius = preferredCornerRadius
        self.detents = detents
        super.init(rootView: rootView)
    }
    
    @MainActor @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        if let presentationController = presentationController as? UISheetPresentationController {
            
     presentationController.detents = detents
     presentationController.prefersGrabberVisible = prefersGrabberVisible
     presentationController.prefersEdgeAttachedInCompactHeight = prefersEdgeAttachedInCompactHeight
     presentationController.widthFollowsPreferredContentSizeWhenEdgeAttached = widthFollowsPreferredContentSizeWhenEdgeAttached
     presentationController.prefersScrollingExpandsWhenScrolledToEdge = prefersScrollingExpandsWhenScrolledToEdge
     presentationController.preferredCornerRadius = preferredCornerRadius
            
            
        }
    }
}
