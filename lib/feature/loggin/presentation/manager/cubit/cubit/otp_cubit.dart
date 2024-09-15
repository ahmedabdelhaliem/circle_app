import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'otp_state.dart';

class OtpCubit extends Cubit<OtpState> {
  OtpCubit() : super(OtpInitial());
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String? verificationId;

  Future<void> sendOtp(String phoneNumber) async {
    emit(OtpLoading());
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: '+20$phoneNumber',
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _auth.signInWithCredential(credential);
          emit(OtpVerified());
        },
        verificationFailed: (FirebaseAuthException e) {
          emit(OtpError(e.message ?? 'Error sending OTP'));
        },
        codeSent: (String verificationId, int? resendToken) {
          this.verificationId = verificationId;
          emit(OtpSent());
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          this.verificationId = verificationId;
        },
      );
    } catch (e) {
      emit(OtpError('Failed to send OTP'));
    }
  }

  Future<void> verifyOtp(String smsCode) async {
    if (verificationId == null) return;
    emit(OtpLoading());

    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId!,
        smsCode: smsCode,
      );
      await _auth.signInWithCredential(credential);
      emit(OtpVerified());
    } catch (e) {
      emit(OtpError('Invalid OTP'));
    }
  }
}
