library share_web;

import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import "dart:js";

class ShareWebPlugin {

    static void registerWith(Registrar registrar) {
        final MethodChannel channel = MethodChannel(
            'plugins.flutter.io/share',
            const StandardMethodCodec(),
            registrar.messenger
        );
        final ShareWebPlugin instance = ShareWebPlugin();
        channel.setMethodCallHandler(instance.handleMethodCall);
    }


    Future<dynamic> handleMethodCall(MethodCall call) async {
        switch (call.method) {
            case 'share':
                return _share(call.arguments['text']);
            default:
                throw PlatformException(
                    code: 'Unimplemented',
                    details: "The url_launcher plugin for web doesn't implement "
                        "the method '${call.method}'");
        }
    }

    _share(String? text) async {
        context.callMethod('open', [ 'mailto:?body=$text', 'about:blank' ]);
    }
}
