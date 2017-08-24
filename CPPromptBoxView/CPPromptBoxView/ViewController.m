//
//  ViewController.m
//  CPPromptBoxView
//
//  Created by lk03 on 2017/8/24.
//  Copyright © 2017年 chenp. All rights reserved.
//

#import "ViewController.h"
#import "CPPrompt.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)action:(UIButton *)sender {
    //配置属性
    CPPromptBoxOption *option = [CPPromptBoxOption promptBoxOptionWithClipView:sender];
    
    //初始化
    CPPromptBoxView *PromptBoxView = [CPPromptBoxView promptBoxViewWithOption:option];
    
    //添加数据
    [PromptBoxView addTitles:@[@"nihao",@"ceshi"] images:nil didSelector:^(NSIndexPath *indexPath) {
        //点击回调
        NSLog(@"%@",indexPath);
        
    } cancleSelector:^{
        //取消回调
        NSLog(@">>>>>>");
        
    }];
    
    //显示
    [PromptBoxView showPrompt];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
