import 'dart:developer';

import 'package:cinebox/core/result/result.dart';
import 'package:google_sign_in/google_sign_in.dart';

import './google_signin_service.dart';

class GoogleSigninServiceImpl implements GoogleSigninService {
  @override
  Future<Result<String>> isSignedIn() async {
    try {
      final logged = await GoogleSignIn.instance
          .attemptLightweightAuthentication();

      if (logged case GoogleSignInAccount(
        authentication: GoogleSignInAuthentication(:final idToken?),
      )) {
        return Success(idToken);
      }
      return Failure(
        Exception('User is not signed in Google'),
      );
    } catch (error, stackTrace) {
      log(
        'User is not signed in Google',
        name: 'GoogleSignInService',
        error: error,
        stackTrace: stackTrace,
      );
      return Failure(
        Exception('User is not signed in Google'),
      );
    }
  }

  @override
  Future<Result<String>> signIn() async {
    try {
      final auth = await GoogleSignIn.instance.authenticate(
        scopeHint: [
          'email',
          'profile',
          'openid',
        ],
      );

      if (auth.authentication case GoogleSignInAuthentication(
        idToken: final idToken?,
      )) {
        return Success(idToken);
      }

      return Failure(
        Exception('Failed to retrieve ID Token from Google Sign-In'),
      );
    } catch (error, stackTrace) {
      log(
        'Failed to retrieve ID Token from Google Sign-In',
        name: "GoogleSignInService",
        error: error,
        stackTrace: stackTrace,
      );
      return Failure(
        Exception('Failed to retrieve ID Token from Google Sign-In'),
      );
    }
  }

  @override
  Future<Result<Unit>> signOut() async {
    try {
      await GoogleSignIn.instance.signOut();
      return successOfUnit();
    } catch (error, stackTrace) {
      log(
        'Google Sign-Out error',
        name: 'GoogleSignInService',
        error: error,
        stackTrace: stackTrace,
      );
      return Failure(
        Exception(
          'Google Sign-Out error',
        ),
      );
    }
  }
}
