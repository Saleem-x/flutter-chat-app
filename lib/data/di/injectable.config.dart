// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chatapp/buisnesslogic/bloc/getcontacts/getcontacts_bloc.dart'
    as _i3;
import 'package:chatapp/buisnesslogic/bloc/login/login_bloc.dart' as _i8;
import 'package:chatapp/buisnesslogic/bloc/signup/signup_bloc.dart' as _i9;
import 'package:chatapp/buisnesslogic/cubit/createcontact/createchat_cubit.dart'
    as _i10;
import 'package:chatapp/data/repositories/createcontact/createcontact.dart'
    as _i5;
import 'package:chatapp/data/repositories/loginrepo/loginrepo.dart' as _i6;
import 'package:chatapp/data/repositories/repositories.dart' as _i4;
import 'package:chatapp/data/repositories/signuorepo.dart/signuprepo.dart'
    as _i7;
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
    gh.factory<_i3.GetcontactsBloc>(
        () => _i3.GetcontactsBloc(gh<_i4.IGetContactsrepo>()));
    gh.lazySingleton<_i4.ICreatUserRepo>(() => _i5.CreateContactRepo());
    gh.lazySingleton<_i4.ILoginRepo>(() => _i6.LoginRepoImpl());
    gh.lazySingleton<_i4.ISignupRepo>(() => _i7.SignupRepoImpl());
    gh.factory<_i8.LoginBloc>(() => _i8.LoginBloc(gh<_i4.ILoginRepo>()));
    gh.factory<_i9.SignupBloc>(() => _i9.SignupBloc(gh<_i4.ISignupRepo>()));
    gh.factory<_i10.CreatechatCubit>(
        () => _i10.CreatechatCubit(gh<_i4.ICreatUserRepo>()));
    return this;
  }
}
