# ABSearchBar 



### Overview

This is a replacement of  `UISearchController` to put a search bar in the `UINavigationBar`. This is implemented with a simple `UITextField` which gives greater control via the `UITextFieldDelegate` methods. The delegate methods can be implemented to do any normal search operation and can be fully customized to appropriate look and feel.

<div align="center">
    <img src="/screenshot.png" width="400px"</img>
</div>


#### Usage
Make sure your `UIViewController` is embedded in a `UINavigationController` either through storyboard or programatically. Drop the `SearchBar.swift` file into your project, change the extension to your `UIViewController` class. That's it!


#### Customizations
The `SearchBar.swift`  file is pretty self explanatory.

Change the look and feel of your Navigation Bar by customizing these lines of code

```
self.navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
self.navigationController?.navigationBar.shadowImage = nil
self.navigationController?.navigationBar.isTranslucent = false
self.navigationController?.navigationBar.tintColor = nil
```

Customize the look and feel of the search bar by modifying these lines of code

```
searchBar.frame = CGRect(x: 0, y: 0, width: 340, height: 34)
let centeredParagraphStyle = NSMutableParagraphStyle()
centeredParagraphStyle.alignment = .left
let attributes = [
    NSAttributedStringKey.foregroundColor: UIColor(hex: "#37474F"),
    NSAttributedStringKey.paragraphStyle: centeredParagraphStyle
]
self.searchBar.layer.cornerRadius = 15
self.searchBar.backgroundColor = UIColor(hex: "#ECEFF1")
let centerText = NSMutableAttributedString(string: "Search", attributes: attributes)
self.searchBar.attributedPlaceholder = centerText
```

Change the search bar search glass icon by modifying this-

`let image = UIImage(named: "searchfield")`

Please feel free to fork or clone.




>MIT License, Copyright (c) 2018 Anjanava Biswas
