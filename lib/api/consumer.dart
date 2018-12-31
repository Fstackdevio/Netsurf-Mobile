import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netsurf_pro/models/User.dart';
import 'package:netsurf_pro/models/Quota.dart';
import 'package:netsurf_pro/models/base/EventObject.dart';
import 'package:netsurf_pro/models/ApiRequest.dart';
import 'package:netsurf_pro/models/ApiResponse.dart';
import 'package:netsurf_pro/tools/constants.dart';

Future<EventObject> loginUser(String details, String password) async {
  ApiRequest apiRequest = new ApiRequest();
  User user = new User(username: details, email: details, password: password);

  apiRequest.operation = APIOperations.LOGIN;
  apiRequest.user = user;

  try {
    final encoding = APIConstants.OCTET_STREAM_ENCODING;
    final response = await http.post(APIConstants.API_BASE_URL, body: json.encode(apiRequest.toJson()), encoding: Encoding.getByName(encoding));
    if(response != null) {
      if(response.statusCode == APIResponseCode.SC_OK && response.body != null) {
        final responseJson = json.decode(response.body);
        ApiResponse apiResponse = ApiResponse.fromJson(responseJson);
        if(apiResponse.result == APIOperations.SUCCESS) {
          return new EventObject(
            id: EventConstants.LOGIN_SUCCESSFUL,
            object: apiResponse.user
          );
        }
        else {
          return new EventObject(
            id: EventConstants.LOGIN_ERR,
          );
        }
      }
      else if(response.statusCode == APIResponseCode.SC_ERR && response.body != null) {
        final responseJson = json.decode(response.body);
        ApiResponse apiResponse = ApiResponse.fromJson(responseJson);
        if(apiResponse.result == APIOperations.ERR) {
          return new EventObject(
            id: EventConstants.LOGIN_ERR,
          );
        }
        else {
          return new EventObject(
            id: EventConstants.LOGIN_ERR,
          );
        }
      }
      else {
        return new EventObject(
          id: EventConstants.LOGIN_ERR
        );
      }
    }
    else {
      return new EventObject();
    }
  } catch (Exception) {
    return new EventObject();
  }
}

Future<EventObject> buyData(String ewallet, String username, String amount, String pin) async {
  ApiRequest apiRequest = new ApiRequest();
  Quota quota = new Quota(ewallet: ewallet, username: username, amount: amount, ewallet_pin: pin);

  apiRequest.operation = APIOperations.BUY;
  apiRequest.quota = quota;

  try {
    final encoding = APIConstants.OCTET_STREAM_ENCODING;
    final response = await http.post(APIConstants.API_BASE_URL, body: json.encode(apiRequest.toJson()), encoding: Encoding.getByName(encoding));
    if(response != null) {
      if(response.statusCode == APIResponseCode.SC_OK && response.body != null) {
        final responseJson = json.decode(response.body);
        ApiResponse apiResponse = ApiResponse.fromJson(responseJson);
        if(apiResponse.result == APIOperations.SUCCESS) {
          return new EventObject(
            id: EventConstants.BUY_SUCCESSFUL,
            object: apiResponse.user
          );
        }
        else {
          return new EventObject(
            id: EventConstants.BUY_ERR,
          );
        }
      }
      else if(response.statusCode == APIResponseCode.SC_ERR && response.body != null) {
        final responseJson = json.decode(response.body);
        ApiResponse apiResponse = ApiResponse.fromJson(responseJson);
        if(apiResponse.result == APIOperations.ERR) {
          return new EventObject(
            id: EventConstants.BUY_ERR,
          );
        }
        else {
          return new EventObject(
            id: EventConstants.BUY_ERR,
          );
        }
      }
      else {
        return new EventObject(
          id: EventConstants.BUY_ERR
        );
      }
    }
    else {
      return new EventObject();
    }
  } catch (Exception) {
    return new EventObject();
  }
}

Future<EventObject> shareData(String receipent, String amount, String pin) async {
  ApiRequest apiRequest = new ApiRequest();
  Quota quota = new Quota(receipent: receipent, amount: amount, ewallet_pin: pin);

  apiRequest.operation = APIOperations.SHARE;
  apiRequest.quota = quota;

  try {
    final encoding = APIConstants.OCTET_STREAM_ENCODING;
    final response = await http.post(APIConstants.API_BASE_URL, body: json.encode(apiRequest.toJson()), encoding: Encoding.getByName(encoding));
    if(response != null) {
      if(response.statusCode == APIResponseCode.SC_OK && response.body != null) {
        final responseJson = json.decode(response.body);
        ApiResponse apiResponse = ApiResponse.fromJson(responseJson);
        if(apiResponse.result == APIOperations.SUCCESS) {
          return new EventObject(
            id: EventConstants.SHARE_SUCCESSFUL,
            object: apiResponse.user
          );
        }
        else {
          return new EventObject(
            id: EventConstants.SHARE_ERR,
          );
        }
      }
      else if(response.statusCode == APIResponseCode.SC_ERR && response.body != null) {
        final responseJson = json.decode(response.body);
        ApiResponse apiResponse = ApiResponse.fromJson(responseJson);
        if(apiResponse.result == APIOperations.ERR) {
          return new EventObject(
            id: EventConstants.SHARE_ERR,
          );
        }
        else {
          return new EventObject(
            id: EventConstants.SHARE_ERR,
          );
        }
      }
      else {
        return new EventObject(
          id: EventConstants.SHARE_ERR
        );
      }
    }
    else {
      return new EventObject();
    }
  } catch (Exception) {
    return new EventObject();
  }
}

Future<EventObject> changePassword(String username, String old_password, String new_password, String pin) async {
  ApiRequest apiRequest = new ApiRequest();
  User user = new User(username: username, old_password: old_password, new_password: new_password, secret_pin: pin);

  apiRequest.operation = APIOperations.CHANGE;
  apiRequest.user = user;

  try {
    final encoding = APIConstants.OCTET_STREAM_ENCODING;
    final response = await http.post(APIConstants.API_BASE_URL, body: json.encode(apiRequest.toJson()), encoding: Encoding.getByName(encoding));
    if(response != null) {
      if(response.statusCode == APIResponseCode.SC_OK && response.body != null) {
        final responseJson = json.decode(response.body);
        ApiResponse apiResponse = ApiResponse.fromJson(responseJson);
        if(apiResponse.result == APIOperations.SUCCESS) {
          return new EventObject(
            id: EventConstants.CHANGE_SUCCESSFUL,
            object: null
          );
        }
        else if(apiResponse.result == APIOperations.ERR) {
          return new EventObject(
            id: EventConstants.INVALID_OLD_PASS,
          );
        }
        else {
          return new EventObject(
            id: EventConstants.CHANGE_ERR,
          );
        }
      }
      else if(response.statusCode == APIResponseCode.SC_ERR && response.body != null) {
        final responseJson = json.decode(response.body);
        ApiResponse apiResponse = ApiResponse.fromJson(responseJson);
        if(apiResponse.result == APIOperations.ERR) {
          return new EventObject(
            id: EventConstants.CHANGE_ERR,
          );
        }
        else {
          return new EventObject(
            id: EventConstants.CHANGE_ERR,
          );
        }
      }
      else {
        return new EventObject(
          id: EventConstants.CHANGE_ERR
        );
      }
    }
    else {
      return new EventObject();
    }
  } catch (Exception) {
    return new EventObject();
  }
}