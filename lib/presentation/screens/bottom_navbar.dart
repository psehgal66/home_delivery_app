import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_delivery_app/bloc/cubit/cubit_bottom_nav.dart';
import 'package:home_delivery_app/presentation/constants.dart';
import 'package:home_delivery_app/presentation/widgets/bottom_nav/custom_bottom_nav.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}
class _MainPageState extends State<BottomNavScreen> {
  /// Create a list of pages to make the code shorter and better readability
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, int>(
      builder: (context, state) {
        return Scaffold(
          body: selectBody[state],
          bottomNavigationBar: CustomBottomNav(index: state,function:_getChangeBottomNav ),
        );
      },
    );
  }
  void _getChangeBottomNav(int index) {
    context.read<BottomNavCubit>().updateIndex(index);
  }
}
