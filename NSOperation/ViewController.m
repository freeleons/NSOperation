//
//  ViewController.m
//  NSOperation
//
//  Created by Jue Wang on 10/17/12.
//  Copyright (c) 2012 Jue Wang. All rights reserved.
//

#import "ViewController.h"
#import "AOperation.h"
#import "BOperation.h"
@interface ViewController ()
{
    NSOperationQueue* parseQueue;

}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    parseQueue = [NSOperationQueue new];
    AOperation* aOperation = [AOperation new];
    BOperation* bOperation = [BOperation new];
    [bOperation addDependency:aOperation];
    [parseQueue addOperation:aOperation];
    [parseQueue addOperation:bOperation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
