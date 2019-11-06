//
//  ViewController.m
//  UICollectionViewDay7
//
//  Created by OPSolutions on 05/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "ViewController.h"
#import "MovieCollectionViewCell.h"
#import "MovieShowingCollectionViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.movieCollectionView registerNib:[UINib nibWithNibName:@"MovieCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"movieIdentifier"];
    [self.movieShowingCollectionView registerNib:[UINib nibWithNibName:@"MovieShowingCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"showingIdentifier"];
    _movie = [[NSArray alloc] initWithObjects:
              @{@"photo" : @"img_kidking",
                @"name" : @"Kid King",
                },
              @{@"photo" : @"img_bladerunner",
                @"name" : @"Blade Runner",
                },
              @{@"photo" : @"img_spiderman",
                @"name" : @"SpiderMan",
                },
              @{@"photo" : @"img_dora",
                @"name" : @"Dora",
                },
              @{@"photo" : @"img_life",
                @"name" : @"Life",
                },
              @{@"photo" : @"img_mib",
                @"name" : @"MIB",
                },nil];
    _movie2 = [[NSArray alloc] initWithObjects:
              @{@"photo" : @"img_jumaji",
                @"name" : @"Jumanji",
                },
              @{@"photo" : @"img_kidking",
                @"name" : @"Kid King",
                },
              @{@"photo" : @"img_aladdin",
                @"name" : @"Aladdin",
                },
              @{@"photo" : @"img_dora",
                @"name" : @"Dora",
                },
              @{@"photo" : @"img_bladerunner",
                @"name" : @"Blade Runner",
                },
              @{@"photo" : @"img_spiderman",
                @"name" : @"SpiderMan",
                },
              @{@"photo" : @"img_life",
                @"name" : @"Life",
                },
              @{@"photo" : @"img_mib",
                @"name" : @"MIB",
                },
              @{@"photo" : @"img_bumblebee",
                @"name" : @"BumbleBee",
                },
              @{@"photo" : @"img_blackpanther",
                @"name" : @"Black Panther",
                },nil];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (collectionView == self.movieCollectionView) {
        MovieCollectionViewCell *cellA = [collectionView dequeueReusableCellWithReuseIdentifier:@"movieIdentifier" forIndexPath:indexPath];
        NSDictionary *dict = [self.movie objectAtIndex:indexPath.item];
        cellA.movieImage.image = [UIImage imageNamed:dict[@"photo"]];
        cellA.movieText.text = dict[@"name"];
        return cellA;
    }
    else {
        MovieShowingCollectionViewCell *cellB = [collectionView dequeueReusableCellWithReuseIdentifier:@"showingIdentifier" forIndexPath:indexPath];
        NSDictionary *dict = [self.movie2 objectAtIndex:indexPath.item];
        cellB.movieShowingImage.image = [UIImage imageNamed:dict[@"photo"]];
        cellB.movieShowingText.text = dict[@"name"];
        return cellB;
    }
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.movie.count;
}

@end
