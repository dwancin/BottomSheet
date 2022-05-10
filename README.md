# Bottom Sheet
**A customizable sheet for SwiftUI.** 
*Choose between medium and large, select background, set corner radius and optional display of the indicator.*

## Install
- Open your project in **Xcode**
- Go to **Add Packages**
- Enter the **package repository URL** 
`https://github.com/dwancin/BottomView`




## Example

### ContentView.swift
```` 
import SwiftUI
import BottomSheet

 struct ContentView: View {
    @State private var isPresented = false
    
    struct ContentView: View {
    @State private var showSheet = false
    var body: some View {
        
        NavigationView {
            Text("show sheet")
           .onTapGesture(perform: { showSheet.toggle()})
            }
        
            .bottomSheet(isPresented: $showSheet, prefersGrabberVisible: true, prefersEdgeAttachedInCompactHeight: true, widthFollowsPreferredContentSizeWhenEdgeAttached: true, prefersScrollingExpandsWhenScrolledToEdge: true, preferredCornerRadius: 23, detents: [.medium(), .large()]) {
                Text("hide sheet")
               .onTapGesture(perform: { showSheet.toggle()})
            }
        }
        .navigationViewStyle(.stack)
    }
```` 
