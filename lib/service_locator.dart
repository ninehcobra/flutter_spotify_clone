import 'package:flutter_spotify_clone/data/sources/auth/auth_firebase_service.dart';
import 'package:flutter_spotify_clone/domain/repository/auth/auth.dart';
import 'package:flutter_spotify_clone/domain/usecases/auth/get_user.dart';
import 'package:flutter_spotify_clone/domain/usecases/auth/signin.dart';
import 'package:flutter_spotify_clone/domain/usecases/auth/signup.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());

  sl.registerSingleton<SignupUseCase>(SignupUseCase());

  sl.registerSingleton<SigninUseCase>(SigninUseCase());

  sl.registerSingleton<GetUserUseCase>(GetUserUseCase());
}
