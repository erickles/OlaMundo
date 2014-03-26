//
//  DSMUtils.m
//  OlaMundo
//
//  Created by DSM Brasil Produtos Nutricionais SA on 19/11/13.
//  Copyright (c) 2013 DSM Brasil Produtos Nutricionais SA. All rights reserved.
//

#import "DSMUtils.h"

@interface DSMUtils ()

@end

@implementation DSMUtils

+(UIView *)getCustomNavBarView:(NSString *)title{
    //Cria a view para customizar a navigation bar
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    
    //Cria o label par o titulo
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 320, 44)];
    label.text = title;
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont boldSystemFontOfSize:18];
    label.textColor = [UIColor blackColor];
    //label.textAlignment = UITextAlignmentCenter;
    //Adiciona o label na view
    [view addSubview:label];
    return view;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
