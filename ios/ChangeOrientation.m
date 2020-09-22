#import "ChangeOrientation.h"

@implementation ChangeOrientation

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(setLandscape)
{
  dispatch_async(dispatch_get_main_queue(), ^{
       NSNumber *resetOrientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationUnknown];

         [[UIDevice currentDevice] setValue:resetOrientationTarget forKey:@"orientation"];



         NSNumber *orientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationLandscapeRight];

         [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
   });

}


RCT_EXPORT_METHOD(setPortrait)
{
  dispatch_async(dispatch_get_main_queue(), ^{
       NSNumber *resetOrientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationUnknown];

            [[UIDevice currentDevice] setValue:resetOrientationTarget forKey:@"orientation"];



            NSNumber *orientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationPortrait];

            [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
   });

}

// Example method
// See // https://facebook.github.io/react-native/docs/native-modules-ios
RCT_REMAP_METHOD(multiply,
                 multiplyWithA:(nonnull NSNumber*)a withB:(nonnull NSNumber*)b
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)
{
  NSNumber *result = @([a floatValue] * [b floatValue]);

  resolve(result);
}

@end
