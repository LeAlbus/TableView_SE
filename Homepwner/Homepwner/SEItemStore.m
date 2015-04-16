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
    // Preciso criar um sharedStore?
    if (!sharedStore)
    {
        sharedStore = [[self alloc] initPrivate];
    }
    return sharedStore;
}
//Erro na tentativa de alocar e iniciar outro ItemStore

- (instancetype)init
{
    @throw [NSException exceptionWithName:@"Singleton"
                                   reason:@"Use +[SEItemStore sharedStore]"
                                 userInfo:nil];
    return nil;
    {
       
        // Here is the real (secret) initializer
        - (instancetype)initPrivate
        {
            self = [super init];
            return self;
        }
    }
}
@end
