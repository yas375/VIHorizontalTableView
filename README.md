# Horizontal Table View

This simple project will help you to create and use  horizontal table views in your iOS application.

## How
We will rotate table view counterclockwise and its cells clockwise. I prefer to do this in separate classes, which are descendant from default UITablewView and UITablewViewCell. All work about rotating I will do in that descendants. And other concrete classesse will inherit from it.

## Why
I already saw at least two projects with not very nice implementation of this feature. There were used some not clear for understanding `setFrame:` calls for table view in controller's `viewDidLoad`. And frame for cell was set in cell itself with hardcoded numbers. 

I decided to clarify this for myself and I saw this task is very simple but needs some understanding and attention. So I decides to create this little project to move rotation logic out of my concrete classes and to give clear instructions how to accomplish this task.

## How to install
### Cocoapods (recommended)
Add to your Podfile:

```
dependency 'VIHorizontalTableView'
```

And run `pod install`.

### Without cocoapods
At first you should read about [cocoapods](http://cocoapods.org/) and maybe give it a try (and follow recommended installation process).

Add files from `Classes` folder to your project.

## Usage

As I told before I have encapsulated rotation logic into VIHorizontalTableView and VIHorizontalTableViewCell. So your table view should inherit VIHorizontalTableView class and your cells should inherit VIHorizontalTableView.

### With interface builder
todo

### From code
todo

### Cells with different width
todo

## Roadmap

* move scroll indicators to bottom
* fix layout after rotations
* table/sections headers/footers
