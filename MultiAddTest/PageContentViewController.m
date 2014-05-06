//
//  PageContentViewController.m
//  MultiAddTest
//
//  Created by Nathan Condell on 4/29/14.
//  Copyright (c) 2014 Nathan Condell. All rights reserved.
//

#import "PageContentViewController.h"
#import <AssetsLibrary/AssetsLibrary.h>
#import "ViewController.h"

@interface PageContentViewController ()

@end

@implementation PageContentViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    void (^ALAssetsLibraryAssetForURLResultBlock)(ALAsset *) = ^(ALAsset *asset)
    {
        [_backgroundImageView setImage:[UIImage imageWithCGImage:[asset aspectRatioThumbnail]]];
        [_backgroundImageView setContentMode:UIViewContentModeScaleAspectFit];
    };
    
    ALAssetsLibrary *library = [[ALAssetsLibrary alloc] init];
    [library assetForURL:_imageFile
             resultBlock:ALAssetsLibraryAssetForURLResultBlock
            failureBlock:^(NSError *error) {
            }];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)dismiss:(id)sender {
    
    UIPageViewController *parent = (UIPageViewController*)[self parentViewController];
    ViewController *superParent = (ViewController *)[parent parentViewController];
    [[superParent urls] removeObjectAtIndex:_pageIndex];
    
    [self willMoveToParentViewController:nil];
    [self.view removeFromSuperview];
    [self removeFromParentViewController];
    
}

@end
