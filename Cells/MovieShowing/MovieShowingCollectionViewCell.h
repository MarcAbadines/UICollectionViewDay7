//
//  MovieShowingCollectionViewCell.h
//  UICollectionViewDay7
//
//  Created by OPSolutions on 05/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MovieShowingCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *movieShowingImage;
@property (weak, nonatomic) IBOutlet UILabel *movieShowingText;

@end

NS_ASSUME_NONNULL_END
