//
//  TestFilesTableViewController.m
//  office365-e2end-tests
//
//  Created by Gustavo on 7/30/14.
//  Copyright (c) 2014 Lagash. All rights reserved.
//

#import "TestFilesTableViewController.h"
#import <office365-base-sdk/LoginClient.h>
#import "TestParameters.h"
#import "FileTestRunner.h"

@interface TestFilesTableViewController()

@end

@implementation TestFilesTableViewController

LoginClient *loginClient;
TestParameters *testParameters;
FileTestRunner *testRunner;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) { }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self logIn];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.Tests count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FileTestsCells" forIndexPath:indexPath];
    
    Test *test = [self.Tests objectAtIndex:indexPath.row];
    cell.textLabel.text = test.DisplayName;
    
    if(test.ExecutionMessages != nil){
        if(test.Passed){
            cell.accessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"passed.png"]];
        }
        if(!test.Passed){
            cell.accessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"failed.png"]];
        }
    }
    
    return cell;
}

- (IBAction)RunAllTests:(id)sender {
    UIActivityIndicatorView *spinner = [[UIActivityIndicatorView alloc]initWithFrame:CGRectMake(135,140,50,50)];
    spinner.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
    [self.view addSubview:spinner];
    spinner.hidesWhenStopped = YES;
    
    [spinner startAnimating];
    
    __block int executed = 0;
    
    for (int i = 0; i < [self.Tests count]; i++) {
        NSURLSessionDataTask *task = [[self.Tests objectAtIndex:i] Run:^(Test *result) {
            
            Test *test = [self.Tests objectAtIndex:i];
            test.Passed = result.Passed;
            test.ExecutionMessages = result.ExecutionMessages;
            executed++;
            
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.tableView reloadData];
                
                if(executed == [self.Tests count]) [spinner stopAnimating];
            });
        }];
        
        [task resume];
    }
}

-(void)logIn{
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    loginClient = [loginClient initWithParameters:[userDefaults objectForKey: @"CliendId"]
                                                 :[userDefaults objectForKey: @"RedirectUrl"]
                                                 :@"https://lagashsystems365-my.sharepoint.com"
                                                 :[userDefaults objectForKey: @"AuthorityUrl"]
                   ];
    
    [loginClient login:true completionHandler:^(NSString *token) {
       
        testParameters = [TestParameters alloc];
        testParameters.Credentials = [[OAuthentication alloc] initWith:token];
        testParameters.ServiceUrl = @"https://lagashsystems365-my.sharepoint.com/personal/gustavoh_lagash_com";
        
        testRunner = [FileTestRunner alloc];
        testRunner.Parameters = testParameters;
        
        self.Tests = [testRunner getTests];
        
        [self.tableView reloadData];

    }];
}

@end