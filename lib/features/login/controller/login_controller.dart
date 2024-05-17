import 'dart:io';
import 'dart:ui';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:mithraa_sports/features/home_screen/view/home_screen.dart';
import 'package:mithraa_sports/core/utils/helpers/cache_helper/cache_helper.dart';
import 'package:mithraa_sports/features/login/view/login_screen/login_screen.dart';

class LoginController extends GetxController {
  final Rx<GlobalKey<FormState>> _formKey = GlobalKey<FormState>().obs;

  Rx<GlobalKey<FormState>> get formKey => _formKey;
  final Rx<TextEditingController> input = TextEditingController().obs;
  final Rx<TextEditingController> password = TextEditingController().obs;
  RxBool passwordVisible = true.obs;

  get jsonBody => null;

  void updateVisibility() {
    passwordVisible.toggle();
    update();
  }

  Future<void> loginUser({
    required String input,
    required String password,
  }) async {
    print("input : $password");
    const apiUrl = '';
    const apiToken = "";
    final headers = {'Content-Type': 'application/json'};
    final requestData = {
      "api_key": apiToken,
      "mobile": input,
      "password": password
    };
    final jsonbody = json.encode(requestData);
    try {
      final response =
      await http.post(Uri.parse(apiUrl), headers: headers, body: jsonBody);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        final responseData = json.decode(response.body);
        if (LoginScreen ==  "Success") {
          print("success to fetch category Item");
          CacheHelper.saveData(
              "StudentId", "${'StudentId'}");
          Get.dialog(
            AlertDialog(
              title: Text('Success'),
              content: Text('${'StudentId'}'),
              actions: [
                TextButton(
                  onPressed: () {
                    Get.back();
                    Get.offAll( HomeScreen(),transition: Transition.leftToRightWithFade);
                  },
                  child: Text('OK'),
                ),
              ],
            ),
          );
        } else {
          throw Exception('Status is not true');
        }} else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        if (LoginScreen == "Failed") {
          print("failed to fetch category Item");
          Get.dialog(
            AlertDialog(
              title: Text('Failed'),
              content: Text('${'StudentId'}'),
              actions: [
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text('OK'),
                ),
              ],
            ),
          );
          print("failed to fetch category Item");
        }else {
          throw Exception('Status is not true');
        }
      } else {
        throw Exception('Request failed with status: ${response.statusCode}');
      }
    } on http.ClientException catch (e) {
      throw Exception('HTTP Client Exception: $e');
    } on SocketException catch (e) {
      throw Exception('Socket Exception: $e');
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}


