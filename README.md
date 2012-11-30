# TUSafariActivity

`TUSafariActivity` is a `UIActivity` subclass that provides an "Open In Safari" action to a `UIActivityViewController`.

![TUSafariActivity screenshot](http://f.cl.ly/items/1M0O380i110g3K1F3f2m/Screenshot%202012.11.30%2015.02.16.png "TUSafariActivity screenshot")

## Requirements

- As `UIActivity` is iOS 6 only, so is the subclass.
- This project uses ARC. If you want to use it in a non ARC project, you must add the `-fobjc-arc` compiler flag to TUSafariActivity.m in Target Settings > Build Phases > Compile Sources.

## Installation

Add the `TUSafariActivity` subfolder to your project. There are no required libraries other than `UIKit`.

## Usage

*(See example Xcode project)*

Simply `alloc`/`init` an instance of `TUSafariActivity` and pass that object into the applicationActivities array when creating a `UIActivityViewController`.

```objectivec
NSURL *URL = [NSURL URLWithString:@"http://google.com"];
TUSafariActivity *activity = [[TUSafariActivity alloc] init];
UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[URL] applicationActivities:@[activity]];
```

Note that you can include the activity in any `UIActivityViewController` and it will only be shown to the user if there is a URL in the activity items.