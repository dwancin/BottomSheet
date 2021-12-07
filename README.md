# Bottom Sheet
**A customizable sheet for SwiftUI.** 
*Choose between medium and large, select background, set corner radius and optional display of the indicator.*

## Download
- Open your Swift project in **Xcode**
- File -> Add Packages
- Enter `https://github.com/dwancin/BottomView` for the package repository URL
- Select **Branch**: master
- **Done! 👌**




## Example Of Use
```` 
 struct ContentView: View {
    @State private var isPresented = false
    
    var body: some View {
        NavigationView {
            Form {
                   Section {
                   Button("present sheet", action: {
                       isPresented.toggle() })
                   }
               }
            
            .bottomSheet(isPresented: $isPresented, indicator: true, background: .white, size: "medium", radius: 25) {
                Text("Hello World!")
            }
        
            .navigationTitle("BottomSheet")
            .navigationBarTitleDisplayMode(.large)
        }
        .navigationViewStyle(.stack)
    }
}
```` 
