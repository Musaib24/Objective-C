//
//  ViewController.m
//  TicTacToe
//
//  Created by sysadmin on 5/24/18.
//  Copyright © 2018 sysadmin. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _board.frame = CGRectMake(10, 20, 320, 327);
    // Do any additional setup after loading the view, typically from a nib.
    
    _s1.frame = CGRectMake(8, 22, 90, 90);
    [self.view addSubview:_s1];
    
    _s2.frame = CGRectMake(116, 22, 90, 90);
    
    [self.view addSubview:_s2];
    
    _s3.frame = CGRectMake(223, 22, 90, 90);
    
    [self.view addSubview:_s3];
    
    _s4.frame = CGRectMake(8, 139, 90, 90);
    
    [self.view addSubview:_s4];
    
    _s5.frame = CGRectMake(116, 139, 90, 90);
    
    [self.view addSubview:_s5];
    
    _s6.frame = CGRectMake(223, 139, 90, 90);
    
    [self.view addSubview:_s6];
    
    _s7.frame = CGRectMake(8, 253, 90, 90);
    
    [self.view addSubview:_s7];
    
    _s8.frame = CGRectMake(116, 253, 90, 90);
    
    [self.view addSubview:_s8];
    
    _s9.frame = CGRectMake(223, 253, 90, 90);
    
    [self.view addSubview:_s9];
    
    [self.view addSubview:_board];
    
    _whoseTurn.frame = CGRectMake(10, 353, 100, 30);
    
    [self.view addSubview:_whoseTurn];
    
    _resetButton.frame = CGRectMake(106, 380, 111, 34);
    
    [self.view addSubview:_resetButton];
    
    // add the images
    
    olmg = [UIImage imageNamed:@"o.jpg"];
    
    xlmg = [UIImage imageNamed:@"x.jpg"];
    
    // set the player to 1
    
    playerToken = 1;
    
    // update the label
    
    _whoseTurn.text =@"X goes first";
}

    -(void)updatePlayerInfo{
        
        
        if(playerToken == 1) {
            
            playerToken = 2;
            
            _whoseTurn.text = @"It is O turn";
            
            NSLog(@"playerToken = %d", playerToken);
            
            
        }
        
        else if(playerToken == 2) {
            
            playerToken = 1;
            
            _whoseTurn.text =@"It is X turn";
            
            NSLog(@"playerToken = %d", playerToken);
           
        }
        
        
        if  ([self checkForWin])
        {
           
//            UIAlertView *someonewon = [[UIAlertView alloc]initWithTitle:@"There’s a winner!"message:@"Someone Won. You have to figure out who and how you want to report it. I can’t do everything for you."delegate:self cancelButtonTitle:@"Reset Game"otherButtonTitles:@"Ok",nil];
//            [someonewon show];
            if (playerToken == 2)
            {
                UIAlertView *whowon = [[UIAlertView alloc]initWithTitle:@"X won"message:@"Wow"delegate:self cancelButtonTitle:@"Play Again"otherButtonTitles:nil];
                [whowon show];
                
            }else if(playerToken == 1){
                UIAlertView *whowon = [[UIAlertView alloc]initWithTitle:@"O won"message:@"Wow"delegate:self cancelButtonTitle:@"Play Again"otherButtonTitles:nil];
                [whowon show];
            }
        }
        else if([self checkForGameOver]){
            UIAlertView *gameover = [[UIAlertView alloc]initWithTitle:@"Game Over"message:@"No one Win"delegate:self cancelButtonTitle:@"Play Again"otherButtonTitles:nil];
            [gameover show];
        }
    }

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0)
    {
        [self resetBoard];
    }
}



-(void) resetBoard{
    
    _s1.image = NULL;
    
    _s2.image = NULL;
    
    _s3.image = NULL;
    
    _s4.image = NULL;
    
    _s5.image = NULL;
    
    _s6.image = NULL;
    
    _s7.image = NULL;
    
    _s8.image = NULL;
    
    _s9.image = NULL;
    
    // reset the player and update the label text
    
    playerToken= 1;
    
    _whoseTurn.text = @"X goes first";
    
};


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event

{
    
    UITouch *touch = [[event allTouches] anyObject];
    
    // check to see which UIImage view was touched
    
    if(CGRectContainsPoint([_s1 frame], [touch locationInView:self.view]) && _s1.image == NULL){
        
        if(playerToken==1){ _s1.image = xlmg; }
        
        if(playerToken==2){ _s1.image = olmg; }
        
        
        
        [self updatePlayerInfo];
        
    }
    
    if(CGRectContainsPoint([_s2 frame], [touch locationInView:self.view]) && _s2.image == NULL){
        if(playerToken==1){ _s2.image = xlmg; }
        if(playerToken==2){ _s2.image = olmg; }
        [self updatePlayerInfo];
    }
    
    if(CGRectContainsPoint([_s3 frame], [touch
                                        
                                        locationInView:self.view]) && _s3.image == NULL){
        
        if(playerToken==1){ _s3.image =xlmg; }
        
        if(playerToken==2){_s3.image =olmg; }
        [self updatePlayerInfo];
        
    }
    
    if(CGRectContainsPoint([_s4 frame], [touch
                                        
                                        locationInView:self.view]) && _s4.image == NULL){
        
        if(playerToken==1){_s4.image =xlmg; }
        
        if(playerToken==2){_s4.image =olmg; }
        [self updatePlayerInfo];
        
    }
    
    if(CGRectContainsPoint([_s5 frame], [touch
                                        
                                        locationInView:self.view]) && _s5.image == NULL){
        
        if(playerToken==1){_s5.image =xlmg; }
        
        if(playerToken==2){_s5.image =olmg; }
        [self updatePlayerInfo];
        
    }
    
    if(CGRectContainsPoint([_s6 frame], [touch
                                        
                                        locationInView:self.view]) && _s6.image == NULL){
        
        if(playerToken==1){_s6.image =xlmg; }
        
        if(playerToken==2){_s6.image =olmg; }
        [self updatePlayerInfo];
        
    }
    
    if(CGRectContainsPoint([_s7 frame], [touch
                                        
                                        locationInView:self.view]) && _s7.image == NULL){
        
        if(playerToken==1){_s7.image =xlmg; }
        
        if(playerToken==2){_s7.image =olmg; }
        [self updatePlayerInfo];
        
    }
    
    if(CGRectContainsPoint([_s8 frame], [touch
                                        
                                        locationInView:self.view]) && _s8.image == NULL){
        
        if(playerToken==1){_s8.image =xlmg; }
        
        if(playerToken==2){_s8.image =olmg; }
        [self updatePlayerInfo];
        
    }
    
    if(CGRectContainsPoint([_s9 frame], [touch
                                        
                                        locationInView:self.view]) && _s9.image == NULL){
        
        if(playerToken==1){_s9.image =xlmg; }
        
        if(playerToken==2){_s9.image =olmg; }
        [self updatePlayerInfo];
        
    }
    
    
    
}
-(BOOL) checkForGameOver{
    // HORIZONTAL WINS
    if ((_s1.image != NULL) & (_s2.image != NULL) & (_s3.image != NULL) & (_s4.image != NULL) & (_s5.image != NULL) & (_s6.image != NULL) & (_s7.image != NULL) & (_s8.image != NULL) & (_s9.image != NULL))
        
    {
        
        return YES;
        
    }
    
        return NO;
    }

-(BOOL) checkForWin{
    // HORIZONTAL WINS
    
    if((_s1.image == _s2.image) & (_s2.image ==
                                 
                                 _s3.image) & (_s1.image != NULL))
        
    {
        
        return YES;
        
    }
    
    
    if((_s4.image == _s5.image) & (_s5.image ==
                                 
                                 _s6.image) & (_s4.image != NULL))
        
    {
        
        return YES;
        
    }
    
    if((_s7.image == _s8.image) & (_s8.image ==
                                 
                                 _s9.image) & (_s7.image != NULL))
        
    {
        
        return YES;
        
    }
    
    // VERTICAL WINS
    
    if((_s1.image == _s4.image) & (_s4.image ==
                                 
                                 _s7.image) & (_s1.image != NULL))
        
    {
        
        return YES;
        
    }
    
    if((_s2.image == _s5.image) & (_s5.image ==
                                 
                                 _s8.image) & (_s2.image != NULL))
        
    {
        
        return YES;
        
    }
    
    if((_s3.image == _s6.image) & (_s6.image ==
                                 
                                 _s9.image) & (_s3.image != NULL))
        
    {
        
        return YES;
        
    }
    
    // DIAGONAL WINS
    
    if((_s1.image == _s5.image) & (_s5.image ==
                                 
                                 _s9.image) & (_s1.image != NULL))
        
    {
        
        return YES;
        
    }
    
    if((_s3.image == _s5.image) & (_s5.image ==
                                 
                                 _s7.image) & (_s3.image != NULL))
        
    {
        
        return YES;
        
    }
    
    return NO;
    

};



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonReset:(id)sender {
    [self resetBoard];
}
@end
