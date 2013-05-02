//
//  ACGameViewController.m
//  NomNomMon
//
//  Created by Jason Oswald on 4/24/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//  testing out github connection
//

#import "ACGameViewController.h"
#import "ACMapView.h"
#import "ACFoodView.h"

@interface ACGameViewController ()

@end

@implementation ACGameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    ACMapView* map = [[ACMapView alloc] init];
    NSArray* tiles;
    // assume I have a set of tiles
    map.tiles = tiles;
    [self.view addSubview:map];
}

- (void) makeFoodAppear
{
    ACMapView* map;     // assume we have a map
    [map addSubview:[[ACFoodView alloc] init]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
