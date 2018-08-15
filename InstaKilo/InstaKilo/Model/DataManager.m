//
//  DataManager.m
//  InstaKilo
//
//  Created by Kyla  on 2018-08-15.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import "DataManager.h"
#import "Photo.h"
#import "PhotoCatagory.h"

//////set up an interface in the data manager and make a nsarray property that is an array of photocatagory class
@interface DataManager()
@property (nonatomic)NSArray<PhotoCatagory *> *catagories;
@property (nonatomic)NSArray<PhotoCatagory *> *catagories1;
@end


@implementation DataManager
////////////import the photo and photo catagory class

//////initmethod after the below method is implimented and the setupcatagories method is innited
//- (instancetype)init {
//    if (self = [super init]) {
//        [self setupCatagories];
//    }
//    return self;
//}
-(instancetype)initWithSelectedSegmentIndex:(NSInteger)index {
    if (self = [super init]) {
        [self setupCatagories:(NSInteger)index];
    }
    return self;
}
////////set up the image catagories in this method
-(void)setupCatagories:(NSUInteger)index {
    /////make your photocatagory arrays
    if (index == 0) {
    PhotoCatagory *dogs = [[PhotoCatagory alloc] initWithName:@"Dog"];
    PhotoCatagory *nature = [[PhotoCatagory alloc] initWithName:@"Nature"];
    /////assign the arrays to catagories array
    self.catagories = @[dogs, nature];
    } else {
        PhotoCatagory *zen = [[PhotoCatagory alloc] initWithName:@"Zen"];
        PhotoCatagory *ceramic = [[PhotoCatagory alloc] initWithName:@"Ceramic"];
    self.catagories = @[zen, ceramic];
    }
}
///////in this method, return the count of the catagories
-(NSInteger)numberOfSections {
    return self.catagories.count;
}
//////this method you must create a photo category object and pass the array of catagories and section into it, and then return that new object with the photos and count
-(NSInteger)numberOfItemsInSection:(NSInteger)section {
    PhotoCatagory *catagory = self.catagories[section];
    return catagory.photos.count;
}
//////////return the photo at the index path in this method
-(Photo *)photoAtIndexPath:(NSIndexPath *)indexPath {
    ////get the catagory at the section
    PhotoCatagory *catagory = self.catagories[indexPath.section];
    /////get the photo at the row/itim of that section
    Photo *photo = catagory.photos[indexPath.item];
    return photo;
}
//////////////same as above mthod but you are returning the catagories here
-(PhotoCatagory *)photoCatagoryAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger section = indexPath.section;
    return self.catagories[section];
}

@end
