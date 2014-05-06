//
//  ViewController.h
//  MultiAddTest
//
//  Created by Nathan Condell on 4/29/14.
//  Copyright (c) 2014 Nathan Condell. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PageContentViewController.h"
#import "ELCImagePickerController.h"

@interface ViewController : UIViewController <UIPageViewControllerDataSource, ELCImagePickerControllerDelegate, UINavigationControllerDelegate, SecondDelegate>

- (IBAction)startWalkthrough:(id)sender;
@property (strong, nonatomic) UIPageViewController *pageViewController;
@property (strong, nonatomic) NSMutableArray *urls;

@end