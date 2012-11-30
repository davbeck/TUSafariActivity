//
//  ViewController.h
//  TUSafariActivityExample
//
//  Created by David Beck on 11/30/12.
//  Copyright (c) 2012 ThinkUltimate. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIWebView *webView;

- (IBAction)showActivities:(id)sender;

@end
