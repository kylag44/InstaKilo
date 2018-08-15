//
//  DetailViewController.m
//  InstaKilo
//
//  Created by Kyla  on 2018-08-15.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import "DetailViewController.h"
#import "Photo.h"
//////////import the photo class and make an interface to drag the image view you stuck in this conroller!
@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation DetailViewController
/////all you need down here is to add the image view and photo to the image 
- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageView.image = self.photo.image;
}



@end
