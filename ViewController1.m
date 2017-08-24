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
@property(nonatomic,retain)UIButton *xinXiangImg;
@property(nonatomic,retain)UITextField *txtf;
@property(nonatomic,strong)UIScrollView *scroV;
@property(nonatomic,retain)UIView *Btn4View;
@end

@implementation ViewController1{
    NSArray *LabArry;
}




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
    [self.view addSubview:self.Btn4View];
    
    
    
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
        _seaTuView.image=[UIImage imageNamed:@"search"];

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

-(UIButton *)xinXiangImg{
    if (!_xinXiangImg) {
        _xinXiangImg=[[UIButton alloc]init];
     _xinXiangImg.frame=CGRectMake(CGRectGetMaxX(_searchView.frame)+10, 28, 25, 25);
        [_xinXiangImg setImage:[UIImage imageNamed:@"XinXiang"] forState:UIControlStateNormal];
        [_xinXiangImg addTarget:self action:@selector(xinXiangImgClick) forControlEvents:UIControlEventTouchUpInside];
        
    }
    
       return _xinXiangImg;

}
-(void)xinXiangImgClick{
    
    NSLog(@"信箱按钮被点击");
    
}


-(UIScrollView *)scroV{
    if (!_scroV) {
        _scroV=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 64, APPWidth, APPHeight/2-64)];
        _scroV.contentSize=CGSizeMake(APPWidth*3, APPHeight/2-64);
        // _scroV.scrollEnabled=YES;//允许左右滚动
        _scroV.pagingEnabled=YES;//整页滚动
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

-(UIView *)Btn4View{
    if (!_Btn4View) {
            _Btn4View=[[UIView alloc]init];
            _Btn4View.frame=CGRectMake(0,APPHeight/2,APPWidth ,APPHeight/2-49 );
        
        NSArray *ImgArry=[NSArray arrayWithObjects:@"JFW.png",@"ZXFW.png",@"XXTZ.png",@"GYG.png", nil];
        LabArry=[NSArray arrayWithObjects:@"叫服务", @"在线缴费",@"信息通知",@"逛一逛",nil];
        
        for (int i=0; i<4; i++) {
            UIView *view4=[[UIView alloc]init];
            
            float h=APPHeight/2-49;
            
            view4.frame=CGRectMake((APPWidth/3)*(i%3), h/2*(i/3),APPWidth/3 , h/2);
            [_Btn4View addSubview:view4];
            
            UIButton *btn4=[[UIButton alloc]initWithFrame:CGRectMake(20, 20, (APPWidth-100)/3, (h-160)/2)];
            [btn4 setImage:[UIImage imageNamed:ImgArry[i]] forState:UIControlStateNormal];
            [btn4 addTarget:self action:@selector(btn4Click:) forControlEvents:UIControlEventTouchUpInside];
            btn4.tag=i;
            [view4 addSubview:btn4];
            
            UILabel *lab4=[[UILabel alloc]initWithFrame:CGRectMake(20, h/2-50, (APPWidth-100)/3, 20)];
            lab4.textAlignment=NSTextAlignmentCenter;
            [lab4 setText:LabArry[i]];
            lab4.tag=100;
            [view4 addSubview:lab4];
            
        }
    }
    return _Btn4View;
}
-(void)btn4Click:(UIButton *)btn{
    
    NSLog(@"btn: %@",LabArry[btn.tag]);
    


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
