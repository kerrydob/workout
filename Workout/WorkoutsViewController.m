//
//  WorkoutsViewController.m
//  Workout
//
//  Created by Kerry Dobmeier on 7/27/15.
//  Copyright (c) 2015 Keniz. All rights reserved.
//

#import "WorkoutsViewController.h"
#import "KDAddWorkoutViewController.h"
#import "KDWorkoutDetailViewController.h"
#import "Workout.h"


@interface WorkoutsViewController ()

@property (nonatomic, strong) NSArray *workouts;

@end

@implementation WorkoutsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.workouts = [[NSArray alloc] init];
    [self loadInitialData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadInitialData {
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Workout" inManagedObjectContext:[THE_DELEGATE managedObjectContext]];
    [fetchRequest setEntity:entity];
    NSError *error;
    self.workouts = [[THE_DELEGATE managedObjectContext] executeFetchRequest:fetchRequest error:&error];
}

#pragma mark - Segues
- (IBAction)unwindToWorkouts:(UIStoryboardSegue *)segue {
    KDAddWorkoutViewController *source = [segue sourceViewController];
    Workout *sourceWorkout = source.workout;
    if (sourceWorkout) {
        // add workout to workouts
        [self.tableView reloadData];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showWorkoutDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        KDWorkoutDetailViewController *destinationVC = segue.destinationViewController;
        destinationVC.workout = [self.workouts objectAtIndex:indexPath.row];
    }
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.workouts count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListPrototypeCell" forIndexPath:indexPath];
    Workout *workout = [self.workouts objectAtIndex:indexPath.row];
    cell.textLabel.text = workout.name;
    return cell;
}

#pragma  mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

@end
