//
//  MyRootViewController.m
//  TestNAWithRN
//
//  Created by lushuang on 2022/7/6.
//

#import "MyRootViewController.h"
#import <React/RCTRootView.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTBridge.h>

@interface MyRootViewController ()

@property (nonatomic,strong)RCTBridge *bridge;

@end

@implementation MyRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  if (@available(iOS 13.0, *)) {
    self.view.backgroundColor = [UIColor systemBackgroundColor];
  } else {
    self.view.backgroundColor = [UIColor whiteColor];
  }
  
  
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame = CGRectMake(100, 100, 150, 90);
    
    [btn1 setTitle:@"click me with par" forState:UIControlStateNormal];
    btn1.backgroundColor = [UIColor blueColor];
    btn1.tag = 101;
    [btn1 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.frame = CGRectMake(100, 200, 150, 90);
    
    [btn2 setTitle:@"click me" forState:UIControlStateNormal];
    btn2.backgroundColor = [UIColor blueColor];
    btn2.tag = 102;
    [btn2 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn3.frame = CGRectMake(100, 300, 150, 90);
    
    [btn3 setTitle:@"click me with na" forState:UIControlStateNormal];
    btn3.backgroundColor = [UIColor blueColor];
    btn3.tag = 103;
    [btn3 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:btn1];
    [self.view addSubview:btn2];
    [self.view addSubview:btn3];
}

-(void)viewWillAppear:(BOOL)animated{
  [super viewWillAppear:animated];
}

- (void)btnClick:(id)sender {
  // btn click

  UIButton *btn = (UIButton *)sender;
//  NSURL *jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index.js" fallbackResource:nil];
  
    NSURL *jsCodeLocation = nil;
    
    if ([self isSimuLator]){
        jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
    }
    else {
        jsCodeLocation = [[NSBundle mainBundle] URLForResource:@"index" withExtension:@"jsbundle"];
    }
    
    
    RCTRootView *rootView;
    if (btn.tag == 101) {
        // 带参数的
        NSDictionary *par = @{@"scores" :
                                  @[@{@"name" : @"Alex",@"value": @"42"},
                                    @{@"name" : @"Joel",@"value": @"10"}]};
        rootView =
        [[RCTRootView alloc] initWithBundleURL: jsCodeLocation
                                    moduleName: @"page1"
                             initialProperties:par
                                 launchOptions: nil];
        
        
    } else if(btn.tag == 102){
        rootView =
        [[RCTRootView alloc] initWithBundleURL: jsCodeLocation
                                    moduleName: @"page2"
                             initialProperties:nil
                                 launchOptions: nil];
        
    }
    else if(btn.tag == 103){
        rootView =
        [[RCTRootView alloc] initWithBundleURL: jsCodeLocation
                                    moduleName: @"page3"
                             initialProperties:nil
                                 launchOptions: nil];
        
    }
    
    
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view = rootView;
    [self.navigationController pushViewController:vc animated:YES];
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


-(BOOL)isSimuLator
{
    if (TARGET_IPHONE_SIMULATOR == 1 && TARGET_OS_IPHONE == 1) {
        //模拟器
        return YES;
    }else{
        //真机
        return NO;
    }
}

@end
