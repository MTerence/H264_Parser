//
//  ViewController.m
//  H264_Parser
//
//  Created by Ternence on 2019/3/22.
//  Copyright © 2019 Ternence. All rights reserved.
//

#import "ViewController.h"
#import "h264_parser.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    simplest_h264_parser("sintel.h264");
}


@end
