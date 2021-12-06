# BottomSheet

## example:
 struct ContentView: View {
    @State private var isPresented = false*
    
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
