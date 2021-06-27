#import "BsFlutterButtonsPlugin.h"
#if __has_include(<bs_flutter_buttons/bs_flutter_buttons-Swift.h>)
#import <bs_flutter_buttons/bs_flutter_buttons-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "bs_flutter_buttons-Swift.h"
#endif

@implementation BsFlutterButtonsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBsFlutterButtonsPlugin registerWithRegistrar:registrar];
}
@end
