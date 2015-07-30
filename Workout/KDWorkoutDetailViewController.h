//
//  KDWorkoutDetailViewController.h
//  Workout
//
//  Created by Kerry Dobmeier on 7/28/15.
//  Copyright (c) 2015 Keniz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KDWorkout.h"

@interface KDWorkoutDetailViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property KDWorkout *workout;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

- (IBAction)unwindToWorkout:(UIStoryboardSegue *)segue;

@end
