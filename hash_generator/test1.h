//
//  test1.h
//  textview
//
//  Created by Saurabh Mishra on 4/30/14.
//  Copyright (c) 2014 iquince. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface test1 : UIViewController{
    
    
    __weak IBOutlet UITextView *stringview;
    
    __weak IBOutlet UITextView *resultview;
}

- (NSString *)md5string:(NSString *)x;
@end
