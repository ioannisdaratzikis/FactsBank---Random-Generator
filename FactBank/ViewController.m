//
//  ViewController.m
//  FactBank
//
//  Created by John Daratzikis on 17/01/2017.
//  Copyright © 2017 ioannisdaratzikis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.label.layer setCornerRadius:20.0];
    self.label.clipsToBounds = YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)randomButton:(id)sender {
    
    NSArray *facts = @[@"Banging your head against a wall burns 150 calories an hour",@"In the UK, it is illegal to eat mince pies on Christmas Day!", @"Pteronophobia is the fear of being tickled by feathers!", @"When hippos are upset, their sweat turns red.", @"A flock of crows is known as a murder", @"Cherophobia is the fear of fun"];
    int randomWord = arc4random() % facts.count;
    
    self.label.text = facts[randomWord];
    
}

@end
