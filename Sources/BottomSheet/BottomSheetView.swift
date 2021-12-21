//
//  BottomSheet
//  
//  Created by @dwancin
//  Copyright (c) Daniel Ialcin Misser Westergaard. All rights reserved.
//
//


import Foundation
import UIKit
import SwiftUI


@available(iOS 15.0, *)
struct BottomSheetView<Content: View>: UIViewControllerRepresentable {
    
    @Binding var isPresented: Bool
    @ViewBuilder let content: Content
    let indicator: Bool
    let background: Color
    let onDismiss: (() -> Void)?
    let size: String
    let radius: Int
    
    
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    func makeUIViewController(context: Context) -> UIViewController {
        let controller = UIViewController()
        controller.view.backgroundColor = .clear
        
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        if isPresented {
            let sheetController = BottomSheetViewController(rootView: content, showIndicator: indicator, background: background, size: size, radius: radius)
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
        
        func presentationControllerDidDismiss(_ presentationController: UIPresentationController) {
            parent.onDismiss?()
        }
    }
}


@available(iOS 15.0, *)
final class BottomSheetViewController<Content: View>: UIHostingController<Content> {
    
    private let indicator: Bool
    private let background: Color
    private let size: String
    private let radius: Int
    
    @AppStorage("isDarkMode") private var isDark = false
    
    init(rootView: Content, showIndicator: Bool, background: Color, size: String, radius: Int) {
        self.indicator = showIndicator
        self.background = background
        self.size = size
        self.radius = radius
        super.init(rootView: rootView)
    }
    
    @MainActor @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        if let presentationController = presentationController as? UISheetPresentationController {
            view.layer.cornerRadius = CGFloat(Int(radius))
            view.backgroundColor = UIColor(background)
            
            @Environment(\.presentationMode) var presentationMode
            .environment(\.colorScheme, isDark ? .dark : .light)
            .preferredColorScheme(isDark ? .dark : .light)
            
            
            if size == "medium" {
                presentationController.detents = [.medium()]
            } else if size == "large" {
                presentationController.detents = [.large()]
            } else {
                presentationController.detents = [.large(), .medium()]
            }
            presentationController.prefersGrabberVisible = indicator
        }
    }
}

