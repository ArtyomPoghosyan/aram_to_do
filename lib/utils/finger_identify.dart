import 'package:local_auth/local_auth.dart';

class FingerIdentify {
  static final _auth = LocalAuthentication();
  static Future<bool> canAuthenticate() async =>
      await _auth.canCheckBiometrics || await _auth.isDeviceSupported();

  static Future<bool> authentication() async {
    try {
      if (!await canAuthenticate()) return false;
      return await _auth.authenticate(
          localizedReason:
              "Please hold your finger at the fingerprint scanner to verify your identity");
    } catch (e) {
      print(e);
      return false;
    }
  }
}
