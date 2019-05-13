import Foundation

@objc(Copy) class Copy : CDVPlugin {
    @objc(copy:)
    func copy(command: CDVInvokedUrlCommand) {
        let cp = command.arguments[0] as? String
        UIPasteboard.general.string = cp
    }
}