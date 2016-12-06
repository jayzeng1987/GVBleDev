//
//  GVProtocols.m
//  GVObuSDK
//
//  Created by JayZ on 16/11/24.
//  Copyright © 2016年 genvict. All rights reserved.
//

#import "GVAbstractProtocols.h"
#import "GVGBProtocol.h"

@implementation GVAbstractProtocols

-(instancetype)init{
    if ([self isMemberOfClass:[GVAbstractProtocols class]]) {
        [self doesNotRecognizeSelector:_cmd];
        
        return nil;
    } else{
        self = [super init];
        if (self) {
            return self;
        }
    }
    
    return nil;
}

-(void) testAPI {
    [self doesNotRecognizeSelector:_cmd];
}

-(void)switchBleCommType:(GVBleCommType)type callback:(GVResultBlock)resultBlock{
    [self doesNotRecognizeSelector:_cmd];
}

-(void)transmit:(NSData *)data callback:(GVResultBlock)resultBlock{
    [self doesNotRecognizeSelector:_cmd];
}

@end


///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark - 简单工厂模式，创建协议
@implementation GVProtocolsFactory

#pragma mark 单例模式，获取实例对象
static GVProtocolsFactory * s_protocolsFactoryInstance = nil;
+(instancetype)shareInstance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        s_protocolsFactoryInstance = [[[self class] alloc] init];
        //所有的属性必须放在这里初始化
        
        
    });
    
    return s_protocolsFactoryInstance;
}

+(instancetype)allocWithZone:(struct _NSZone *)zone{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        s_protocolsFactoryInstance = [super allocWithZone:zone];
    });
    
    return s_protocolsFactoryInstance;
}

#pragma mark 根据协议类型创建对象
-(GVAbstractProtocols *)create:(GVProtocolType) protocolType {
    GVAbstractProtocols * protocolConcrete = nil;
    
    switch (protocolType) {
            
        case PROTOCOL_GB: //国标协议
            protocolConcrete = [[GVGBProtocol alloc] init];
            break;
            
        default:
            break;
    }
    
    return protocolConcrete;
    
}

@end


















