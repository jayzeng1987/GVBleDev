//
//  GVBleDevCtrl.m
//  GVObuSDK
//
//  Created by JayZ on 16/12/6.
//  Copyright © 2016年 genvict. All rights reserved.
//

#import "GVBleDevCtrl.h"

@implementation GVBleDevCtrl

-(id)init{
    if(self = [super init]){
        return self;
    }
    
    return nil;
}

//设置代理
-(void)setObuSDKDelegate:(id)object{
    
}

//判断蓝牙是否打开
-(Boolean)isEnabledBluetooth{
    
}

//检查设备连接状态
-(Boolean)checkConnection{
    
}

//绑定设备
-(Boolean)bindDev:(NSString *)uuid{
    
}

//设备解绑
-(Boolean)unbindDev{
    
}

//扫描设备，timeout <= 0, 则需调用stopScanDevice接口
-(void)startScanDevice:(int)timeout callback:(GVResultBlock)resultBlock{
    
}

//停止扫描设备
-(void)stopScanDevice{
    
}

//按照金溢默认规则连接设备
-(void)connectDevice:(int)timeout callback:(GVResultBlock)resultBlock{
    
}

//根据设备蓝牙UUID连接
-(void)connectDeviceWithUUID:(NSString *)serviceUUID timeout:(int)timeout callback:(GVResultBlock)resultBlock{
    
}

//根据设备名称连接
-(void)connectDeviceWithName:(NSString *)devName timeout:(int)timeout callback:(GVResultBlock)resultBlock{
    
}


@end
