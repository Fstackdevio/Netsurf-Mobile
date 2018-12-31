import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netsurf_pro/models/User.dart';
import 'package:netsurf_pro/models/Quota.dart';
import 'package:netsurf_pro/models/base/EventObject.dart';
import 'package:netsurf_pro/models/ApiRequest.dart';
import 'package:netsurf_pro/models/ApiResponse.dart';

Future<EventObject> loginUser(String details, String password) async {
  ApiRequest apiRequest = new ApiRequest();
  User user new User(username: details, email: details, password: password);

  apiRequest.operation = APIOperation.LOGIN;
  apiRequest.user = user;

  try {
    final encoding = APIConstants.OCTET_STREAM_ENCODING;
    final response = await http.post(APIConstants.API_BASE_URL, body: json.encode(apiRequest.toJson()), encoding: Encoding.getByName(encoding));
    if(response != null) {
      if(response.statusCode == APIConstants.SC_OK && response.body != null) {
        final responseJson = json.decode(response.body);
        ApiResponse apiResponse = ApiResponse.fromJson(responseJson);
        if(apiResponse.result == APIOperations.SUCCESS) {
          return new EventObject(
            id: EventConstants.LOGIN_SUCCESSFUL,
            message: apiResponse.message,
            object: apiResponse.user
          );
        }
        else {
          return new EventObject(
            id: EventConstants.LOGIN_ERR,
            message: apiResponse.message,
          );
        }
      }
      else if(response.statusCode == APIConstants.SC_ERR && response.body != null) {
        final responseJson = json.decode(response.body);
        ApiResponse apiResponse = ApiResponse.fromJson(responseJson);
        if(apiResponse.result == APIOperations.ERR) {
          return new EventObject(
            id: EventConstants.LOGIN_ERR,
            message: apiResponse.message,
          );
        }
        else {
          return new EventObject(
            id: EventConstants.LOGIN_ERR,
            message: apiResponse.message,
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
  Quota quotaBuy new Quota(ewallet: ewallet, username: username, amount: amount, ewallet_pin: pin);

  apiRequest.operation = APIOperation.BUYDATA;
  apiRequest.quota = quotaBuy;

  try {
    final encoding = APIConstants.OCTET_STREAM_ENCODING;
    final response = await http.post(APIConstants.API_BASE_URL, body: json.encode(apiRequest.toJson()), encoding: Encoding.getByName(encoding));
    if(response != null) {
      if(response.statusCode == APIConstants.SC_OK && response.body != null) {
        final responseJson = json.decode(response.body);
        ApiResponse apiResponse = ApiResponse.fromJson(responseJson);
        if(apiResponse.result == APIOperations.SUCCESS) {
          return new EventObject(
            id: EventConstants.LOGIN_SUCCESSFUL,
            message: apiResponse.message,
            object: apiResponse.user
          );
        }
        else {
          return new EventObject(
            id: EventConstants.LOGIN_ERR,
            message: apiResponse.message,
          );
        }
      }
      else if(response.statusCode == APIConstants.SC_ERR && response.body != null) {
        final responseJson = json.decode(response.body);
        ApiResponse apiResponse = ApiResponse.fromJson(responseJson);
        if(apiResponse.result == APIOperations.ERR) {
          return new EventObject(
            id: EventConstants.LOGIN_ERR,
            message: apiResponse.message,
          );
        }
        else {
          return new EventObject(
            id: EventConstants.LOGIN_ERR,
            message: apiResponse.message,
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

Future<EventObject> shareData(String receipent, String amount, String pin) async {
  ApiRequest apiRequest = new ApiRequest();
  Quota quotaShare new Quota(receipent: receipent, amount: amount, ewallet_pin: pin);

  apiRequest.operation = APIOperation.SHAREDATA;
  apiRequest.quota = quotaShare;

  try {
    final encoding = APIConstants.OCTET_STREAM_ENCODING;
    final response = await http.post(APIConstants.API_BASE_URL, body: json.encode(apiRequest.toJson()), encoding: Encoding.getByName(encoding));
    if(response != null) {
      if(response.statusCode == APIConstants.SC_OK && response.body != null) {
        final responseJson = json.decode(response.body);
        ApiResponse apiResponse = ApiResponse.fromJson(responseJson);
        if(apiResponse.result == APIOperations.SUCCESS) {
          return new EventObject(
            id: EventConstants.LOGIN_SUCCESSFUL,
            message: apiResponse.message,
            object: apiResponse.user
          );
        }
        else {
          return new EventObject(
            id: EventConstants.LOGIN_ERR,
            message: apiResponse.message,
          );
        }
      }
      else if(response.statusCode == APIConstants.SC_ERR && response.body != null) {
        final responseJson = json.decode(response.body);
        ApiResponse apiResponse = ApiResponse.fromJson(responseJson);
        if(apiResponse.result == APIOperations.ERR) {
          return new EventObject(
            id: EventConstants.LOGIN_ERR,
            message: apiResponse.message,
          );
        }
        else {
          return new EventObject(
            id: EventConstants.LOGIN_ERR,
            message: apiResponse.message,
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