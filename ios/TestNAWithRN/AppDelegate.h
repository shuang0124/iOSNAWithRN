//
//  AppDelegate.h
//  TestNAWithRN
//
//  Created by lushuang on 2022/7/6.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

@property (nonatomic, strong) UIWindow *window;

- (void)saveContext;


@end

