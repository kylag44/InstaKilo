//
//  HeaderCollectionReusableView.h
//  InstaKilo
//
//  Created by Kyla  on 2018-08-15.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import <UIKit/UIKit.h>

@class PhotoCatagory;

@interface HeaderCollectionReusableView : UICollectionReusableView
/////////make sure you import the photo catagory class and than your configure with category method
-(void)configureWithCategory:(PhotoCatagory *)catagory;


@end
