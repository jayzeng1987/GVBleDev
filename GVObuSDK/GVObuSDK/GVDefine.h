//
//  GVDefine.h
//  GVObuSDK
//
//  Created by JayZ on 16/8/15.
//  Copyright © 2016年 genvict. All rights reserved.
//

#ifndef GVDefine_h
#define GVDefine_h

#ifdef DEBUG
#define GVLog(...) NSLog(__VA_ARGS__)
#else
#define GVLog(...)
#endif

#define GEASY_BLUE_SERVICE_UUID_TONGYONG                        @"FF12"
#define GEASY_BLUE_WRITE_CHARACTERISTIC_UUID_TONGYONG           @"FF01"
#define GEASY_BLUE_READ_CHARACTERISTIC_UUID_TONGYONG            @"FF02"
#define GEASY_BLUE_STATUS_CHARACTERISTIC_UUID_TONGYONG          @"FF03"

#define GEASY_BLUE_SERVICE_UUID_GUIZHOU                         @"FF12"
#define GEASY_BLUE_WRITE_CHARACTERISTIC_UUID_GUIZHOU            @"FF01"
#define GEASY_BLUE_READ_CHARACTERISTIC_UUID_GUIZHOU             @"FF02"
#define GEASY_BLUE_STATUS_CHARACTERISTIC_UUID_GUIZHOU           @"FF03"

#define GEASY_BLUE_SERVICE_UUID_WECHAT                          @"FEE7"
#define GEASY_BLUE_WRITE_CHARACTERISTIC_UUID                    @"FEC7"
#define GEASY_BLUE_READ_CHARACTERISTIC_UUID                     @"FEC8"
#define GEASY_BLUE_STATUS_CHARACTERISTIC_UUID                   @"FF09"


typedef NS_ENUM(NSUInteger, GVBleState) {
    GVBleStateUnknown = 0,
    GVBleStateResetting,
    GVBleStateUnsupported,
    GVBleStateUnauthorized,
    GVBleStatePoweredOff,
    GVBleStatePoweredOn,
    GVBleStateScanSuccess,
    GVBleStateScanFailed,
    GVBleStateScanTimeout,
    GVBleStateConnectSuccess,
    GVBleStateConnectFailed,
    GVBleStateConnectTimeout,
    GVBleStateWriteDataFailed,
    GVBleStateReadDataFailed,
    GVBleStateFindServiceFailed,
    GVBleStateFindCharacteristicFailed

};

typedef NS_ENUM(NSUInteger, GVProtocolType) {
    GVProtocolCommon = 0, //通用协议
    GVProtocolEncry,  //采用加密芯片的协议，如果贵州地区
    GVProtocolEncryWithWeChat, //采用加密芯片和支持微信protobuf的协议，如广东、贵州、山东等地区
};


#endif /* GVDefine_h */
