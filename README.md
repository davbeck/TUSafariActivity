# TUSafariActivity

`TUSafariActivity` is a `UIActivity` subclass that provides an "Open In Safari" action to a `UIActivityViewController`.

![TUSafariActivity screenshot](http://f.cl.ly/items/3e3W360A0f0v0Z392u0W/iOS%20Simulator%20Screen%20Shot%20Oct%204,%202014,%2011.54.20%20AM.png "TUSafariActivity screenshot")

## Requirements

- iOS 8.

## Installation

### CocoaPods

    pod 'TUSafariActivity', '~> 1.0.1'
## Usage

*(See example Xcode project)*

Simply `alloc`/`init` an instance of `TUSafariActivity` and pass that object into the applicationActivities array when creating a `UIActivityViewController`.

```objectivec
NSURL *URL = [NSURL URLWithString:@"http://google.com"];
TUSafariActivity *activity = [[TUSafariActivity alloc] init];
UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[URL] applicationActivities:@[activity]];
```

Note that you can include the activity in any `UIActivityViewController` and it will only be shown to the user if there is a URL in the activity items.