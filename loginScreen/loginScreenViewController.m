//
//  loginScreenViewController.m
//  loginScreen
//
//  Created by pradip on 1/27/15.
//  Copyright (c) 2015 pradip. All rights reserved.
//

#import "loginScreenViewController.h"

@interface loginScreenViewController ()

@end

@implementation loginScreenViewController

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
    [self addViewController];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)addViewController
{
    //add email lable
    UILabel *emailLable=[[UILabel alloc]initWithFrame:CGRectMake(20, 40, 50, 20)];
    emailLable.text=@"email";
    emailLable.textColor=[UIColor greenColor] ;
    [self.view addSubview:emailLable];
    
    //add email texxt field
    
    emailTF=[[UITextField alloc]initWithFrame:CGRectMake(110, 40, 180, 20)];
    emailTF.borderStyle=UITextBorderStyleRoundedRect;
    emailTF.placeholder=@"Enter Email id";
    emailTF.delegate=self;
    emailTF.tag=0;
    [self.view addSubview:emailTF];
    //To add Password Label
    UILabel *passwdLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 80, 90, 20)];
    passwdLabel.text = @"Password:";
    passwdLabel.textColor = [UIColor grayColor];
    [self.view addSubview:passwdLabel];
    
    //To add textfield for email
    passTF = [[UITextField alloc]init];
    passTF.frame = CGRectMake(110, 80, 180, 20);
    passTF.borderStyle = UITextBorderStyleRoundedRect;
    passTF.placeholder=@"***********";
    passTF.secureTextEntry = YES;
    passTF.tag = 1;
    passTF.delegate = self;
    [self.view addSubview:passTF];
    
    //To add Login Button
    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    loginBtn.frame = CGRectMake(150, 130, 50, 30);
    [loginBtn setTitle:@"Login" forState:UIControlStateNormal];
    [loginBtn addTarget:self action:@selector(loginBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginBtn];

}

-(void)loginBtnClick
{
    homeView = [[UIView alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    homeView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:homeView];
    
    //To add Login Button
    UIButton *logoutBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    logoutBtn.frame = CGRectMake(150, 130, 50, 30);
    [logoutBtn setTitle:@"Logout" forState:UIControlStateNormal];
    [logoutBtn addTarget:self action:@selector(logoutBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [homeView addSubview:logoutBtn];
    
}
-(void)logoutBtnClick
{
    [homeView removeFromSuperview];
}
#pragma mark UITextField Delegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField;
{
    if (textField.tag==0)
    {
        [passTF becomeFirstResponder];
    }
    else if (textField.tag==1)
    {
        [passTF resignFirstResponder];
    }
    return YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
