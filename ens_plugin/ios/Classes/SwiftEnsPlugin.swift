import Flutter

public class SwiftEnsPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        ATInternetWrapper.register(with: registrar)
        TrustCommanderWrapper.register(with: registrar)
    }
}
