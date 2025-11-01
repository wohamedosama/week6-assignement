import 'package:flutter/material.dart';
import 'package:week6_assignment/core/dependency_injection/di.dart';
import 'package:week6_assignment/week6_assignment.dart';

void main() async {
  setupDependencyInjection();
  runApp(const Week6Assignment());
}
