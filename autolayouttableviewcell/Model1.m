//
//  Model1.m
//  autolayouttableviewcell
//
//  Created by iMac206 on 17/2/13.
//  Copyright © 2017年 jam. All rights reserved.
//

#import "Model1.h"

@implementation Model1
+(Model1*)randomModel
{
    Model1* m=[[Model1 alloc]init];
    
    m.imageName=@"img";
    
    m.title=[NSString stringWithFormat:@"title%d",arc4random()%1000];
    
    NSString* dett=@"";
    int laps=arc4random()%4;
    for (int i=0; i<laps; i++) {
        dett=[NSString stringWithFormat:@"%@行行行行行行行行行行行行行行行行行行行行,",dett];
    }
    m.detail=dett;
    
    m.photoCount=arc4random()%10;
    m.date=[[NSDate date]description];
    
    return m;
}
@end