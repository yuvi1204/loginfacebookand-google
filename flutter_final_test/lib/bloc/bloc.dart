import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_final_test/bloc/event.dart';
import 'package:flutter_final_test/bloc/state.dart';
import 'package:flutter_final_test/repo/repo.dart';

class AuthBloc extends Bloc< AuthEvent, AuthState>{
    final AuthRepository authRepository;
      AuthBloc({required this.authRepository}) : super(UnAuthenticated()) {
           on<SignInRequested>((event, emit) async {
      emit(Loading());
      try {
        await authRepository.signIn(
            email: event.email, password: event.password);
        emit(Authenticated());
      } catch (e) {
        emit(AuthError(e.toString()));
        emit(UnAuthenticated());
      }
    });
     on<SignUpRequested>((event, emit) async {
      emit(Loading());
      try {
        await authRepository.signUp(
            email: event.email, password: event.password);
        emit(Authenticated());
      } catch (e) {
        emit(AuthError(e.toString()));
        emit(UnAuthenticated());
      }
    });
     on<GoogleSignInRequested>((event, emit) async {
      emit(Loading());
      try {
        await authRepository.signInWithGoogle();
        emit(Authenticated());
      } catch (e) {
        emit(AuthError(e.toString()));
        emit(UnAuthenticated());
      }
    });
    on<SignOutRequested>((event, emit) async {
      emit(Loading());
      await authRepository.signOut();
      emit(UnAuthenticated());
    });

      }

}