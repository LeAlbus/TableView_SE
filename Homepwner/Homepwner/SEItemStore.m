//
//  SEItemStore.m
//  Homepwner
//
//  Created by Pedro Lopes on 4/16/15.
//  Copyright (c) 2015 Pedro Lopes. All rights reserved.
//


//Essa classe é um Singleton
#import "SEItemStore.h"

@implementation SEItemStore

+ (instancetype)sharedStore
{
    static SEItemStore *sharedStore = nil;
    // Do I need to create a sharedStore?
    if (!sharedStore) {
        sharedStore = [[self alloc] initPrivate];
    }
    return sharedStore;
}
// Se alguem tenta chamar o itemstore, mostrar esse erro

- (instancetype)init
{
    @throw [NSException exceptionWithName:@"Singleton"
                                   reason:@"Use +[BNRItemStore sharedStore]"
                                 userInfo:nil];
    return nil;
}

// Inicializer de verdade
- (instancetype)initPrivate
{
    self = [super init];
    return self;
}
    
@end
