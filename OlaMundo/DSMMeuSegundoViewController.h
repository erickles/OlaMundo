//
//  DSMMeuSegundoViewController.h
//  OlaMundo
//
//  Created by DSM Brasil Produtos Nutricionais SA on 18/11/13.
//  Copyright (c) 2013 DSM Brasil Produtos Nutricionais SA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DSMMeuSegundoViewController : UIViewController{
    IBOutlet UILabel *label;
    NSString *msg;
}
@property (nonatomic,retain) NSString *msg;

-(IBAction)voltar;
@end
