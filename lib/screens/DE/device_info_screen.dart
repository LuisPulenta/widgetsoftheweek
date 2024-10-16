import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';

class DeviceInfoScreen extends StatefulWidget {
  const DeviceInfoScreen({Key? key}) : super(key: key);

  @override
  State<DeviceInfoScreen> createState() => _DeviceInfoScreenState();
}

class _DeviceInfoScreenState extends State<DeviceInfoScreen> {
  AndroidDeviceInfo? androidInfo;
  var device = DeviceInfoPlugin();

  @override
  void initState() {
    super.initState();
    getDeviceInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeviceInfo'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          androidInfo != null
              ? Text(androidInfo!.model.toString())
              : Container(),
          androidInfo != null
              ? Text(androidInfo!.device.toString())
              : Container(),
          androidInfo != null
              ? Text(androidInfo!.manufacturer.toString())
              : Container(),
        ],
      )),
    );
  }

  Future<void> getDeviceInfo() async {
    androidInfo = await device.androidInfo;
    setState(() {});
  }
}
