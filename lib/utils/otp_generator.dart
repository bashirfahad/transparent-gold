import 'dart:math';

String generateOtp() {
  Random random = Random();
  int otp = 1000 + random.nextInt(9000); // Generate a 4-digit OTP
  return otp.toString();
}
