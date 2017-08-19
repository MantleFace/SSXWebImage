//
//  ViewController.m
//  SSXWebImage
//
//  Created by Dragon on 2017/8/19.
//  Copyright © 2017年 Dragon. All rights reserved.
//

#import "ViewController.h"
#import "SSXWebImageDownloaderOperation.h"

@interface ViewController ()

@property(nonatomic,strong) NSOperationQueue *queue ;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SSXWebImageDownloaderOperation *op = [[SSXWebImageDownloaderOperation alloc] init];
    
    [self.queue addOperation:op];
    
}

- (NSOperationQueue *)queue{
    if (!_queue) {
        _queue = [[NSOperationQueue alloc] init];
    }
    return _queue;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
