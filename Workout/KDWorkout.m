//
//  KDWorkout.m
//  KDWorkout
//
//  Created by Kerry Dobmeier on 7/27/15.
//  Copyright (c) 2015 Keniz. All rights reserved.
//

#import "KDWorkout.h"

@implementation KDWorkout

- (NSMutableArray *)exercises {
    if (!_exercises) {
        _exercises = [[NSMutableArray alloc] init];
    }
    return _exercises;
}

- (void)addExercise:(KDExercise *)newExercise {
    if (newExercise) {
        [self.exercises addObject:newExercise];
    }
}

@end
