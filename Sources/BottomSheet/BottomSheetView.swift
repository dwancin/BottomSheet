//***************************************
//**  Created by @dwancin              **
//**  Daniel Ialcin Misser Westergaard **
//***************************************


import UIKit
import SwiftUI


@available(iOS 15.0, *)
struct BottomSheetView<Content: View>: UIViewControllerRepresentable {
    
    @Binding var isPresented: Bool
    let prefersGrabberVisible: Bool
    let prefersEdgeAttachedInCompactHeight: Bool
    let widthFollowsPreferredContentSizeWhenEdgeAttached: Bool
    let prefersScrollingExpandsWhenScrolledToEdge: Bool
    let preferredCornerRadius: CGFloat
    let detents: [UISheetPresentationController.Detent]
    @ViewBuilder let content: Content
    
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    func makeUIViewController(context: Context) -> UIViewController {
        let controller = UIViewController()
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        if isPresented {
            
            let sheetController = BottomSheetController(rootView: content, prefersGrabberVisible: prefersGrabberVisible, prefersEdgeAttachedInCompactHeight: prefersEdgeAttachedInCompactHeight, widthFollowsPreferredContentSizeWhenEdgeAttached: widthFollowsPreferredContentSizeWhenEdgeAttached, prefersScrollingExpandsWhenScrolledToEdge: prefersScrollingExpandsWhenScrolledToEdge, preferredCornerRadius: preferredCornerRadius, detents: detents)
            
            sheetController.presentationController?.delegate = context.coordinator
            DispatchQueue.main.async {
                uiViewController.present(sheetController, animated: true)
                isPresented.toggle()
            }
            
        }
    }
    
    final class Coordinator: NSObject, UISheetPresentationControllerDelegate {
        
        private let parent: BottomSheetView
        
        init(parent: BottomSheetView) {
            self.parent = parent
        }
        
        
        
    }
}
