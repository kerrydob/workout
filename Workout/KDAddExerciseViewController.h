//
//  KDAddExerciseViewController.h
//  Workout
//
//  Created by Kerry Dobmeier on 7/30/15.
//  Copyright (c) 2015 Keniz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KDExercise.h"

@interface KDAddExerciseViewController : UIViewController <UITextFieldDelegate>

@property KDExercise *exercise;
@property (weak, nonatomic) IBOutlet UITextField *exerciseName;
@property (weak, nonatomic) IBOutlet UITextField *repNumber;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end
