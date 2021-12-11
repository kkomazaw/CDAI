//
//  CDAIViewController.m
//  CDAI
//
//  Created by Matsui Keiji on 11/05/10.
//  Copyright 2011 Ofuna Chuo Hospital. All rights reserved.
//

#import "CDAIViewController.h"

@implementation CDAIViewController

- (void)viewDidLoad {
	[Geri becomeFirstResponder];
	[super viewDidLoad];
}


- (IBAction)myActionRUN:(id)sender {
	ge=[Geri.text intValue];
	he=[Hemat.text doubleValue];
	shin=[Shincho.text doubleValue];
	tai=[Taiju.text doubleValue];
	ka=[Kaki.text intValue];
	if (ka > 6) {
		Kaki.text=@"6";
		ka =6;
	}
	da =[Danjo selectedSegmentIndex];
	huk =[Hukutsu selectedSegmentIndex];
	shuka =[Shukan selectedSegmentIndex];
	rope =[Ropemin selectedSegmentIndex];
	tum =[Tumor selectedSegmentIndex];
	
	vy1=ge *2;
	vy2=huk *5;
	vy3=shuka *7;
	vy4=ka *20;
	vy5=rope *30;
	if (tum ==0) {
		vy6=0;
	}
	if (tum ==1) {
		vy6=20;
	}
	if (tum ==2) {
		vy6=50;
	}
	if (da ==0) {
		vy7=(47-he)*6;
	}
	if (da ==1) {
		vy7=(42-he)*6;
	}
	vy8=100*(1-tai/(shin*shin*0.0022));
	cda = round(vy1+vy2+vy3+vy4+vy5+vy6+vy7+vy8);
	if (cda < 0) {
		cda = 0;
	}
	[CDAindex setText:[NSString stringWithFormat:@"%d", cda ]];
	
}  //13 -(IBAction)に対応する


- (IBAction)myActiondecimal:(id)sender {
	if (Hemat.editing) {
			if ([Hemat.text rangeOfString:@"." options:NSBackwardsSearch].length == 0) {
			Hemat.text = [Hemat.text stringByAppendingFormat:@"."];
		}
	} 
	
	if (Taiju.editing) {
		if ([Taiju.text rangeOfString:@"." options:NSBackwardsSearch].length == 0) {
			Taiju.text = [Taiju.text stringByAppendingFormat:@"."];
		}
	} 
	
	if (Shincho.editing) {
		if ([Shincho.text rangeOfString:@"." options:NSBackwardsSearch].length == 0) {
			Shincho.text = [Shincho.text stringByAppendingFormat:@"."];
		}
	} 
	
} // (IBAction)myActiondecimalに対応する

- (IBAction)myActionTsugi:(id)sender {
	[self.view endEditing:YES];
	ge=[Geri.text intValue];
	he=[Hemat.text doubleValue];
	shin=[Shincho.text doubleValue];
	tai=[Taiju.text doubleValue];
	ka=[Kaki.text intValue];
	if (ka > 6) {
		Kaki.text=@"6";
		ka =6;
	}
	da =[Danjo selectedSegmentIndex];
	huk =[Hukutsu selectedSegmentIndex];
	shuka =[Shukan selectedSegmentIndex];
	rope =[Ropemin selectedSegmentIndex];
	tum =[Tumor selectedSegmentIndex];
	
	vy1=ge *2;
	vy2=huk *5;
	vy3=shuka *7;
	vy4=ka *20;
	vy5=rope *30;
	if (tum ==0) {
		vy6=0;
	}
	if (tum ==1) {
		vy6=20;
	}
	if (tum ==2) {
		vy6=50;
	}
	if (da ==0) {
		vy7=(47-he)*6;
	}
	if (da ==1) {
		vy7=(42-he)*6;
	}
	vy8=100*(1-tai/(shin*shin*0.0022));
	cda = round(vy1+vy2+vy3+vy4+vy5+vy6+vy7+vy8);
	if (cda < 0) {
		cda = 0;
	}
	[CDAindex setText:[NSString stringWithFormat:@"%d", cda ]];
	
}

- (IBAction)myActionClear:(id)sender;{
	Geri.text=@"";
	Hemat.text=@"";
	Shincho.text=@"";
	Taiju.text=@"";
	Kaki.text=@"";
	Danjo.selectedSegmentIndex=0;
	Hukutsu.selectedSegmentIndex=0;
	Shukan.selectedSegmentIndex=0;
	Ropemin.selectedSegmentIndex=0;
	Tumor.selectedSegmentIndex=0;
	[CDAindex setText:[NSString stringWithFormat:@"%d",0]];
	[Geri becomeFirstResponder];
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end