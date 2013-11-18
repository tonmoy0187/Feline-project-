//
//  CCViewController.h
//  Feline Project
//
//  Created by Ehsan Tonmoy on 11/16/13.
//  Copyright (c) 2013 Apple IPhone Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CCViewController : UIViewController

@property (strong,nonatomic) NSMutableArray * felineObjectArray; 


// Properties from my Image View of MainStoryboard


@property (strong, nonatomic) IBOutlet UIImageView *felineImageView;

@property (strong, nonatomic) IBOutlet UILabel *felineNameLabel;

@property (strong, nonatomic) IBOutlet UILabel *felineDetailLabel;


//Flexible bar Item for moving objects

- (IBAction)felinesBarButtonItem:(UIBarButtonItem *)sender;

@end
