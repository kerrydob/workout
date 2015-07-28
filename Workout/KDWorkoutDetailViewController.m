//
//  KDWorkoutDetailViewController.m
//  Workout
//
//  Created by Kerry Dobmeier on 7/28/15.
//  Copyright (c) 2015 Keniz. All rights reserved.
//

#import "KDWorkoutDetailViewController.h"

@interface KDWorkoutDetailViewController ()

@end

@implementation KDWorkoutDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.workoutNameLabel.text = self.workout.workoutName;
    self.navigationItem.title = self.workout.workoutName;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
