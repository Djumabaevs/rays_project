import 'package:flutter/material.dart';
import 'package:rays_project/constants.dart';
import 'package:rays_project/ui/filter/filter_widget.dart';
import '../../strings.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  int _filterValue = Constants.allFilter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.filter),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FilterWidget(
              value: Constants.iosFilter,
              groupValue: _filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.ios),
          FilterWidget(
              value: Constants.androidFilter,
              groupValue: _filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.android),
          FilterWidget(
              value: Constants.sssFilter,
              groupValue: _filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.sss),
          FilterWidget(
              value: Constants.allFilter,
              groupValue: _filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.all),
        ],
      ),
    );
  }

  void _handleRadioValueChange(int? value) {
    setState(() {
      _filterValue = value ?? 0;
    });
  }
}
