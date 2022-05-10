# Bottom Sheet
**A customizable sheet for SwiftUI.** 
*Choose between medium and large, select background, set corner radius and optional display of the indicator.*

## How To Install
- Open your **Swift** project in **Xcode**
- Click on **File** -> **Add Packages**
- Enter `https://github.com/dwancin/BottomView` for the package repository URL
- Select **Branch**: master
- **Done! 👌**




## How To Use
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
