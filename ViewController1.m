//
//  ViewController1.m
//  物业通1
//
//  Created by macmacpro on 17/8/22.
//  Copyright © 2017年 fy. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 ()
@property(nonatomic,retain)UIView *titView;
@property(nonatomic,retain)UIImageView *seaTuView;
@property(nonatomic,retain)UIView *searchView;
@property(nonatomic,retain)UIImageView *xinXiangImg;
@property(nonatomic,retain)UITextField *txtf;
@property(nonatomic,strong)UIScrollView *scroV;

@end

@implementation ViewController1




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=UIColorFromRGB(0xffffff);
    [self.view addSubview:self.titView];
    [_titView addSubview:self.searchView];
    [_searchView addSubview:self.txtf];
    [_searchView addSubview:self.seaTuView];
    [_titView addSubview:self.xinXiangImg];
    [self.view addSubview:self.scroV];
    
    
    
}
-(UIView *)titView{
    if (!_titView) {
        _titView =[[UIView alloc]init];
        _titView.frame=CGRectMake(0, 0, APPWidth, 64);
        _titView.backgroundColor=UIColorFromRGB(0xececec);

    }
    return _titView;
}

-(UIView *)searchView{
    _searchView=[[UIView alloc]initWithFrame:CGRectMake(20, 28, APPWidth-50-20, 30)];
    _searchView.backgroundColor=UIColorFromRGB(0xffffff);
    return _searchView;
}
-(UIImageView *)seaTuView{
    if (!_seaTuView) {
        _seaTuView=[[UIImageView alloc]init];
        _seaTuView.frame=CGRectMake(0, 0, 30, 30);
        _seaTuView.image=[UIImage imageNamed:@"wo"];

    }
        return _seaTuView;
}
-(UITextField *)txtf{
    if (!_txtf) {
        _txtf=[[UITextField alloc]init];
        _txtf.frame=CGRectMake(30, 0, _searchView.width-30, 30);
        _txtf.backgroundColor=[UIColor whiteColor];
        _txtf.placeholder=@"搜索";
}
    return _txtf;
}

-(UIImageView *)xinXiangImg{
    if (!_xinXiangImg) {
        _xinXiangImg=[[UIImageView alloc]init];
     _xinXiangImg.frame=CGRectMake(CGRectGetMaxX(_searchView.frame)+10, 28, 30, 30);
        _xinXiangImg.image=[UIImage imageNamed:@"wo"];
           }
    return _xinXiangImg;

}

-(UIScrollView *)scroV{
    if (!_scroV) {
        _scroV=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 64, APPWidth, APPHeight/2-64)];
        _scroV.contentSize=CGSizeMake(APPWidth*3, APPHeight/2-64);
        // _scroV.scrollEnabled=YES;//允许左右滚动
        _scroV.pagingEnabled=YES;
        _scroV.backgroundColor=[UIColor grayColor];
        NSArray *arr=[[NSArray alloc]initWithObjects:@"2.png",@"3.png",@"4.png",nil];

        for (int i=0; i<3; i++) {
            UIImageView *imgV=[[UIImageView alloc]initWithFrame:CGRectMake(APPWidth*i, 0, APPWidth, APPHeight/2-64)];
           [_scroV addSubview:imgV];
           imgV.image=[UIImage imageNamed:arr[i]];
        }
        
    }
    return _scroV;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
