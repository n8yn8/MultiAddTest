//
//  PageContentViewController.h
//  MultiAddTest
//
//  Created by Nathan Condell on 4/29/14.
//  Copyright (c) 2014 Nathan Condell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageContentViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;
- (IBAction)dismiss:(id)sender;
@property NSUInteger pageIndex;
@property NSString *titleText;
@property NSURL *imageFile;
@end
