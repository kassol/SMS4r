//
//  main.m
//  SMS4r
//
//  Created by 张旭 on 15/3/5.
//  Copyright (c) 2015年 3lang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SMS4.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        SMS4* sms4 = [[SMS4 alloc] init];
        NSString* plain = @"1169351400006355|102|李立伟|02|350701198610200159|李立伟|02|350701198610200159|1|28|39190|100000|2014-04-12 00:00:00|2035-04-12 24:00:00||";
        NSString* jiami2 = [sms4 EncodeSMS4:plain withKey:@"ad37d033dac44f6b919ff66a3477613a"];
        NSLog(@"%@", jiami2);
        
        NSString* jiemi2 = [sms4 DecodeSMS4:jiami2 withKey:@"ad37d033dac44f6b919ff66a3477613a"];
        NSLog(@"%@", jiemi2);
    }
    return 0;
}
