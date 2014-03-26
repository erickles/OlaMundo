//
//  DSMMeuPrimeiroViewController.h
//  OlaMundo
//
//  Created by DSM Brasil Produtos Nutricionais SA on 12/11/13.
//  Copyright (c) 2013 DSM Brasil Produtos Nutricionais SA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DSMMeuPrimeiroViewController : UIViewController <UITextFieldDelegate>{
    IBOutlet UILabel *meuPrimeiroLabel;
    IBOutlet UITextField *meuPrimeiroTextField;
    IBOutlet UITextField *meuSegundpTextField;
    IBOutlet UIImageView *imageView;
}
-(IBAction)olaMundo:(id)sender;
-(IBAction)sliderValueChanged:(id)sender;
@end
