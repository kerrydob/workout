//
//  KDAddWorkoutViewController.h
//  Workout
//
//  Created by Kerry Dobmeier on 7/28/15.
//  Copyright (c) 2015 Keniz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Workout.h"

@interface KDAddWorkoutViewController : UIViewController

@property (nonatomic, strong) Workout *workout;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end
