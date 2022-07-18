//
//  CreatCat.m
//  TestNAWithRN
//
//  Created by lushuang on 2022/7/11.
//

#import "CreatCat.h"

@implementation CreatCat

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(cratCat:(NSString *)name sex:(NSString *)sex age:(int)age)
{
  NSLog(@"我创建了一只名叫%@的猫，性别%@， 今年%d岁", name, sex, age);
}
//对外提供调用方法
RCT_EXPORT_METHOD(addEvent:(NSString *)name location:(NSString *)location){
  NSLog(@"Pretending to create an event %@ at %@", name, location);
}

//方法3
RCT_EXPORT_METHOD(whoName:(NSString *)name age:(int)age location:(NSString *)location){
  NSLog(@"可以的%@,年来%d,还有%@",name,age,location);
    
    
}

#pragma mark - 回调给js data

RCT_REMAP_METHOD(findEventsPromise,
                 resolver:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject)
{
    id events =   [self getData]; // [self getDicData];
    if (events) {
        resolve(events);
    } else {
        NSError *error=[NSError errorWithDomain:@"我是Promise回调错误信息..." code:101 userInfo:nil];
        reject(@"no_events", @"There were no events", error);
    }
}

- (NSArray *)getData{
    return  @[@"张三",@"李四",@"王五",@"赵六"];
}

- (NSDictionary *)getDicData {
    return @{@"1":@"你好",
             @"2":@"我好"};
}

@end
