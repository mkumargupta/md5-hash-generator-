//
//  test1.m
//  textview
//
//  Created by Saurabh Mishra on 4/30/14.
//  Copyright (c) 2014 iquince. All rights reserved.
//

#import "test1.h"


@interface test1 (){
    NSString *planestring;
    NSString *hashcode;
}

@end

@implementation test1



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
    planestring=[[NSString alloc]init];
    hashcode=[[NSString alloc]init];
    }

//below function is responsible for returnning hash string

- (NSString *)md5string:(NSString *)x {
    const char *cstr=[x UTF8String] ;
    
    unsigned char result[16];
    //CC_MD5()
    CC_MD5(cstr, strlen(cstr), result);
    
    return [NSString stringWithFormat:
            @"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}

/////////////////////////////////////////////////

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)click:(id)sender {
    
    planestring=stringview.text;
    hashcode=[self md5string:planestring];
    resultview.text=hashcode;
    
}
-(IBAction)goaway:(id)sender{
    [sender resignFirstResponder];
    [stringview resignFirstResponder];
    
}

@end
