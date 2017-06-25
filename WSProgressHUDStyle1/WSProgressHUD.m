//
//  ProgressAnimation.m
//  AppleProgressHUD
//
//  Created by WebsoftProfession on 7/11/16.
//  WebsoftProfession
//

#import "WSProgressHUD.h"

@implementation WSProgressHUD

/*
// Only override drawRect: if you perform custom drawing.
 
 
 */


// An empty implementation adversely affects performance during animation.


+(instancetype)sharedInstance{
    static WSProgressHUD *sharedClient =nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedClient = [[WSProgressHUD alloc]init];
    });
    return sharedClient;
}

-(void)initWithTimerValue
{
    [timer invalidate];
    timer = nil;
    timer =[NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(updateAnimationValue) userInfo:nil repeats:YES];
}


- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    UIBezierPath *startPath=[UIBezierPath bezierPath];
    UIBezierPath *startPath2=[UIBezierPath bezierPath];
    UIBezierPath *startPath3=[UIBezierPath bezierPath];
    UIBezierPath *startPath4=[UIBezierPath bezierPath];
    UIBezierPath *startPath5=[UIBezierPath bezierPath];
    UIBezierPath *startPath6=[UIBezierPath bezierPath];
    UIBezierPath *startPath7=[UIBezierPath bezierPath];
    UIBezierPath *startPath8=[UIBezierPath bezierPath];
    UIBezierPath *startPath9=[UIBezierPath bezierPath];
    UIBezierPath *startPath10=[UIBezierPath bezierPath];
    
    UIBezierPath *startPath11=[UIBezierPath bezierPath];
    UIBezierPath *startPath12=[UIBezierPath bezierPath];
    UIBezierPath *startPath13=[UIBezierPath bezierPath];
    UIBezierPath *startPath14=[UIBezierPath bezierPath];
    UIBezierPath *startPath15=[UIBezierPath bezierPath];
    UIBezierPath *startPath16=[UIBezierPath bezierPath];
    
    UIBezierPath *animationPath=[UIBezierPath bezierPath];
    
    
    if (animationValue==0 && animationValue2==0) {
        
        [animationPath addArcWithCenter:CGPointMake(rect.size.width/2, rect.size.height/2) radius:8 startAngle:M_PI*31/16 endAngle:0 clockwise:YES];
        
    }
    else
    {
        if (animationValue2>30) {
            
            animationValue=0;
            animationValue2=0;
            
        }
        [animationPath addArcWithCenter:CGPointMake(rect.size.width/2, rect.size.height/2) radius:8 startAngle:M_PI*(31/16)*animationValue/16 endAngle:M_PI*(31/16)*animationValue2/16 clockwise:YES];
    }
    
    
    [startPath addArcWithCenter:CGPointMake(rect.size.width/2, rect.size.height/2) radius:8 startAngle:M_PI*31/16 endAngle:0 clockwise:YES];
    
    [startPath2 addArcWithCenter:CGPointMake(rect.size.width/2, rect.size.height/2) radius:8 startAngle:M_PI*(31/16)*1/16 endAngle:M_PI*(31/16)*2/16 clockwise:YES];
    
    [startPath3 addArcWithCenter:CGPointMake(rect.size.width/2, rect.size.height/2) radius:8 startAngle:M_PI*(31/16)*3/16 endAngle:M_PI*(31/16)*4/16 clockwise:YES];
    
    [startPath4 addArcWithCenter:CGPointMake(rect.size.width/2, rect.size.height/2) radius:8 startAngle:M_PI*(31/16)*5/16 endAngle:M_PI*(31/16)*6/16 clockwise:YES];
    
    
    [startPath5 addArcWithCenter:CGPointMake(rect.size.width/2, rect.size.height/2) radius:8 startAngle:M_PI*(31/16)*7/16 endAngle:M_PI*(31/16)*8/16 clockwise:YES];
    
    [startPath6 addArcWithCenter:CGPointMake(rect.size.width/2, rect.size.height/2) radius:8 startAngle:M_PI*(31/16)*9/16 endAngle:M_PI*(31/16)*10/16 clockwise:YES];
    
    [startPath7 addArcWithCenter:CGPointMake(rect.size.width/2, rect.size.height/2) radius:8 startAngle:M_PI*(31/16)*11/16 endAngle:M_PI*(31/16)*12/16 clockwise:YES];
    
    [startPath8 addArcWithCenter:CGPointMake(rect.size.width/2, rect.size.height/2) radius:8 startAngle:M_PI*(31/16)*13/16 endAngle:M_PI*(31/16)*14/16 clockwise:YES];
    
    [startPath9 addArcWithCenter:CGPointMake(rect.size.width/2, rect.size.height/2) radius:8 startAngle:M_PI*(31/16)*15/16 endAngle:M_PI*(31/16)*16/16 clockwise:YES];
    
    [startPath10 addArcWithCenter:CGPointMake(rect.size.width/2, rect.size.height/2) radius:8 startAngle:M_PI*(31/16)*17/16 endAngle:M_PI*(31/16)*18/16 clockwise:YES];
    
    
    [startPath11 addArcWithCenter:CGPointMake(rect.size.width/2, rect.size.height/2) radius:8 startAngle:M_PI*(31/16)*19/16 endAngle:M_PI*(31/16)*20/16 clockwise:YES];
    [startPath12 addArcWithCenter:CGPointMake(rect.size.width/2, rect.size.height/2) radius:8 startAngle:M_PI*(31/16)*21/16 endAngle:M_PI*(31/16)*22/16 clockwise:YES];
    [startPath13 addArcWithCenter:CGPointMake(rect.size.width/2, rect.size.height/2) radius:8 startAngle:M_PI*(31/16)*23/16 endAngle:M_PI*(31/16)*24/16 clockwise:YES];
    [startPath14 addArcWithCenter:CGPointMake(rect.size.width/2, rect.size.height/2) radius:8 startAngle:M_PI*(31/16)*25/16 endAngle:M_PI*(31/16)*26/16 clockwise:YES];
    [startPath15 addArcWithCenter:CGPointMake(rect.size.width/2, rect.size.height/2) radius:8 startAngle:M_PI*(31/16)*27/16 endAngle:M_PI*(31/16)*28/16 clockwise:YES];
    [startPath16 addArcWithCenter:CGPointMake(rect.size.width/2, rect.size.height/2) radius:8 startAngle:M_PI*(31/16)*29/16 endAngle:M_PI*(31/16)*30/16 clockwise:YES];
    
    [startPath appendPath:startPath2];
    [startPath appendPath:startPath3];
    [startPath appendPath:startPath4];
    [startPath appendPath:startPath5];
    [startPath appendPath:startPath6];
    [startPath appendPath:startPath7];
    [startPath appendPath:startPath8];
    [startPath appendPath:startPath9];
    [startPath appendPath:startPath10];
    
    [startPath appendPath:startPath11];
    [startPath appendPath:startPath12];
    [startPath appendPath:startPath13];
    [startPath appendPath:startPath14];
    [startPath appendPath:startPath15];
    [startPath appendPath:startPath16];
    
    
    [[UIColor blackColor] set];
    [startPath setLineWidth:8];
    [startPath setLineCapStyle:kCGLineCapButt];
    [startPath stroke];
    
    [[UIColor lightGrayColor] set];
    [animationPath setLineWidth:8];
    [animationPath stroke];
    
    
    
}

-(void)updateAnimationValue
{
    if (animationValue==0 && animationValue2==0) {
        
        animationValue++;
        animationValue2=animationValue+1;
    }
    else
    {
        animationValue=animationValue+2;
        animationValue2=animationValue+1;
    }
    
   
    
    [self setNeedsDisplay];
}

-(void)removeProgressHUD{
    
    [UIView animateWithDuration:0.3 animations:^{
        self.alpha=0.1;
    } completion:^(BOOL finished) {
        [timer invalidate];
        timer=nil;
        [self removeFromSuperview];
    }];
    
    
}




@end
