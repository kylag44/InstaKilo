//
//  PhotoCatagory.m
//  InstaKilo
//
//  Created by Kyla  on 2018-08-15.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import "PhotoCatagory.h"
#import "Photo.h"

@implementation PhotoCatagory
/////import the photo class into this class and set up the init method
- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        _name = name;
        [self setupPhotosWithName:name];
    }
    return self;
}

//////////we're seting up the photos with name here. where i < " "being the number of images you have
- (void)setupPhotosWithName:(NSString *)name {
    NSString *lowerCaseName = name.lowercaseString;
    NSMutableArray<Photo*>*temp = [NSMutableArray array];
    for (NSInteger i = 1; i < 10; ++i) {
        NSString *imageName = [NSString stringWithFormat:@"%@0%ld", lowerCaseName, i];
        UIImage *image = [UIImage imageNamed:imageName];
        Photo *photo = [[Photo alloc] initWithImage:image];
        [temp addObject:photo];
    }
    _photos = [temp copy];
}


@end
