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

@end


///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark - 简单工厂模式，创建协议
static GVProtocolsFactory * s_protocolsFactoryInstance = nil;

@implementation GVProtocolsFactory

#pragma mark 单例模式，获取实例对象
+(instancetype)shareInstance{
    
    static dispatch_once_t onceToken ;
    dispatch_once(&onceToken, ^{
        s_protocolsFactoryInstance = [[self alloc] init] ;
    });
    
    return s_protocolsFactoryInstance;
}

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


















