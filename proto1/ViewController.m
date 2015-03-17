//
//  ViewController.m
//  proto1
//
//  Created by M on 16.03.15.
//  Copyright (c) 2015 M. All rights reserved.
//

    #import "ViewController.h"

    @implementation ViewController

    - (void)viewDidLoad {
        [super viewDidLoad];
        [self setupTopBar];
    }

    - (BOOL)prefersStatusBarHidden {
        return YES;
    }

    - (void)setupTopBar {
        
        UINavigationBar *navigationBar = self.navigationController.navigationBar;

        navigationBar.tintColor = [UIColor whiteColor];
        
        // http://stackoverflow.com/a/15200267/4205475
        
        [navigationBar setBackgroundImage:[UIImage imageNamed:@"topbar_bg_black_1px"] forBarMetrics:UIBarMetricsDefault];
        
        self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"topbar_logo"]];
        
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"topbar_icon_menu"]
                                                                                 style:UIBarButtonItemStylePlain
                                                                                target:self
                                                                                action:@selector(menuButtonTapped)];
    }

    - (void)menuButtonTapped {
        NSLog(@"%s", __PRETTY_FUNCTION__);
    }

    - (NSString *)p_topbarBackgroundImageName {
        return @"topbar_bg_black_1px";
    }

    - (NSString *)p_topbarIconMenuImageName {
        return @"topbar_icon_menu";
    }

    - (NSString *)p_topbarLogoImageName {
        return @"topbar_logo";
    }
     
    @end
