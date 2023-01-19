# Variable Fonts


<p align="center">
  <img src="https://user-images.githubusercontent.com/92727947/213304769-b37f027c-a8b2-49f0-b4d8-35a947bf763b.gif" width="250"/>
</p>

#### What are variable fonts?

A variable font is an **OpenType** font format that includes new technology called **OpenType Format Variantions**.

## Axes

In variable fonts, “axis” usually refers to a single aspect of a typeface’s design that can be altered by the user.
Common axes include Italic, Optical Size, Slant, Weight, and Width, all five of which are registered (defined) in the OpenType file format specification.

>❗️ You can download google font! ([Roboto-Flex](https://fonts.google.com/specimen/Roboto+Flex)).


#### Roboto-Flex Font

In this project, I use **Roboto-Flex** font. This font has a lot of axis. 
We need to work with axes id's. 

#### Axis Id's
```swift
public enum FontVariations: Int, CustomStringConvertible {
    case weight = 2003265652
    case width = 2003072104
    case opticalSize = 1869640570
    case grad = 1196572996
    case slant = 1936486004
    case xtra = 1481921089
    case xopq = 1481592913
    case yopq = 1498370129
    case ytlc = 1498696771
    case ytuc = 1498699075
    case ytas = 1498693971
    case ytde = 1498694725
    case ytfi = 1498695241 
}
```

## Usage

First, you need to add the custom variable font to your project. 


``` 
Text("Variable Fonts Example Text")
                .font(.variableFont( 24.0,
                                     axes: [FontVariations.weight.rawValue:400]))

```



#### NOTE:

You can try with other font sample. You need to add your new font and change name for this line :

> UIFontDescriptor(fontAttributes: [.name: "Roboto Flex", kCTFontVariationAttribute as UIFontDescriptor.AttributeName: axes])
