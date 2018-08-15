//
//  DetailViewController.h
//  InstaKilo
//
//  Created by Kyla  on 2018-08-15.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import "ViewController.h"

@class Photo;

@interface DetailViewController : UIViewController
/////import the photo class first, then make a property from the photo class
@property (nonatomic) Photo *photo;

@end
