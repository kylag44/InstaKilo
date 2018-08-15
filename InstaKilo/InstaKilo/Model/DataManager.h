//
//  DataManager.h
//  InstaKilo
//
//  Created by Kyla  on 2018-08-15.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import <Foundation/Foundation.h>

@class Photo;
@class PhotoCatagory;

@interface DataManager : NSObject
////import the photo and photocategory class

//////method for number of sections
- (NSInteger)numberOfSections;
////////method for number of items in section
- (NSInteger)numberOfItemsInSection:(NSInteger)section;
///////photoatindexpath method
- (Photo *)photoAtIndexPath:(NSIndexPath *)indexPath;
///////photocatagory at index path method
- (PhotoCatagory *)photoCatagoryAtIndexPath:(NSIndexPath *)indexPath;

-(instancetype)initWithSelectedSegmentIndex:(NSInteger)index;

@end
