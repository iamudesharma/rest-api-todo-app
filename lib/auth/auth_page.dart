import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './auth_controller.dart';

class AuthPage extends GetView<AuthController> {
    
    const AuthPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('AuthPage'),),
            body: Container(),
        );
    }
}