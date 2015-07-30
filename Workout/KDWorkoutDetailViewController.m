//
//  KDWorkoutDetailViewController.m
//  Workout
//
//  Created by Kerry Dobmeier on 7/28/15.
//  Copyright (c) 2015 Keniz. All rights reserved.
//

#import "KDWorkoutDetailViewController.h"
#import "Exercise.h"
#import "KDAddExerciseViewController.h"

@interface KDWorkoutDetailViewController ()

@end

@implementation KDWorkoutDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = self.workout.name;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self loadInitialData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadInitialData {
    
    
}

- (IBAction)unwindToWorkout:(UIStoryboardSegue *)segue {
    KDAddExerciseViewController *source = [segue sourceViewController];
    Exercise *sourceExercise = source.exercise;
    if (sourceExercise) {
//        [self.workout addExercise:sourceExercise];
//        [self.tableView reloadData];
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
    Exercise *exercise = [self.workout.exercises objectAtIndex:indexPath.row];
    cell.textLabel.text = exercise.name;
    if ([exercise.reps isEqualToNumber:[NSNumber numberWithInt:1]]) {
        cell.detailTextLabel.text = [NSString stringWithFormat:@"%d rep", exercise.reps.intValue];
    } else {
        cell.detailTextLabel.text = [NSString stringWithFormat:@"%d reps", exercise.reps.intValue];
    }
    return cell;
}

#pragma  mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

@end
