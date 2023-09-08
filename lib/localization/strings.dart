class Strings {
  const Strings._();

  static const String login = "login";
  static const String setupYourAccount = "setup_your_account";
  static const String retryNow = "retry_now";
  static const String queryOtpNotReceived = "query_otp_not_received";
}

const Map<String, Map<String, String>> appStrings = {
  "en": {
    Strings.login: "Login",
    Strings.setupYourAccount: "Setup Your Account",
    Strings.retryNow: "Retry Now",
    Strings.queryOtpNotReceived: "Didn't get OTP?",
  }
};
