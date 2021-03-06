//
//  KDAddExerciseViewController.m
//  Workout
//
//  Created by Kerry Dobmeier on 7/30/15.
//  Copyright (c) 2015 Keniz. All rights reserved.
//

#import "KDAddExerciseViewController.h"

@interface KDAddExerciseViewController ()

@end

@implementation KDAddExerciseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.repNumber.delegate = self;
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
    if (sender != self.saveButton) return;
        
    if (self.exerciseName.text.length > 0) {
        self.exercise = [[KDExercise alloc] init];
        self.exercise.exerciseName = self.exerciseName.text;
        if (self.repNumber.text.length > 0) {
            self.exercise.numberOfReps = self.repNumber.text.intValue;
        } else {
            self.exercise.numberOfReps = 0;
        }
    }
}

#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    // For backspaces
    if (!string.length) {
        return YES;
    }
    
    if ([string intValue]) {
        return YES;
    }
    
    return NO;
}


@end
