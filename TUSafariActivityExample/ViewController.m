//
//  ViewController.m
//  TUSafariActivityExample
//
//  Created by David Beck on 11/30/12.
//  Copyright (c) 2012 ThinkUltimate. All rights reserved.
//

#import "ViewController.h"

#import "TUSafariActivity.h"


@interface ViewController () <UIPopoverControllerDelegate>
{
	UIPopoverController *_popover;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	[self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://google.com"]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showActivities:(id)sender
{
	NSURL *URL = self.webView.request.URL;
	UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[URL] applicationActivities:@[[[TUSafariActivity alloc] init]]];
	
	if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
		[self presentViewController:activityViewController animated:YES completion:nil];
	} else if (![_popover isPopoverVisible]) {
		_popover = [[UIPopoverController alloc] initWithContentViewController:activityViewController];
		_popover.delegate = self;
		[_popover presentPopoverFromBarButtonItem:sender permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
	}
}

- (void)popoverControllerDidDismissPopover:(UIPopoverController *)popoverController
{
	_popover = nil;
}

@end
