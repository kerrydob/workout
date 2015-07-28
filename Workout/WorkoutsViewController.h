//
//  WorkoutsViewController.h
//  Workout
//
//  Created by Kerry Dobmeier on 7/27/15.
//  Copyright (c) 2015 Keniz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KDWorkout.h"

@interface WorkoutsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

- (void)addWorkout:(KDWorkout *)newWorkout;
- (IBAction)unwindToWorkouts:(UIStoryboardSegue *)segue;


@end

