//
//  NSSet+Printing.m
//  Set
//
//  Created by Vasilii on 19.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "NSSet+Printing.h"

@implementation NSSet (Printing)

-(void)print {
    printf("{");
    
    for (NSNumber * element in self)
        printf(" %li",(long) [element integerValue]);
    printf(" }\n");
}

@end
