import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:get/get.dart';

class BluetoothController extends GetxController {
  Future scanDevices() async {
    // FlutterBluePlus.setLogLevel(LogLevel.verbose, color: false);

    var subscription = await FlutterBluePlus.scanResults.listen((results) {
      for (ScanResult r in results) {
        print('${r}');
      }
    });
    FlutterBluePlus.startScan(timeout: Duration(seconds: 5));
  }
}
