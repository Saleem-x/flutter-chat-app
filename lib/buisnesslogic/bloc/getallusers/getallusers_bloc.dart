import 'package:bloc/bloc.dart';
import 'package:chatapp/data/failures/failures.dart';
import 'package:chatapp/data/models/account_info/account_info.dart';
import 'package:chatapp/data/repositories/getcontacts/getallusersrepo.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'getallusers_event.dart';
part 'getallusers_state.dart';
part 'getallusers_bloc.freezed.dart';

class GetallusersBloc extends Bloc<GetallusersEvent, GetallusersState> {
  GetallusersBloc() : super(GetallusersState.initial()) {
    on<Getallusersvent>((event, emit) async {
      final getusersrepo = GetAallUsersRepo();

      Either<MainFailures, List<AccountInfo>> alllusers =
          await getusersrepo.getallusers();
      emit(
        alllusers.fold(
          (l) => const _errorstate(),
          (r) => GetallusersState(alluserslist: r),
        ),
      );
    });
  }
}
