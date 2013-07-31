//
//  AppDelegate.m
//  Hello World
//
//  Created by Alessandro Visotto on 30/07/13.
//  Copyright (c) 2013 Alessandro Visotto. All rights reserved.
//

#import "AppDelegate.h"
@implementation AppDelegate

@synthesize window = window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:( NSDictionary *)launchOptions
{
    
    // Chamado quando o sistema terminou de carregar os recursos necessários para inicar o aplicativo.
    
    int num = 15;
    NSString *frase = @"Hello World!";
    
    NSLog(@"O aplicativo terminou de ser carregado.\nFrase: %@ – Num: %d", frase, num);
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    UIView *primeiraView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, [[UIScreen mainScreen] bounds].size.height)];
    
    primeiraView.backgroundColor = [UIColor lightGrayColor];
    [self.window addSubview:primeiraView];
    
    // Criando e definindo a posição de uma label por programação
    UILabel *helloLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 160, 320, 40)];
    
    helloLabel.backgroundColor = [UIColor orangeColor];
    helloLabel.textColor = [UIColor whiteColor];
    helloLabel.textAlignment = NSTextAlignmentCenter;
    helloLabel.font = [UIFont systemFontOfSize:28.0];
    helloLabel.shadowColor = [UIColor blackColor];
    helloLabel.text = frase;
    [primeiraView addSubview:helloLabel];
    
    UIButton *umBotao = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    // Determina tamanho e posição do botão na tela
    //                          x   y largura altura
    umBotao.frame = CGRectMake(50, 240, 220, 40);
    
    [umBotao setTitle:@"Meu Primeiro Botão" forState:UIControlStateNormal];
    [umBotao setTitle:@"Apertado!" forState:UIControlStateHighlighted];
    
    [umBotao addTarget:self action:@selector(apertouBotao:) forControlEvents:UIControlEventTouchUpInside];
    [primeiraView addSubview:umBotao];
    
    return YES;
}


-(void)apertouBotao:(id)sender {
    NSLog(@"Apertou o botão!");
}


- (void)applicationWillResignActive:(UIApplication *)application {
    
    // Chamado quando o aplicativo vai para de ser executado e enviado para o background.
    
    NSLog(@"O aplicativo vai sair da ativa.");
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    
    // Chamado quando o aplicativo entra em background. Depois que esse método é chamado, o aplicativo tem aproximadamente cinco segundos para salvar informações relevantes para o resumo do aplicativo. Caso o método não terminar nesse tempo, a execução é parada
    
    NSLog(@"O aplicativo entrou em background.");
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    
    // Chamado quando o aplicativo vai voltar para a ativa, e é importante carregar as informações salvas durante o método anterior.
    
    NSLog(@"O aplicativo vai ficar ativo.");
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    
    // Chamado quando o aplicativo volta a ativa.
    
    NSLog(@"O aplicativo está ativo.");
}


- (void)applicationWillTerminate:(UIApplication *)application {
    
    // Chamado quando iOS precisa remover o aplicativo da memória por algum motivo. Depois que esse método é chamado, o aplicativo tem aproximadamente cinco segundos para salvar informações relevantes do aplicativo. Caso o método não terminar nesse tempo, o iOS mata o aplicativo.
    
    NSLog(@"O aplicativo vai fechar.");
}


@end
