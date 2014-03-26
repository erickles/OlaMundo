//
//  DSMMeuPrimeiroViewController.m
//  OlaMundo
//
//  Created by DSM Brasil Produtos Nutricionais SA on 12/11/13.
//  Copyright (c) 2013 DSM Brasil Produtos Nutricionais SA. All rights reserved.
//

#import "DSMMeuPrimeiroViewController.h"
#import "DSMMeuSegundoViewController.h"
#import "DSMUtils.h"

@interface DSMMeuPrimeiroViewController ()

@end

@implementation DSMMeuPrimeiroViewController

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
    meuPrimeiroLabel.text = @"Tela iniciada com sucesso!";
    //Indica que a propria classe implementa o protocolo UITextFieldDelegate para responder aos eventos
    meuPrimeiroTextField.delegate = self;
    meuSegundpTextField.delegate = self;
    
    //Altera a imagem dinamicamente
    UIImage *image = [UIImage imageNamed:@"ferrari_ff.png"];
    imageView.image = image;
    self.title = @"Primeiro Controller";
    
    //Customizando o botao voltar
    UIBarButtonItem *btVoltar = [[UIBarButtonItem alloc] initWithTitle:@"Voltar" style:UIBarButtonItemStyleBordered target:nil action:nil];
    self.navigationItem.backBarButtonItem = btVoltar;
    
    self.navigationItem.titleView = [DSMUtils getCustomNavBarView:@"DSM Brasil"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)olaMundo:(id)sender{
    
    
    NSString *s = @"Ola ";
    
    if([meuPrimeiroTextField.text isEqualToString:@""] || [meuSegundpTextField.text isEqualToString:@""]){
        UIAlertView *a = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Digite todos os campos" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [a show];
        return;
    }
    
    //Nome
    s = [s stringByAppendingString:meuPrimeiroTextField.text];
    
    //Espaco
    s = [s stringByAppendingString:@" "];
    
    //Sobrenome
    s = [s stringByAppendingString:meuSegundpTextField.text];
    
    //Exibe a mensagem no label
    meuPrimeiroLabel.text = s;
    
    //Libera o foco para fehcar o teclado virtual
    [meuPrimeiroTextField resignFirstResponder];
    [meuSegundpTextField resignFirstResponder];
    
    //Cria o segundo controller
    DSMMeuSegundoViewController *segundo = [[DSMMeuSegundoViewController alloc] init];
    //Seta a mensagem
    segundo.msg = s;
    
    //Recupera a UIWindow que gerencia toda as telas do aplicativo
    //UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    //Adiciona a view do segundo controller na window
    //UIView *view = segundo.view;
    //[window addSubview:view];
    
    //Cria uma anima'c~ao de transi'c~ao de tela
    segundo.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    //Navega para o proximo controller
    //[self presentViewController:segundo animated:YES completion:nil];
    [self.navigationController pushViewController:segundo animated:YES];
}

//Fecha o teclado virtual ao tocar em algum lugar da tela
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [meuPrimeiroTextField resignFirstResponder];
    [meuSegundpTextField resignFirstResponder];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    if(textField == meuPrimeiroTextField){
        //Navega para o proximo campo
        [meuSegundpTextField becomeFirstResponder];
        return YES;
    }else if(textField == meuSegundpTextField){
        //Ultimo campo executa o metodo olaMundo diretamente
        [self olaMundo:textField];
        return YES;
    }
    return NO;
}

-(IBAction)sliderValueChanged:(id)sender{
    UISlider *slider = sender;
    imageView.alpha = [slider value];
}

@end
