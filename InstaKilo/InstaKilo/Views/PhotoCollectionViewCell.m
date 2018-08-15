//
//  PhotoCollectionViewCell.m
//  InstaKilo
//
//  Created by Kyla  on 2018-08-15.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import "PhotoCollectionViewCell.h"
#import "Photo.h"

@interface PhotoCollectionViewCell()
///////add in the an outlet for the cell image view, make sure you set the class for it in story board to the photocollectioviewcell class
@property (weak, nonatomic) IBOutlet UIImageView *cellImageView;


@end

@implementation PhotoCollectionViewCell
//////all you need in here is a set photo method
-(void)setPhoto:(Photo *)photo {
    self.cellImageView.image = photo.image;
    _photo = photo;
}

@end
