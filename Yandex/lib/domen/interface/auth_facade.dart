import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../model/application_model.dart';
import '../model/edit_model.dart';
import '../model/profile_model.dart';
import '../model/rout_model.dart';
import '../model/token_model.dart';

abstract class AuthFacade {
  Future<Response?> signUp({required String email, required String password});

  Future<Response?> login({required String email, required String password});

  Future<TokenModel?> verifyEmail(
      {required String email, required String code});

  Future logout();

  Future<TokenModel?> refreshToken(BuildContext context);

  Future<ProfileModel?> getUser(BuildContext context);

  Future<ApplicationModel?> getApplication(BuildContext context, int userId);

  Future editUser(BuildContext context, EditUserModel newUser);

  Future uploadImage(BuildContext context, String imagePath);

  Future<DrawRouting?> getRout({required BuildContext context,required LatLng start,required LatLng end});
}
