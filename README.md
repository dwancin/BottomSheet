# BottomSheet

## Download

- File -> Swift Packages -> Add Package Dependency...
- Select your project
- Enter `https://github.com/dwancin/BottomView` for the package repository URL
- Select **Branch**: master
- Click **Done 👌**


## example:
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
            
        
            .navigationTitle("BottomSheet")
            .navigationBarTitleDisplayMode(.large)
        }
        .navigationViewStyle(.stack)
    }
}
```` 
