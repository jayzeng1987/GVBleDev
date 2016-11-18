//
//  GVObuSDK.h
//  GVObuSDK
//
//  Created by JayZ on 16/8/9.
//  Copyright © 2016年 genvict. All rights reserved.
//

#import <Foundation/Foundation.h>

/* 定义回调函数 */
typedef void(^obuCallBack)(Boolean status, NSObject * data, NSString *errorMsg);

@interface GVObuSDK : NSObject

//开始搜索蓝牙设备
-(void)startScan:(obuCallBack)callBack timeout:(int)timeout;

//结束搜索蓝牙设备
- (void)stopScan;

@end
