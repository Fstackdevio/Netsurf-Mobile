class APIConstants {
  static const String OCTET_STREAM_ENCODING = "application/octet-stream";
  static const String API_BASE_URL = "https://netsurf.fstackdev.net";
}

class APIOperations {
  static const String LOGIN = "login";
  static const String BUY = "buy";
  static const String SHARE = "share";
  static const String CHECK = "check";
  static const String CHANGE = "change";
  static const String SUCCESS = "success";
  static const String ERR = "error";
}

class EventConstants {
  static const int NO_INTERNET = 0;
  static const int LOGIN_SUCCESSFUL = 100;
  static const int LOGIN_ERR = 101;
  static const int BUY_SUCCESSFUL = 200;
  static const int BUY_ERR = 201;
  static const int SHARE_SUCCESSFUL = 300;
  static const int SHARE_ERR = 301;
  static const int CHANGE_SUCCESSFUL = 400;
  static const int CHANGE_ERR = 401;
  static const int INVALID_OLD_PASS = 402;
  static const int FEED_SUCCESSFUL = 500;
  static const int FEED_ERR = 501;
}

class APIResponseCode {
  static const int SC_OK = 200;
  static const int SC_ERR = 500;
}

class SharedPreferenceKeys {
  static const String IS_LOGGED_IN = "IS_LOGGED_IN";
  static const String USER = "USER";
  static const String Quota = "QUOTA";
}