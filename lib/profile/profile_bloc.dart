import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/models/User.dart';
import 'package:login/profile/profile_event.dart';
import 'package:login/profile/profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({@required User user, @required bool isCurrentUser})
      : super(ProfileState(user: user, isCurrentUser: isCurrentUser));
  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    print(event);
    if (event is ChangeAvatarRequest) {
    } else if (event is OpenImagePicker) {
    } else if (event is ProvideImagePath) {
      yield state.copyWith(avatarPath: event.avatarPath);
    } else if (event is ProfileDescriptionChanged) {
      yield state.copyWith(userDescription: event.description);
    } else if (event is SaveProfilesChanges) {}
  }
}
