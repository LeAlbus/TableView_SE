//
//  SEItemStore.h
//  Homepwner
//
//  Created by Pedro Lopes on 4/16/15.
//  Copyright (c) 2015 Pedro Lopes. All rights reserved.
//


//Essa classe é um singleton
#import <Foundation/Foundation.h>

@interface SEItemStore : NSObject

+ (instancetype)sharedStore;

@end
