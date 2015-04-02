//
//  ViewController.m
//  11w
//
//  Created by MAC on 15/3/30.
//  Copyright (c) 2015年 com.xuezi.CDP. All rights reserved.
//

#import "ViewController.h"
#import "CDPPickerView.h"
@interface ViewController () <CDPPickerViewDelegate> {
    UILabel *label;
    CDPPickerView *pickerView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor greenColor];
    
    UIButton *button=[[UIButton alloc] initWithFrame:CGRectMake(30,200,100,40)];
    button.backgroundColor=[UIColor redColor];
    [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    label=[[UILabel alloc] initWithFrame:CGRectMake(30,60,100,30)];
    label.backgroundColor=[UIColor yellowColor];
    [self.view addSubview:label];
    
    NSArray *arr=[[NSArray alloc] initWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",nil];
    pickerView=[[CDPPickerView alloc] initWithDataArr:arr selectTitle:@"标题" rowHeight:50 delegate:self delegateView:self.view];
    
}

-(void)CDPPickerViewDidClickConfirm:(NSString *)confirmString{
    label.text=confirmString;
}

-(void)click{

    [pickerView pushPicker];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
