//
//  ViewController.h
//  UICollectionViewDay7
//
//  Created by OPSolutions on 05/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UICollectionView *movieCollectionView;
@property (weak, nonatomic) IBOutlet UICollectionView *movieShowingCollectionView;
@property (copy, readwrite) NSArray *movie;


@end

