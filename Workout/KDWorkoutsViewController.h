//
//  WorkoutsViewController.h
//  Workout
//
//  Created by Kerry Dobmeier on 7/27/15.
//  Copyright (c) 2015 Keniz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface KDWorkoutsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, NSFetchedResultsControllerDelegate>

@property (nonatomic, retain) NSFetchedResultsController *fetchedResultsController;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

- (IBAction)unwindToWorkouts:(UIStoryboardSegue *)segue;


@end

