//
//  LoginViewController.m
//  vibike
//
//  Created by Pablo García-Nieto Rodríguez  on 22/9/16.
//  Copyright © 2016 pablo. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginItemCollectionViewCell.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property(strong, nonatomic)NSArray* items;
@end

@implementation LoginViewController
- (IBAction)clickButton:(id)sender {
    _items = @[@{@"title":@"NUEVO", @"description":@"NUEVO"}];
    [_collectionView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _items = @[@{@"title":@"Mi titulo 1", @"description":@"Mi descripcion aquí"},
               @{@"title":@"Mi titulo 2", @"description":@"Mi descripcion aquí"},
               @{@"title":@"Mi titulo 3", @"description":@"Mi descripcion aquí 3"}];
    
    
    [self.collectionView registerClass:[LoginItemCollectionViewCell class] forCellWithReuseIdentifier:@"CellId"];
    UINib *cellNib = [UINib nibWithNibName:@"LoginItemCollectionViewCell" bundle:nil];
    [self.collectionView registerNib:cellNib forCellWithReuseIdentifier:@"CellId"];
    
    
    
}

#pragma mark Collection View

- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout*)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(_collectionView.frame.size.width, _collectionView.frame.size.height);
}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [_items count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    LoginItemCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CellId" forIndexPath:indexPath];
    
    NSDictionary* info = [_items objectAtIndex:[indexPath row]];
    cell.tituloLabel.text = [info objectForKey:@"title"];
    cell.descriptionLabel.text = [info objectForKey:@"description"];
    
    return cell;
}


@end
