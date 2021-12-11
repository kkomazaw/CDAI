//
//  CDAIViewController.h
//  CDAI
//
//  Created by Matsui Keiji on 11/05/10.
//  Copyright 2011 Ofuna Chuo Hospital. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

double he,shin,tai,vy7,vy8;
int vy1,vy2,vy3,vy4,vy5,vy6,ge,ka,da,huk,shuka,rope,tum,cda;

@interface CDAIViewController : UIViewController {
	IBOutlet UITextField *Geri;
	IBOutlet UITextField *Hemat;
	IBOutlet UITextField *Shincho;
	IBOutlet UITextField *Taiju;
	IBOutlet UITextField *Kaki;
	IBOutlet UISegmentedControl *Danjo;
	IBOutlet id decimal;
	IBOutlet id Tugi;
	IBOutlet UISegmentedControl *Hukutsu;
	IBOutlet UISegmentedControl *Shukan;
	IBOutlet UISegmentedControl *Ropemin;
	IBOutlet UISegmentedControl *Tumor;
	IBOutlet id clearButton;
	IBOutlet UILabel *CDAindex;
	
}
- (IBAction)myActiondecimal:(id)sender;
- (IBAction)myActionTsugi:(id)sender;
- (IBAction)myActionRUN:(id)sender;
- (IBAction)myActionClear:(id)sender;

@end

