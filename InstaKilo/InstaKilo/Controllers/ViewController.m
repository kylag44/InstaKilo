//
//  ViewController.m
//  InstaKilo
//
//  Created by Kyla  on 2018-08-15.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import "ViewController.h"


////////add the delegate and also remember to connect the data source and delegate from the collectionview into the view controller//////in this example i called the cell identifire Cell. i also put an image view ontop of the proto cell and made its constraints 0 0 0 0 and put an image on top
/////also remember to import datamanager, detail view controller, the  viewcell, and the header view . drag the collection view from storyboard into the interface and create a datamanager property as well
////also make sure you coonect the header reuse identifire as well in story board as Cell!!!!
@interface ViewController () <UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic) DataManager *manager;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //////set up a title
    self.title = @"My Photos";
    ////initialize the data manager manager property
    self.manager = [[DataManager alloc] init];
}
/////this methos is for the collection view layout
-(void)viewWillLayoutSubviews {
    /////////make an instance of layout
    UICollectionViewFlowLayout *layout = (UICollectionViewFlowLayout *)self.collectionView.collectionViewLayout;
    /////have the layout pin the header
    layout.sectionHeadersPinToVisibleBounds = YES;
    CGSize size = CGSizeMake(self.collectionView.bounds.size.width/3, self.collectionView.bounds.size.width/3);
    layout.itemSize = size;
}


#pragma mark - DataSource
////now lets conform to the UICollectionViewDataSource delegate
/////in this method we need to return the manager with the numbers of items in the section.
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.manager numberOfItemsInSection:section];
}
////////we need to return the manager and number of sections again
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return [self.manager numberOfSections];
}
//////////////////make sure you use the name you made in the cell identiphier
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PhotoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.photo = [self.manager photoAtIndexPath:indexPath];
    return cell;
}
//////////////////////make sure you name the "cell" in the header identifire as well
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    
    HeaderCollectionReusableView *header = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"Cell" forIndexPath:indexPath];
    PhotoCatagory *catagory = [self.manager photoCatagoryAtIndexPath:indexPath];
    [header configureWithCategory:catagory];
    return header;
}
///////do this method first before you start the collectioview collection view cellforitam at index pth index path method after you make a seguue. make the segue by dragging from the cell to the detail view image and make sure you set the segues name!
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"detailSegue"]) {
        DetailViewController *dVC = segue.destinationViewController;
        PhotoCollectionViewCell *cell = (PhotoCollectionViewCell *)sender;
        Photo *photo = cell.photo;
        dVC.photo = photo;
    }
}



@end
