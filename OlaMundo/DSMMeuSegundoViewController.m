//
//  DSMMeuSegundoViewController.m
//  OlaMundo
//
//  Created by DSM Brasil Produtos Nutricionais SA on 18/11/13.
//  Copyright (c) 2013 DSM Brasil Produtos Nutricionais SA. All rights reserved.
//

#import "DSMMeuSegundoViewController.h"

@interface DSMMeuSegundoViewController ()

@end

@implementation DSMMeuSegundoViewController
@synthesize msg;

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
    // Do any additional setup after loading the view from its nib.
    //Copia o conteudo da mensagem "msg" para o label
    label.text = msg;
    self.title = @"Segundo Controller";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Eventos
-(IBAction)voltar{
    //[self.view removeFromSuperview];
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - rotation iOS 6
-(BOOL)shouldAutorotate{
    //Indica se a tela pode girar
    return YES;
}

-(NSUInteger)supportedInterfaceOrientations{
    BOOL iPad = [[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad;
    if(iPad){
        //iPad suporta todas as orientacoes
        return UIInterfaceOrientationMaskAll;
    }else{
        //iPhone suporta todas menos de ponta cabeca
        return UIInterfaceOrientationMaskAllButUpsideDown;
    }
}

@end
