import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_g54/01-contador/contador_page.dart';
import 'package:flutter_getx_g54/03-ciclo_de_vida/splash_page.dart';
import 'package:flutter_getx_g54/06-reactivos/reactivo_contador_page.dart';
import 'package:flutter_getx_g54/06-reactivos/reactivo_user_page.dart';
import 'package:flutter_getx_g54/07-socket_reactivo/socket_reactivo_page.dart';
import 'package:flutter_getx_g54/08-custom_painter/headers.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: ContadorPage(),
      //home: SplashPage(),
      //home: ReactivoContadorPage(),
      //home: ReactivoUserPage(),
      //home: SocketReactivoPage(),
      home: HeaderDiagonal(),
    );
  }
}
