import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:mithraa_sports/app.dart';
void main()
{
  runApp(DevicePreview(
    enabled: true,
    builder: (BuildContext context)=> const MyApp(),
  ),
  );
}
