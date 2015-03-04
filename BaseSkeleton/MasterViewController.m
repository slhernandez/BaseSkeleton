//
//  ViewController.m
//  BaseSkeleton
//
//  Created by Steve Hernandez on 3/3/15.
//  Copyright (c) 2015 Steve Hernandez. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailsViewController.h"

@interface MasterViewController ()

@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.aButton setTitle:@"Press Me" forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual:@"showPlaylistDetail"]) {
        // do something
        DetailsViewController *detailViewController = (DetailsViewController *)segue.destinationViewController;
        detailViewController.segueLabelText = @"Yay! You pressed the button!";
    }
}


@end
