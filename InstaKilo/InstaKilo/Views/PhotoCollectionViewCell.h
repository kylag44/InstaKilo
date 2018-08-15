//
//  PhotoCollectionViewCell.h
//  InstaKilo
//
//  Created by Kyla  on 2018-08-15.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import <UIKit/UIKit.h>
@class Photo;
//////////all you need to do in the cell header file is to import the photo class and make a property from the photo class 
@interface PhotoCollectionViewCell : UICollectionViewCell

@property (nonatomic)Photo *photo;

@end
