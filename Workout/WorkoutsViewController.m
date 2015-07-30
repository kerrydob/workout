//
//  WorkoutsViewController.m
//  Workout
//
//  Created by Kerry Dobmeier on 7/27/15.
//  Copyright (c) 2015 Keniz. All rights reserved.
//

#import "WorkoutsViewController.h"
#import "KDWorkout.h"
#import "KDAddWorkoutViewController.h"
#import "KDWorkoutDetailViewController.h"


@interface WorkoutsViewController ()

@property NSMutableArray *workouts;

@end

@implementation WorkoutsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.workouts = [[NSMutableArray alloc] init];
    [self loadInitialData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadInitialData {
    KDWorkout *workout1 = [[KDWorkout alloc] init];
    workout1.workoutName = @"Workout 1";
    [self.workouts addObject:workout1];
    KDWorkout *workout2 = [[KDWorkout alloc] init];
    workout2.workoutName = @"Workout 2";
    [self.workouts addObject:workout2];
    KDWorkout *workout3 = [[KDWorkout alloc] init];
    workout3.workoutName = @"Workout 3";
    [self.workouts addObject:workout3];
}

- (void)addWorkout:(KDWorkout *)newWorkout {
    if (newWorkout) {
        [self.workouts addObject:newWorkout];
    }
}

#pragma mark - Segues
- (IBAction)unwindToWorkouts:(UIStoryboardSegue *)segue {
    KDAddWorkoutViewController *source = [segue sourceViewController];
    KDWorkout *sourceWorkout = source.workout;
    if (sourceWorkout) {
        [self addWorkout:sourceWorkout];
        [self.tableView reloadData];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showWorkoutDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        KDWorkoutDetailViewController *destinationVC = segue.destinationViewController;
        destinationVC.workout = [self.workouts objectAtIndex:indexPath.row];
    }
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.workouts count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListPrototypeCell" forIndexPath:indexPath];
    KDWorkout *workout = [self.workouts objectAtIndex:indexPath.row];
    cell.textLabel.text = workout.workoutName;
    return cell;
}

#pragma  mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

@end
