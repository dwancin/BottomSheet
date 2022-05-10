# Bottom Sheet
**A customizable sheet for SwiftUI.** 

## Install
- Open a project in **Xcode**
- Go to **Add Packages**
- Enter the **package repository URL** 
`https://github.com/dwancin/BottomView`




## Example

### Code
```` 
.bottomSheet(
      isPresented: $isPresented, 
      prefersGrabberVisible: true, 
      prefersEdgeAttachedInCompactHeight: true, 
      widthFollowsPreferredContentSizeWhenEdgeAttached: true, 
      prefersScrollingExpandsWhenScrolledToEdge: true, 
      preferredCornerRadius: 23, 
      detents: [.medium(), .large()]) 
      {
      Text("This text appears inside the sheet.")                           
      }
````
