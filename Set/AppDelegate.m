//
//  AppDelegate.m
//  Set
//
//  Created by Vasilii on 19.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "AppDelegate.h"
#import "NSSet+Printing.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSMutableSet *set1 = [NSMutableSet setWithObjects:@1, @3, @5, @10, nil];
    NSSet *set2 = [NSSet setWithObjects:@-5, @100, @3, @5, nil];
    NSSet *set3 = [NSSet setWithObjects:@12, @200, @3, nil];
    
    NSLog(@"Набор 1");
    [set1 print];
    NSLog(@"Набор 2");
    [set2 print];
    
    //Тест на равенство
    if ([set1 isEqualToSet:set2] == YES)
        NSLog(@"Набор 1 равен набору 2");
        else
            NSLog(@"Набор 1 не равен набору 2");
    
    //Тест на членство
    if ([set1 containsObject:@10] == YES)
        NSLog(@"Набор 1 содержит 10");
    else
        NSLog(@"Набор 1 не содержит 10");
    if([set2 containsObject:@10] == YES)
        NSLog(@"Набор 2 содрежит 10");
    else
        NSLog(@"Набор 2 не содержит 10");
    
    //Добавление и удаление объектов из мутабельного набора set1
    [set1 addObject:@4];
    [set1 removeObject:@10];
    NSLog(@"Набор 1 после добавление 4 и удаления 10");
    [set1 print];
    
    //пересечение двух наборов
    [set1 intersectSet:set2];
    NSLog(@"Пересечение набор 1 и набор 2");
    [set1 print];
    
    //Объединение двух наборов
    [set1 unionSet:set3];
    NSLog(@"Объединение набор 1 и набор 3");
    [set1 print];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
