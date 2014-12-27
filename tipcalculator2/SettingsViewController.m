//
//  SettingsViewController.m
//  tipcalculator2
//
//  Created by Bryan Huh on 12/26/14.
//  Copyright (c) 2014 Bryan Huh. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *roundSwitch;
- (IBAction)onToggle:(id)sender;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Settings";

    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.roundSwitch.on = [defaults boolForKey:@"roundSetting"];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)onToggle:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setBool:self.roundSwitch.on forKey:@"roundSetting"];
    [defaults synchronize];
}
@end
