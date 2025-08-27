#import "EnsPlugin.h"
#if __has_include(<ens_plugin/ens_plugin-Swift.h>)
#import <ens_plugin/ens_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "ens_plugin-Swift.h"
#endif

@implementation EnsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftEnsPlugin registerWithRegistrar:registrar];
}
@end
