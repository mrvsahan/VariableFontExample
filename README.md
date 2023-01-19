# Variable Fonts


<p align="center">
  <img src="https://user-images.githubusercontent.com/92727947/213400987-efc8221d-d5bd-4348-9ee2-09e04439513c.gif" width="250"/>
</p>

#### What are variable fonts?

A variable font is an **OpenType** font format that includes new technology called **OpenType Format Variantions**.

## Axes

In variable fonts, “axis” usually refers to a single aspect of a typeface’s design that can be altered by the user.
Common axes include Italic, Optical Size, Slant, Weight, and Width, all five of which are registered (defined) in the OpenType file format specification.



## User Axes
The most common user axes are the staples of typography: Weight, Width, Italic, Slant, Grade, and Optical Size. 
> The only one of these six that Roboto Flex doesn’t contain is Italic—and that’s because it has an equivalent Slant axis, so it isn’t necessary.


- [Weight](https://fonts.google.com/knowledge/glossary/weight)
*Weight is the overall thickness of a typeface’s stroke in any given font.*

- [Width](https://fonts.google.com/knowledge/glossary/width)
*Width is the result of how much horizontal space is taken up by a typeface’s characters.*

- [Optical Size](https://fonts.google.com/knowledge/glossary/optical_size_axis)
*“Optical Size” (controlled with font-optical-sizing or font-variation-setting: ‘opsz’ VALUE in CSS) is an axis found in some variable fonts.*

- [Slant](https://fonts.google.com/knowledge/glossary/slant_axis)
*Slant (slnt in CSS) is an axis found in some variable fonts.*

- [Grade](https://fonts.google.com/knowledge/glossary/grade_axis)
*“Grade” (GRAD in CSS) is an axis found in some variable fonts that can be used to alter stroke thicknesses (or other forms) without affecting the type’s overall width, inter-letter spacing, or kerning—unlike altering weight.*

- [Xtra](https://fonts.google.com/knowledge/glossary/xtra_axis)
*“Parametric Counter Width” (XTRA in CSS) is a parametric axis, found in some variable fonts, that varies counter widths in the X dimension.*

- [Xopq](https://fonts.google.com/knowledge/glossary/xopq_axis)
*“Parametric Thick Stroke” (XOPQ in CSS) is a parametric axis, found in some variable fonts, for specifying and varying thick stroke weights, such as stems.*

- [Yopq](https://fonts.google.com/knowledge/glossary/yopq_axis)
*“Parametric Thin Stroke” (YOPQ in CSS) is a parametric axis, found in some variable fonts, for specifying and varying thin stroke weights, such as bars and hairlines.*

- [Ytlc](https://fonts.google.com/knowledge/glossary/ytlc_axis)
*“Parametric Lowercase Height” (YTLC in CSS) is a parametric axis, found in some variable fonts, for specifying and varying the height of counters and other spaces between the baseline and x-height.*

- [Ytuc](https://fonts.google.com/knowledge/glossary/ytuc_axis)
*“Parametric Uppercase Counter Height” (YTUC in CSS) is a parametric axis, found in some variable fonts, for specifying and varying the height of uppercase letterforms.*

- [Ytas](https://fonts.google.com/knowledge/glossary/ytas_axis)
*“Parametric Ascender Height” (YTAS in CSS) is a parametric axis, found in some variable fonts, for specifying and varying the height of lowercase ascenders.*

- [Ytfi](https://fonts.google.com/knowledge/glossary/ytfi_axis)
*“Parametric Figure Height” (YTFI in CSS) is a parametric axis, found in some variable fonts, for specifying and varying the height of figures by varying their counterforms.*



## Roboto-Flex Font

>❗️ You can download google font! ([Roboto-Flex](https://fonts.google.com/specimen/Roboto+Flex)).


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






