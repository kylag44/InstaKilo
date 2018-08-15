//
//  PhotoCatagory.h
//  InstaKilo
//
//  Created by Kyla  on 2018-08-15.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import <Foundation/Foundation.h>

@class Photo;


@interface PhotoCatagory : NSObject
////////make sure you add in the class method for photo here, in this class we will be storing the photos in array categoris. making a name property and an array of photos property, you also need an initwith name method 
@property (nonatomic) NSString *name;
@property (nonatomic, readonly) NSArray<Photo*>*photos;

- (instancetype)initWithName:(NSString *)name;


@end
