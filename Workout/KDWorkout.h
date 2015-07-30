//
//  KDWorkout.h
//  KDWorkout
//
//  Created by Kerry Dobmeier on 7/27/15.
//  Copyright (c) 2015 Keniz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KDExercise.h"

@interface KDWorkout : NSObject

@property NSString *workoutName;
@property (readonly) NSDate *creationDate;
@property (nonatomic, strong) NSMutableArray *exercises;

- (void)addExercise:(KDExercise *)newExercise;

@end
