import 'package:bloc/bloc.dart';
import 'package:chatapp/data/failures/failures.dart';
import 'package:chatapp/data/models/account_info/account_info.dart';
import 'package:chatapp/data/repositories/accountinfo/accountinforepo.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'accountinfo_event.dart';
part 'accountinfo_state.dart';
part 'accountinfo_bloc.freezed.dart';

class AccountinfoBloc extends Bloc<AccountinfoEvent, AccountinfoState> {
  AccountinfoBloc() : super(AccountinfoState.initial()) {
    final AccountinfoRepo accountinfoRepo = AccountinfoRepo();
    on<_getuserdetailsevent>((event, emit) async {
      Either<MainFailures, AccountInfo> getaccountinfo =
          await accountinfoRepo.getaccountinfo();

      emit(getaccountinfo.fold((l) => const AccountinfoState.errorstate(),
          (r) => _AccountinfoState(name: r.name, imageurl: r.profileimage)));
    });
    // on<_updateDataEvent>((event, emit) async {
    //   Either<MainFailures, AccountInfo> getupdatedinfo =
    //       await accountinfoRepo.updatedata(event.accountInfo);

    //   emit(getupdatedinfo.fold((l) => const _updatefailedstate(),
    //       (r) => _AccountinfoState(name: r.name, imageurl: r.profileimage)));
    // });
    // on<_imagePickevent>((event, emit) async {
    //   Either<MainFailures, String> pickimage =
    //       await accountinfoRepo.pickimage();
    //   emit(
    //     pickimage.fold(
    //       (l) => const _updatefailedstate(),
    //       (r) => _imagepickedstate(imageurl: r),
    //     ),
    //   );
    // });
  }
}
