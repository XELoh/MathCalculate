/********* MathCalculator.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface MathCalculator : CDVPlugin {
  // Member variables go here.
}

- (void)add:(CDVInvokedUrlCommand*)command;
@end

@implementation MathCalculator

- (void)add:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    
    CGRect frame = CGRectMake(0,0,100,100);
    UITextField *textField = [[UITextField alloc] initWithFrame:frame];
    
  pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];

   [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
