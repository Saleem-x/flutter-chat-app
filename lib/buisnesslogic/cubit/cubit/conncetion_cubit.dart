// import 'dart:async';

// import 'package:bloc/bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';

// part 'conncetion_state.dart';
// part 'conncetion_cubit.freezed.dart';

// class ConncetionCubit extends Cubit<ConncetionState> {
//   ConncetionCubit() : super(const ConncetionState.loading());
//   final connectivity = Connectivity();
//   final streamSubscription =
//       Connectivity().onConnectivityChanged.listen((connectivityResult) {
//     if (connectivityResult == ConnectivityResult.mobile ||
//         connectivityResult == ConnectivityResult.wifi) {
      
//     } else {
//       //if mobile is not connected to mobile data ro wifi then emit no internet

//       emitNoInternet();
//     }
//   });
//   void emitconnected() {
//     emit(const ConncetionState.connected());
//   }

//   void emitdisconneted() {
//     emit(const ConncetionState.disconnected());
//   }

//   void emitloading() {
//     emit(const ConncetionState.loading());
//   }
// }
