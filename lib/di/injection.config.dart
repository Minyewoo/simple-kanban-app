// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../bloc/auth_bloc.dart' as _i5;
import '../bloc/cards_bloc.dart' as _i6;
import '../data/repositories/authentication_repository.dart' as _i3;
import '../data/repositories/cards_repository.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AuthenticationRepository>(
      () => _i3.ApiAuthenticationRepository());
  gh.factory<_i4.CardsRepository>(() => _i4.ApiCardsRepository());
  gh.singleton<_i5.AuthBloc>(_i5.AuthBloc(get<_i3.AuthenticationRepository>()));
  gh.singleton<_i6.CardsBloc>(
      _i6.CardsBloc(get<_i4.CardsRepository>(), get<_i5.AuthBloc>()));
  return get;
}
