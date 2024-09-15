import 'package:firebase_auth/firebase_auth.dart';

Future<void> sendSmsCode(
    String phoneNumber,
    int? resendToken,
    Function(PhoneAuthCredential) onVerificationCompleted,
    Function(FirebaseAuthException) onVerificationFailed,
    Function(String, int?) onCodeSent,
    Function(String) onCodeAutoRetrievalTimeout) async {
  String phone = phoneNumber.startsWith('0')
      ? phoneNumber.replaceFirst('0', '')
      : phoneNumber;

  try {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+20$phone', // تأكد من إضافة رمز البلد بشكل صحيح
      timeout: const Duration(seconds: 60),
      forceResendingToken: resendToken,
      verificationCompleted: onVerificationCompleted,
      verificationFailed: onVerificationFailed,
      codeSent: onCodeSent,
      codeAutoRetrievalTimeout: onCodeAutoRetrievalTimeout,
    );
  } catch (e) {
    print('Error Otp Auth =>> $e');
  }
}

Future<void> verifyCode(String smsCode, String verificationId) async {
  try {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: smsCode,
    );

    await FirebaseAuth.instance.signInWithCredential(credential);
    print('Success');
  } catch (e) {
    print('verifyOtp=>>> $e');
  }
}
