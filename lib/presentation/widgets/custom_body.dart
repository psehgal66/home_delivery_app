import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_delivery_app/bloc/bloc_connectivity/network_bloc.dart';
import 'package:home_delivery_app/bloc/bloc_connectivity/network_states.dart';
import 'package:home_delivery_app/presentation/widgets/interneterror.dart';

import 'customsnackbar.dart';

class CustomBody extends StatelessWidget {
  const CustomBody(
      {Key? key,
        required this.index,
        required this.list})
      : super(key: key);
  final index;
  final List list;

  @override
  Widget build(BuildContext buildContext) {
    return BlocConsumer<NetworkBloc, NetworkStates>(
      listener: (context, state) {
        if (state is NetworkInitialState) {
          CustomSnackbar.snackBar(
              context: buildContext, data: "offline", color: Colors.red);
        }
        else if (state is NetworkGainedState) {
          CustomSnackbar.snackBar(
              context: buildContext, data: "Online", color: Colors.green);
        } else if (state is NetworkLossState) {
          CustomSnackbar.snackBar(
              context: buildContext, data: "Offline", color: Colors.red);
        }
        else {
          CustomSnackbar.snackBar(
              context: buildContext, data: 'error', color: Colors.red);
        }
      },
      builder: (context, state) {
        if (state is NetworkInitialState) {
          return InternetError(text: "Pl_CHECK_INTERNET");
        } else if (state is NetworkGainedState) {
          return list.elementAt(index);
        } else if (state is NetworkLossState) {
          return InternetError(text: "Pl_LOST_INTERNET");
        } else
          return InternetError(text: 'error');
      },
    );
  }
}