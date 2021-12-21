import 'package:flutter/material.dart';
import 'package:rays_project/rwcourses_app.dart';
import 'package:rays_project/strings.dart';

void main() => runApp(MaterialApp(
      title: Strings.appTitle,
      theme: ThemeData(primaryColor: Colors.green.shade800),
      home: const RWCoursesApp(),
    ));
