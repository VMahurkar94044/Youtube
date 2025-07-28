import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/modle/loginresponse.dart';
import 'package:flutter_application_3/routs/app_routs.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController
{

  var isloading = false.obs;

  final emailCtrl = TextEditingController();
  final password = TextEditingController();

  Future<void> loginUser() async
  {
    isloading.value = true;

    try{

      final response = await http.post(
      
      Uri.parse("https://krushimahostav.yuvapsvs.com/api/auth/login"),

      headers: {
        "Content-Type": "application/json",
      },

      body: 
      jsonEncode(
        {
          "email" : emailCtrl.text.trim(),
          "password" : password.text.trim(),

        }));

        if(response.statusCode == 200)
        {
          final data = jsonDecode(response.body);
          final loginData = LoginResponse.fromJson(data);

          Get.snackbar("sucess", "login successfully", backgroundColor: Colors.green);

          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setString('token', loginData.token ?? "");
          Get.offNamed(AppRouts.tabs);

        }
        else
        {
          final error = jsonDecode(response.body);
          Get.snackbar("Login Failed", error["message"] ?? "Unknown error",backgroundColor: Colors.red);
        }
    }

    catch(e)
    {
      
      Get.snackbar("error", e.toString(),backgroundColor: Colors.red);
    }

    finally
    {
      isloading.value=false;
    }
  
  }

}