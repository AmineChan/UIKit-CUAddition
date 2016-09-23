//
//  UIDevice+CUAddition.h
//  Pods
//
//  Created by czm on 16/3/25.
//
//

#import <UIKit/UIKit.h>

#define kOSVersion    ([[[UIDevice currentDevice] systemVersion] floatValue])

#define kOSVersionAbove9    (kOSVersion >= 9.0)
#define kOSVersionAbove8    (kOSVersion >= 8.0)
#define kOSVersionAbove7    (kOSVersion >= 7.0)
#define kOSVersionAbove6    (kOSVersion >= 6.0)

#define kOSVersionBlow9     (kOSVersion < 9.0)
#define kOSVersionBlow8     (kOSVersion < 8.0)
#define kOSVersionBlow7     (kOSVersion < 7.0)
#define kOSVersionBlow6     (kOSVersion < 6.0)

NS_ASSUME_NONNULL_BEGIN

@interface UIDevice (CUAddition)

- (int64_t)cu_deviceMemoryTotal;//unit:byte
- (int64_t)cu_deviceMemoryUsed;//unit:byte
- (int64_t)cu_deviceMemoryFree;//unit:byte
- (int64_t)cu_deviceMemoryActive;//unit:byte
- (int64_t)cu_deviceMemoryInactive;//unit:byte

- (int64_t)cu_currentTaskMemoryUsed; //unit:byte

@end

NS_ASSUME_NONNULL_END