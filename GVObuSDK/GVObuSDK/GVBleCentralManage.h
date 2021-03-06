//
//  BleCentralManage.h
//  GVObuSDK
//
//  Created by JayZ on 16/8/9.
//  Copyright © 2016年 genvict. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreBluetooth/CoreBluetooth.h>
#import "GVDefine.h"
#import "GVObuSDKDelegate.h"


typedef void(^BleStateBlock)(int status, NSString *description, NSObject *obj);
typedef void(^ReadDataBlock)(NSData *data);

@interface GVBleCentralManage : NSObject <CBCentralManagerDelegate, CBPeripheralDelegate>

@property(nonatomic, copy)BleStateBlock bleStateBlock;
@property(nonatomic, copy)ReadDataBlock readDataBlock;

@property(nonatomic, strong)CBCentralManager *manager;
@property(nonatomic, strong)CBPeripheral *foundPeripheral;
@property(nonatomic, strong)CBPeripheral *activedPeripheral;
@property(nonatomic, strong)NSMutableArray *filterList; //过滤列表
@property(nonatomic, assign)GVProtocolType protocolType; //协议类型
@property(nonatomic, assign)GVBleCommType commType; //通讯方式

#pragma mark - GVBleCentralManage对外接口

#pragma mark 单例模式，获取实例对象
+(instancetype)shareInstance;

#pragma mark 设置代理
-(void)setObuSDKDelegate:(id)object;

#pragma mark 扫描设备
-(void)startScanPeripheralWithId:(NSString *)identify withName:(NSString *)name scanType:(int)scanType connectType:(int)connectType timeout:(int)timeout;

#pragma mark 停止扫描
-(void)stopScanPeripheral;

#pragma mark 连接设备
-(void)connectPeripheral:(CBPeripheral*)peripheral;

#pragma mark 断开当前连接
-(void)disconnectCurrentPeripheral;

#pragma mark 断开指定设备
-(void)disconnectPeripheral:(CBPeripheral*)peripheral;

#pragma mark 写数据
-(void)writeData:(NSData *)data;






@end
