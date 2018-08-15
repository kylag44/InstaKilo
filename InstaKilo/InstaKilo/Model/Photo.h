//
//  Photo.h
//  InstaKilo
//
//  Created by Kyla  on 2018-08-15.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import <Foundation/Foundation.h>

@import UIKit;

@interface Photo : NSObject

//////////make sure you import UIKit . make an image property and then have an initwithimage method 
@property (nonatomic) UIImage *image;

- (instancetype)initWithImage:(UIImage *)image;

@end
