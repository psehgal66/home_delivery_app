import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_delivery_app/bloc/bloc_connectivity/network_event.dart';
import 'package:home_delivery_app/bloc/bloc_connectivity/network_states.dart';
import 'dart:async';
class NetworkBloc extends Bloc<NetworkEvents, NetworkStates> {
  StreamSubscription? subscription;
  NetworkBloc() : super(NetworkInitialState()){
    on<NetworkInitialEvent>((event, emit) => emit(NetworkInitialState()));
    on<NetworkGainedEvent>((event, emit) => emit(NetworkGainedState()));
    on<NetworkLossEvent>((event, emit) => emit(NetworkLossState()));
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        //emit(NetworkGainedState());
        add(NetworkGainedEvent());
      } else {
       // emit(NetworkLossState());
        add(NetworkLossEvent());

      }
    });


    @override
    Future<void> close()

    {
      subscription?.cancel();
      return super.close();
    }
  }





}