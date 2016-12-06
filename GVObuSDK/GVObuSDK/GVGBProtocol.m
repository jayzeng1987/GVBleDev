//
//  GVGBProtocol.m
//  GVObuSDK
//
//  Created by JayZ on 16/11/24.
//  Copyright © 2016年 genvict. All rights reserved.
//

#import "GVGBProtocol.h"
#import "GVGBTransmitStrategy.h"
#import "GVGBIndicationStrategy.h"
#import "GVGBNotificationStrategy.h"

@interface GVGBProtocol()

@property (nonatomic, assign) GVBleCommType bleCommType;
@property (nonatomic, strong) GVGBTransmitStrategy * transmitStrategy;

@end

@implementation GVGBProtocol

-(id)init{
    self = [super init];
    if (self) {
        self.transmitStrategy = [GVGBIndicationStrategy]
    }
    
    return self;
}

-(void)switchBleCommType:(GVBleCommType)type callback:(GVResultBlock)resultBlock{
    
}

-(void)transmit:(NSData *)data callback:(GVResultBlock)resultBlock{
    
}

@end
