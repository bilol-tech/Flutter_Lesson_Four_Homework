import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter_platform_interface/src/types/location.dart';

import '../../view/pages/register_page.dart';
import '../interface/auth_facade.dart';
import '../model/application_model.dart';
import '../model/edit_model.dart';
import '../model/profile_model.dart';
import '../model/rout_model.dart';
import '../model/token_model.dart';
import '../service/dio_service.dart';
import '../service/local_store.dart';

class AuthRepo implements AuthFacade {
  DioService dio = DioService();

  @override
  Future<Response?> signUp(
      {required String email, required String password}) async {
    try {
      var res = await dio.client().post(
        "/auth/sign-up",
        data: {"email": email, "password": password, "user_type": "applicant"},
      );
      return res;
    } catch (e) {
      debugPrint("Sign Up Error : $e");
      return null;
    }
  }

  @override
  Future<TokenModel?> verifyEmail(
      {required String email, required String code}) async {
    try {
      var res = await dio.client().post(
        "/auth/verify",
        data: {
          "email": email,
          "code": code,
        },
      );
      return TokenModel.fromJson(res.data);
    } catch (e) {
      debugPrint("Verify Error : $e");
      return null;
    }
  }

  @override
  Future logout() async {
    try {
      final token = await LocalStore.getAccessToken();
      await dio.client(token: token).post(
        "/auth/logout",
      );
      return null;
    } catch (e) {
      debugPrint(":Log out Error : $e");
      return null;
    }
  }

  @override
  Future<Response?> login(
      {required String email, required String password}) async {
    try {
      var res = await dio.client().post(
        "/auth/login",
        data: {"email": email, "password": password, "user_type": "applicant"},
      );
      return res;
    } catch (e) {
      debugPrint("Login Error : $e");
      return null;
    }
  }

  @override
  Future<ProfileModel?> getUser(BuildContext context) async {
    try {
      final token = await LocalStore.getAccessToken();
      var res = await dio.client(token: token).get(
        "/api/profile",
      );
      return ProfileModel.fromJson(res.data);
    } on DioError catch (e) {
      if (e.response?.statusCode == 401) {
        var res = await refreshToken(context);
        if (res != null) {
          // ignore: use_build_context_synchronously
          await getUser(context);
        }
      }
    }
    return null;
  }

  @override
  Future<TokenModel?> refreshToken(BuildContext context) async {
    try {
      final refreshToken = await LocalStore.getRefreshToken();
      print("refreshToken: $refreshToken");
      var res = await dio.client().post(
        "/token/refresh",
        data: {
          "refresh_token": refreshToken,
        },
      );

      var tokenModel = TokenModel.fromJson(res.data);
      await LocalStore.setAccessToken(tokenModel.token);
      return tokenModel;
    } on DioError catch (e) {
      if (e.response?.statusCode == 404) {
        LocalStore.clearAll();
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => const SignUp()),
                (route) => false);
      }
      debugPrint("Get Profile Error : $e");
      return null;
    }
  }

  @override
  Future editUser(BuildContext context, EditUserModel newUser) async {
    try {
      final token = await LocalStore.getAccessToken();
      var res = await dio
          .client(token: token)
          .put("/applicants/${newUser.id}", data: newUser.toJson());
      return null;
    } on DioError catch (e) {
      if (e.response?.statusCode == 401) {
        var res = await refreshToken(context);
        if (res != null) {
          // ignore: use_build_context_synchronously
          await editUser(context, newUser);
        }
      }
    }
    return null;
  }

  @override
  Future<ApplicationModel?> getApplication(BuildContext context,
      int userId) async {
    try {
      final token = await LocalStore.getAccessToken();
      var res = await dio.client(token: token).get(
        "/applicants/4",
      );
      return ApplicationModel.fromJson(res.data);
    } on DioError catch (e) {
      if (e.response?.statusCode == 401) {
        var res = await refreshToken(context);
        if (res != null) {
          // ignore: use_build_context_synchronously
          await getApplication(context, userId);
        }
      }
    }
    return null;
  }

  @override
  Future uploadImage(BuildContext context, String imagePath) async {
    FormData formData = FormData.fromMap({
      "image": await MultipartFile.fromFile(imagePath),
      "type": "restaurant/logo",
      "name": "James"
    });
    try {
      var res = await dio
          .client()
          .post("/api/v1/dashboard/galleries?image", data: formData);
      print("res : ${res.data["data"]["title"]}");
      return res.data["data"]["title"];
    } on DioError catch (e) {
      print("error : $e");
    }
    return null;
  }

  @override
  Future<DrawRouting?> getRout({required BuildContext context,
    required LatLng start,
    required LatLng end}) async {
    try {
      final qData = {
        "api_key": "5b3ce3597851110001cf62480384c1db92764d1b8959761ea2510ac8",
        "start": "${start.longitude},${start.latitude}",
        "end": "${end.longitude},${end.latitude}"
      };
      var res = await dio.client(isRouting: true).get(
          "/v2/directions/driving-car", queryParameters: qData);
      return DrawRouting.fromJson(res.data);
    } on DioError catch (e) {
      print(e);
    }
    return null;
  }
}