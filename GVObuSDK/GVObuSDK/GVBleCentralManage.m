//
//  BleCentralManage.m
//  GVObuSDK
//
//  Created by JayZ on 16/8/9.
//  Copyright © 2016年 genvict. All rights reserved.
//

#import "GVBleCentralManage.h"

static GVBleCentralManage * s_instance = nil;

@interface GVBleCentralManage () {
    NSMutableArray * _filterList;
    GVProtocolType _protocolType;
}

@end

@implementation GVBleCentralManage

#pragma mark - 实现CBCentralManagerDelegate代理
-(void)centralManagerDidUpdateState:(CBCentralManager *)central{
    GVLog(@"centralManagerDidUpdateState");
    
    if (self.bleStateBlock != nil) {
        self.bleStateBlock(central.state, nil, (NSObject*)central);
    }
}

-(void)centralManager:(CBCentralManager *)central didDiscoverPeripheral:(CBPeripheral *)peripheral advertisementData:(NSDictionary<NSString *,id> *)advertisementData RSSI:(NSNumber *)RSSI{
    GVLog(@"didDiscoverPeripheral");
    
}

-(void)centralManager:(CBCentralManager *)central didConnectPeripheral:(CBPeripheral *)peripheral{
    GVLog(@"didConnectPeripheral");
}

-(void)centralManager:(CBCentralManager *)central didFailToConnectPeripheral:(CBPeripheral *)peripheral error:(NSError *)error{
    GVLog(@"didFailToConnectPeripheral");
}

-(void)centralManager:(CBCentralManager *)central didDisconnectPeripheral:(CBPeripheral *)peripheral error:(NSError *)error{
    GVLog(@"didDisconnectPeripheral");
}

#pragma mark - 实现CBPeripheralDelegate代理
-(void)peripheral:(CBPeripheral *)peripheral didDiscoverServices:(NSError *)error{
    GVLog(@"didDiscoverServices");
}

-(void)peripheral:(CBPeripheral *)peripheral didDiscoverCharacteristicsForService:(CBService *)service error:(NSError *)error{
    GVLog(@"didDiscoverCharacteristicsForService");
}

-(void)peripheral:(CBPeripheral *)peripheral didUpdateValueForCharacteristic:(CBCharacteristic *)characteristic error:(NSError *)error{
    GVLog(@"didUpdateValueForCharacteristic");
}

-(void)peripheral:(CBPeripheral *)peripheral didUpdateNotificationStateForCharacteristic:(CBCharacteristic *)characteristic error:(NSError *)error{
    GVLog(@"didUpdateNotificationStateForCharacteristic");
}

-(void)peripheral:(CBPeripheral *)peripheral didWriteValueForCharacteristic:(CBCharacteristic *)characteristic error:(NSError *)error{
    GVLog(@"didWriteValueForCharacteristic");
}

#pragma mark - GVBleCentralManage对外接口

-(id)init{
    if(self = [super init]){
        
        //dispatch_queue_t centralQueue = dispatch_queue_create("com.genvict.mycentral", DISPATCH_QUEUE_SERIAL);
//        dispatch_queue_t centralQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
//        self.manager = [[CBCentralManager alloc] initWithDelegate:self queue:centralQueue];
        
        self.manager = [[CBCentralManager alloc] initWithDelegate:self queue:nil];
    }
    
    return self;
}

#pragma mark 单例模式，获取实例对象
+(instancetype)shareInstance{
    
    static dispatch_once_t onceToken ;
    dispatch_once(&onceToken, ^{
        s_instance = [[self alloc] init] ;
    });
    
    return s_instance;
}

#pragma mark 扫描设备
-(void)startScanPeripheralWithId:(NSString *)identify withName:(NSString *)name scanType:(int)scanType connectType:(int)connectType timeout:(int)timeout{
    
}

#pragma mark 停止扫描
-(void)stopScanPeripheral{
    
}

#pragma mark 连接设备
-(void)connectPeripheral:(CBPeripheral*)peripheral{
    
}

#pragma mark 断开当前连接
-(void)disconnectCurrentPeripheral{
    
}

#pragma mark 断开指定设备
-(void)disconnectPeripheral:(CBPeripheral*)peripheral{
    
}

#pragma mark 写数据
-(void)writeData:(NSData *)data{
    
}

















@end
