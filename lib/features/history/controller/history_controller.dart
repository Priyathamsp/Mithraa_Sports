import 'dart:async';
import 'package:get/get.dart';
import 'package:intl/intl.dart';


class HistoryController extends GetxController {
  var currentDate = ''.obs;
  var currentTime = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchDateTime(); // Fetch date and time when the controller is initialized
    Timer.periodic(const Duration(seconds: 1), (_) => fetchDateTime());
  }

  void fetchDateTime() {
    final formattedDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
    final formattedTime = DateFormat('ss:ms a').format(DateTime.now());
    currentDate.value = formattedDate;
    currentTime.value = formattedTime;
  }
}