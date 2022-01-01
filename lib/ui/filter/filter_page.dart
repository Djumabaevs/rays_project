import 'package:flutter/material.dart';
import 'package:rays_project/constants.dart';
import 'package:rays_project/state/filter_state_container.dart';
import 'package:rays_project/ui/filter/filter_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../strings.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  // int _filterValue = Constants.allFilter;
  late FilterState state;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    state = FilterStateContainer.of(context);
  }

  // @override
  // void initState() {
  //   super.initState();
  //   _loadValue();
  // }

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
              groupValue: state.filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.ios),
          FilterWidget(
              value: Constants.androidFilter,
              groupValue: state.filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.android),
          FilterWidget(
              value: Constants.sssFilter,
              groupValue: state.filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.sss),
          FilterWidget(
              value: Constants.allFilter,
              groupValue: state.filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.all),
          FilterWidget(
              value: Constants.unityFilter,
              groupValue: state.filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.unity),
          FilterWidget(
              value: Constants.flutterFilter,
              groupValue: state.filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.flutter),
        ],
      ),
    );
  }

  // void _loadValue() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     _filterValue = prefs.getInt(Constants.filterKey) ?? 0;
  //   });
  // }

  void _handleRadioValueChange(int? value) async {
    state.updateFilterValue(value ?? 0);
    // final prefs = await SharedPreferences.getInstance();
    // setState(() {
    //   _filterValue = value ?? 0;
    //   prefs.setInt(Constants.filterKey, _filterValue);
    // });
  }
}
