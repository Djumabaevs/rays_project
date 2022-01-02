import 'package:flutter/material.dart';
import 'package:rays_project/rwcourses_app.dart';
import 'package:rays_project/state/filter_state_container.dart';
import 'strings.dart';
import 'state/filter_state_container.dart';

void main() => runApp(FilterStateContainer(
      child: MaterialApp(
        title: Strings.appTitle,
        theme: ThemeData(primaryColor: Colors.green.shade800),
        home: const RWCoursesApp(),
      ),
    ));
