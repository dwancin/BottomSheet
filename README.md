# Bottom Sheet
**Customizable sheet for SwiftUI.** 

## Install
- Open a project in **Xcode**
- Go to **Add Packages**
- Enter the **package repository URL** 
`https://github.com/dwancin/BottomView`




## Usage
#### properties
- **isPresented** *This controls whether the sheet is hidden or shown'.*
- **prefersGrabberVisible** *Set to 'true' to show a grabber at the top of the sheet.*
- **prefersEdgeAttachedInCompactHeight** *Set to 'true' to show a grabber at the top of the sheet.*
- **widthFollowsPreferredContentSizeWhenEdgeAttached** *Set to 'true' to allow preferredContentSize to influence the width of the sheet when edge-attached.*
- **prefersScrollingExpandsWhenScrolledToEdge** *If there is a larger detent to expand to than the selected detent, and a descendent scroll view is scrolled to top, this controls whether scrolling down will expand to a larger detent.*
- **preferredCornerRadius** *The preferred corner radius of the sheet when presented.*

### Example
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
