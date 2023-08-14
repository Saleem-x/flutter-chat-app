// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chatapp/buisnesslogic/bloc/login/login_bloc.dart' as _i7;
import 'package:chatapp/buisnesslogic/bloc/signup/signup_bloc.dart' as _i8;
import 'package:chatapp/buisnesslogic/cubit/cubit/createchat_cubit.dart' as _i9;
import 'package:chatapp/data/repositories/createcontact/createcontact.dart'
    as _i4;
import 'package:chatapp/data/repositories/loginrepo/loginrepo.dart' as _i5;
import 'package:chatapp/data/repositories/repositories.dart' as _i3;
import 'package:chatapp/data/repositories/signuorepo.dart/signuprepo.dart'
    as _i6;
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
    gh.lazySingleton<_i3.ILoginRepo>(() => _i5.LoginRepoImpl());
    gh.lazySingleton<_i3.ISignupRepo>(() => _i6.SignupRepoImpl());
    gh.factory<_i7.LoginBloc>(() => _i7.LoginBloc(gh<_i3.ILoginRepo>()));
    gh.factory<_i8.SignupBloc>(() => _i8.SignupBloc(gh<_i3.ISignupRepo>()));
    gh.factory<_i9.CreatechatCubit>(
        () => _i9.CreatechatCubit(gh<_i3.ICreatUserRepo>()));
    return this;
  }
}
