//
//  SEItemStore.m
//  Homepwner
//
//  Created by Pedro Lopes on 4/16/15.
//  Copyright (c) 2015 Pedro Lopes. All rights reserved.
//


//Essa classe é um Singleton
#import "SEItemStore.h"
#import "SEItem.h"

@interface SEItemStore ()

@property (nonatomic) NSMutableArray *privateItems;

@end

@implementation SEItemStore

+ (instancetype)sharedStore
{
    static SEItemStore *sharedStore = nil;
    // checa se já existe um sharedStore
    if (!sharedStore) {
        sharedStore = [[self alloc] initPrivate];
    }
    return sharedStore;
}

- (SEItem *)criaItem
{
    SEItem *item = [SEItem randomItem];
    [self.privateItems addObject:item];
    return item;
}

// Se alguem tenta chamar um sharedstore, mostrar esse erro

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
    if (self){
        _privateItems = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)allItems
{
    return self.privateItems;
    //Caso quisesse sobrescrever para retornar uma cópia imutável, ficaria:
    //return [self.privateItems copy];
}
    
@end
