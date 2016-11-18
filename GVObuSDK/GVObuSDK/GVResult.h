//
//  GVResult.h
//  GVObuSDK
//
//  Created by JayZ on 16/11/9.
//  Copyright © 2016年 genvict. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GVDefine.h"


@interface GVResult : NSObject

@property(nonatomic, assign) Boolean status;
@property(nonatomic, assign) GVResultCode code;
@property(nonatomic, strong) NSString * msg;

@end
