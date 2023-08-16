// import 'dart:async';

// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:dartz/dartz.dart';

// class Connectivityrepo {
//   late StreamSubscription connectivityStreamSubscription;
//   final connectivity = Connectivity();
//   Stream<ConnectivityResult> checkconnectivity() {
//     connectivityStreamSubscription =
//         connectivity.onConnectivityChanged.listen((connectivityResult) {
//       if (connectivityResult == ConnectivityResult.mobile ||
//           connectivityResult == ConnectivityResult.wifi) {
        
//         return connectivityResult;
//       } else {
//         // ignore: void_checks
//         return emitdisconnected();
//       }
//     });
//     return emitconnected();
//   }

//   emitconnected() {
//     return ConnectivityResult.mobile;
//   }

//   emitdisconnected() {
//     return ConnectivityResult.none;
//   }
// }
