#import "AppMonetLibrary.h"
#import <AppMonet_Mopub/AppMonet.h>

@implementation AppMonetLibrary

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(initialize:(NSString *)applicationId)
{
    dispatch_async(dispatch_get_main_queue(), ^{
        AppMonetConfigurations *appMonetConfig = [AppMonetConfigurations configurationWithBlock:^(AppMonetConfigurations *builder) {
          builder.applicationId = applicationId;
        }];
        [AppMonet initialize:appMonetConfig];
    });
}
@end
