//
//  ACViewController.m
//  NomNomMon
//
//  Created by Jason Oswald on 4/24/13.
//  Copyright (c) 2013 Baylor School. All rights reserved.
//  Parker Diamond
//

#import "ACViewController.h"
#import "ACGameViewController.h"
#import "ACMapView.h"

@interface ACViewController ()

@end

@implementation ACViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if( [segue.identifier isEqualToString:@"startGame"] )
    {
        NSString* path = [[NSBundle mainBundle] pathForResource:@"Maps" ofType:@"plist"];
        NSDictionary* mapList =  [NSDictionary dictionaryWithContentsOfFile:path];
        ACGameViewController* gameViewController = (ACGameViewController*) segue.destinationViewController;
        ACMapView* mapView = [[ACMapView alloc] initWithFrame:CGRectMake(0, 100, 1023, 759) andTiles:[mapList objectForKey:@"Map1"]];
        gameViewController.map = mapView;
        gameViewController.map.ROWS = 23;
        gameViewController.map.COLS = 31;
        gameViewController.map.tileSize = 33;
    }
}

@end
