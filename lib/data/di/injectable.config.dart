// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chatapp/buisnesslogic/bloc/getcontacts/getcontacts_bloc.dart'
    as _i13;
import 'package:chatapp/buisnesslogic/bloc/login/login_bloc.dart' as _i9;
import 'package:chatapp/buisnesslogic/bloc/messages/messages_bloc.dart' as _i10;
import 'package:chatapp/buisnesslogic/bloc/signup/signup_bloc.dart' as _i11;
import 'package:chatapp/buisnesslogic/cubit/createcontact/createchat_cubit.dart'
    as _i12;
import 'package:chatapp/data/repositories/createcontact/createcontact.dart'
    as _i4;
import 'package:chatapp/data/repositories/getcontacts/getcontactsrepo.dart'
    as _i5;
import 'package:chatapp/data/repositories/loginrepo/loginrepo.dart' as _i6;
import 'package:chatapp/data/repositories/messages/messagesrepo.dart' as _i7;
import 'package:chatapp/data/repositories/repositories.dart' as _i3;
import 'package:chatapp/data/repositories/signuorepo.dart/signuprepo.dart'
    as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.ICreatUserRepo>(() => _i4.CreateContactRepo());
    gh.lazySingleton<_i3.IGetContactsrepo>(() => _i5.GetContactsRepo());
    gh.lazySingleton<_i3.ILoginRepo>(() => _i6.LoginRepoImpl());
    gh.lazySingleton<_i3.IMessageRepo>(() => _i7.MessagesRepo());
    gh.lazySingleton<_i3.ISignupRepo>(() => _i8.SignupRepoImpl());
    gh.factory<_i9.LoginBloc>(() => _i9.LoginBloc(gh<_i3.ILoginRepo>()));
    gh.factory<_i10.MessagesBloc>(
        () => _i10.MessagesBloc(gh<_i3.IMessageRepo>()));
    gh.factory<_i11.SignupBloc>(() => _i11.SignupBloc(gh<_i3.ISignupRepo>()));
    gh.factory<_i12.CreatechatCubit>(
        () => _i12.CreatechatCubit(gh<_i3.ICreatUserRepo>()));
    gh.factory<_i13.GetcontactsBloc>(
        () => _i13.GetcontactsBloc(gh<_i3.IGetContactsrepo>()));
    return this;
  }
}
