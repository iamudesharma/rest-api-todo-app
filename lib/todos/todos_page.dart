import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './todos_controller.dart';

class TodosPage extends GetView<TodosController> {
    
    const TodosPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('TodosPage'),),
            body: Container(),
        );
    }
}