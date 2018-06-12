//
//  ViewController.h
//  TicTacToe
//
//  Created by sysadmin on 5/24/18.
//  Copyright © 2018 sysadmin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
    
IBOutlet UIImageView *olmg;
    
IBOutlet UIImageView *xlmg;

NSInteger playerToken;
}
@property (weak, nonatomic) IBOutlet UIImageView *board;

@property (weak, nonatomic) IBOutlet UILabel *whoseTurn;
@property (weak, nonatomic) IBOutlet UIButton *resetButton;
@property (weak, nonatomic) IBOutlet UIImageView *s1;
@property (weak, nonatomic) IBOutlet UIImageView *s2;
@property (weak, nonatomic) IBOutlet UIImageView *s3;
@property (weak, nonatomic) IBOutlet UIImageView *s4;
@property (weak, nonatomic) IBOutlet UIImageView *s5;
@property (weak, nonatomic) IBOutlet UIImageView *s6;
@property (weak, nonatomic) IBOutlet UIImageView *s7;
@property (weak, nonatomic) IBOutlet UIImageView *s8;
@property (weak, nonatomic) IBOutlet UIImageView *s9;
- (IBAction)buttonReset:(id)sender;


@end

