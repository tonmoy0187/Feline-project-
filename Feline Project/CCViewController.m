//
//  CCViewController.m
//  Feline Project
//
//  Created by Ehsan Tonmoy on 11/16/13.
//  Copyright (c) 2013 Apple IPhone Development. All rights reserved.
//

#import "CCViewController.h"
#import "CCFeline.h"

@interface CCViewController ()

@end

@implementation CCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    CCFeline * felineObject = [[CCFeline alloc]init];
    felineObject.felineName = @"Lynx";
    felineObject.typeOfFeline = @"Lynx are savage WildCats";
    felineObject.imageOfFelines = [UIImage imageNamed:@"siberian-lynx.jpg"];
    
    NSLog(@"%@",felineObject.felineName);
    NSLog(@"%@",felineObject.typeOfFeline);
    
    // setting up the image properties for the first object
    
    self.felineImageView.image = felineObject.imageOfFelines;
    self.felineNameLabel.text = felineObject.felineName;
    self.felineDetailLabel.text = felineObject.typeOfFeline;
    
    
    // creating our first feline type object
    
    CCFeline * felineObjectOne = [[CCFeline alloc]init];
    felineObjectOne.felineName = @"Puma";
    felineObjectOne.typeOfFeline = @"Puma is a bigCat of SouthAmerica";
    felineObjectOne.imageOfFelines = [UIImage imageNamed:@"Puma.jpg"];

    
    //creating our second feline type object
    
    CCFeline * felineObjectTwo = [[CCFeline alloc]init];
    felineObjectTwo.felineName = @"Jaguar";
    felineObjectTwo.typeOfFeline = @"Jaguar is a bigCat of NorthAmerica";
    felineObjectTwo.imageOfFelines = [UIImage imageNamed:@"Jaguar.jpg"];
    
    
    //creating our third feline type object
    
    CCFeline * felineObjectThree = [[CCFeline alloc]init];
    felineObjectThree.felineName = @"Tiger";
    felineObjectThree.typeOfFeline = @"Tiger is a bigCat of Asia";
    felineObjectThree.imageOfFelines = [UIImage imageNamed:@"Tiger.jpg"];
    
    //Creating our Fourth feline type object
    
    CCFeline * felineObjectFour = [[CCFeline alloc]init];
    felineObjectFour.felineName = @"Black Panther";
    felineObjectFour.typeOfFeline = @"Black Panther is a bigcat from Brazil.";
    felineObjectFour.imageOfFelines = [UIImage imageNamed:@"black_panther_spain.jpg"];

    
    // putting all the feline object in a container
    
    self.felineObjectArray = [[NSMutableArray alloc]init];
    [self.felineObjectArray addObject:felineObjectOne];
    [self.felineObjectArray addObject:felineObjectTwo];
    [self.felineObjectArray addObject:felineObjectThree];
    [self.felineObjectArray addObject:felineObject];
    [self.felineObjectArray addObject:felineObjectFour];
    
    NSLog(@"%@",self.felineObjectArray);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)felinesBarButtonItem:(UIBarButtonItem *)sender {
    
    // Count the number of object in the array and put it inside of a variable INT
   int felineNumbers = [self.felineObjectArray count];
    
   
    // select a random number from 0 to -1 and put it inside of a randomFeline variable INT
    int randomFeline =  arc4random() % felineNumbers;
    
    
    // putting the new random number in the array Object from creating an object in the CCFeline class
    CCFeline * holdingObject = [self.felineObjectArray objectAtIndex:randomFeline];
    
    
    //update the information in the view controller
    
    self.felineImageView.image = holdingObject.imageOfFelines;
    self.felineNameLabel.text = holdingObject.felineName;
    self.felineDetailLabel.text = holdingObject.typeOfFeline;
    
    
    // then moving to the next object when user clicks on the flexible button
    sender.title = @"Move to next Feline";
}
@end











