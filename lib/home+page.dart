import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/bluetooth_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<BluetoothController>(
        init: BluetoothController(),
        builder: (controller) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  child: const Text(
                    'Bluetooth',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      controller.scanDevices();
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(320, 100),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Scan',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // StreamBuilder<List<ScanResult>>(
                //   stream: controller.,
                //   builder: (context, snapshot) {
                //     if (snapshot.hasData) {
                //       return ListView.builder(
                //         shrinkWrap: true,
                //         itemCount: snapshot.data!.length,
                //         itemBuilder: (context, index) {
                //           final data = snapshot.data![index];
                //           print('Device name ${data}');
                //           return Card(
                //             elevation: 2,
                //             child: ListTile(
                //               title: Text(data.device.name.toString()),
                //               subtitle: Text(data.device.id.id),
                //               trailing: Text(data.rssi.toString()),
                //             ),
                //           );
                //         },
                //       );
                //     } else {
                //       return Text('No Device Found');
                //     }
                //   },
                // ),
              ],
            ),
          );
        },
      ),
    );
  }
}
