//
//  KDAddWorkoutViewController.m
//  Workout
//
//  Created by Kerry Dobmeier on 7/28/15.
//  Copyright (c) 2015 Keniz. All rights reserved.
//

#import "KDAddWorkoutViewController.h"

@interface KDAddWorkoutViewController ()

@end

@implementation KDAddWorkoutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    // Don't need to do anything if it was Cancel
    if (sender != self.saveButton) return;
    
    if (self.nameTextField.text.length > 0) {
        self.workout = [[KDWorkout alloc] init];
        self.workout.workoutName = self.nameTextField.text;
    }
}


@end
