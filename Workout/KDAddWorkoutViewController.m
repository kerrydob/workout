//
//  KDAddWorkoutViewController.m
//  Workout
//
//  Created by Kerry Dobmeier on 7/28/15.
//  Copyright (c) 2015 Keniz. All rights reserved.
//

#import "KDAddWorkoutViewController.h"
#import "AppDelegate.h"

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

//- (Workout *)workout {
//    
//    //    Workout *workout = [NSEntityDescription insertNewObjectForEntityForName:@"Workout" inManagedObjectContext:context];
//    //    workout.name = @"My Workout";
//    //    Exercise *exercise = [NSEntityDescription insertNewObjectForEntityForName:@"Exercise" inManagedObjectContext:context];
//    //    exercise.name = @"Pullups";
//    //    exercise.reps = [NSNumber numberWithInt:5];
//    
//    
//    
//    
//    if (_workout) {
//        _workout = [NSEntityDescription insertNewObjectForEntityForName:@"Workout" inManagedObjectContext:[THE_DELEGATE managedObjectContext]];
//    }
//    return _workout;
//}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    // Don't need to do anything if it was Cancel
    if (sender != self.saveButton) return;
    
    if (self.nameTextField.text.length > 0) {
        self.workout = [NSEntityDescription insertNewObjectForEntityForName:@"Workout" inManagedObjectContext:[THE_DELEGATE managedObjectContext]];
        self.workout.name = self.nameTextField.text;
    }
}


@end
