
import Foundation

 @objc(HWPCopy) class Copy : CDVPlugin {
    func copy(command: CDVInvokedUrlCommand) {
        var cp = command.arguments[0] as String

        UIPasteboard.general.string = cp
        
        var pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAsString: cp)
        commandDelegate.sendPluginResult(pluginResult, callbackId:command.callbackId)
    }
}