//
//  TUViewController.m
//  TUSafariActivity
//
//  Created by David Beck on 10/04/2014.
//  Copyright (c) 2014 David Beck. All rights reserved.
//

#import "TUViewController.h"

#import <TUSafariActivity/TUSafariActivity.h>


@interface TUViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation TUViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://github.com/davbeck/TUSafariActivity"]]];
}

- (IBAction)share:(id)sender
{
    NSURL *URL = self.webView.request.URL;
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[URL] applicationActivities:@[[[TUSafariActivity alloc] init]]];
    
    activityViewController.popoverPresentationController.barButtonItem = sender;
    [self presentViewController:activityViewController animated:YES completion:nil];
}

@end
