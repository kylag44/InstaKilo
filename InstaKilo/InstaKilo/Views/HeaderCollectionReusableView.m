//
//  HeaderCollectionReusableView.m
//  InstaKilo
//
//  Created by Kyla  on 2018-08-15.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import "HeaderCollectionReusableView.h"
#import "PhotoCatagory.h"

@interface HeaderCollectionReusableView()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end


@implementation HeaderCollectionReusableView
//////////in this implementation you need to import the photocategory hook up the label (make sure to assaign it to this class in storyboard) and then you need a configure with catefory method 
-(void)configureWithCategory:(PhotoCatagory *)catagory {
    self.label.text = catagory.name;
}

@end


//@end
