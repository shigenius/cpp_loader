//
//  SocketControllerObjC.cpp
//  cpp_loader
//
//  Created by TATSUYA SHIGETOMI on 2017/10/27.
//  Copyright © 2017年 shige. All rights reserved.
//

#include "SocketControllerObjC.h"
#include "SocketControllerCpp.hpp"

@implementation SocketControllerObjC {
    SocketControllerCpp *socketController;
}

-(id)init {
    self = [super init];
    socketController = new SocketControllerCpp();
    return self;
}

-(void)dealloc {
    delete socketController;
    //[super dealloc];
}

-(void)test {
    socketController->test();
}
@end
