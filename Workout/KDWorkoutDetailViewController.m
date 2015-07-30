//
//  KDWorkoutDetailViewController.m
//  Workout
//
//  Created by Kerry Dobmeier on 7/28/15.
//  Copyright (c) 2015 Keniz. All rights reserved.
//

#import "KDWorkoutDetailViewController.h"
#import "KDExercise.h"
#import "KDAddExerciseViewController.h"

@interface KDWorkoutDetailViewController ()

@end

@implementation KDWorkoutDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = self.workout.workoutName;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self loadInitialData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadInitialData {
    KDExercise *exercise1 = [[KDExercise alloc] init];
    exercise1.exerciseName = @"Exercise 1";
    exercise1.numberOfReps = 6;
    [self.workout addExercise:exercise1];
    KDExercise *exercise2 = [[KDExercise alloc] init];
    exercise2.exerciseName = @"Exercise 2";
    exercise2.numberOfReps = 2;
    [self.workout addExercise:exercise2];
    KDExercise *exercise3 = [[KDExercise alloc] init];
    exercise3.exerciseName = @"Exercise 3";
    exercise3.numberOfReps = 50;
    [self.workout addExercise:exercise3];
}

- (IBAction)unwindToWorkout:(UIStoryboardSegue *)segue {
    KDAddExerciseViewController *source = [segue sourceViewController];
    KDExercise *sourceExercise = source.exercise;
    if (sourceExercise) {
        [self.workout addExercise:sourceExercise];
        [self.tableView reloadData];
    }
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.workout.exercises count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ExerciseCell" forIndexPath:indexPath];
    KDExercise *exercise = [self.workout.exercises objectAtIndex:indexPath.row];
    cell.textLabel.text = exercise.exerciseName;
    if (exercise.numberOfReps == 1) {
        cell.detailTextLabel.text = [NSString stringWithFormat:@"%d rep", exercise.numberOfReps];
    } else {
        cell.detailTextLabel.text = [NSString stringWithFormat:@"%d reps", exercise.numberOfReps];
    }
    return cell;
}

#pragma  mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

@end
