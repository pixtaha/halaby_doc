import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();
  TextEditingController createAccountEmailController = TextEditingController();
  TextEditingController createAccountPasswordController =
      TextEditingController();
  AuthCubit() : super(AuthInitial());

  void createAccount() async {
    try {
      emit(LoadingCreateAccountState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: createAccountEmailController.text,
        password: createAccountPasswordController.text,
      );
      emit(SuccessCreateAccountState());
    } catch (e) {
      emit(ErrorCreateAccountState(error: e.toString()));
    }
  }

  void login() async {
    try {
      emit(LoadingLoginState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: loginEmailController.text,
        password: loginPasswordController.text,
      );
      emit(SuccessLoginState());
    } catch (e) {
      emit(ErrorLoginState(error: e.toString()));
    }
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
