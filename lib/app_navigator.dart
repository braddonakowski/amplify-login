import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/loading_view.dart';
import 'package:login/login/auth/auth_cubit.dart';
import 'package:login/login/auth/auth_navigator.dart';
import 'package:login/profile/profile_view.dart';
import 'package:login/session_cubit.dart';
import 'package:login/session_state.dart';

class AppNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionCubit, SessionState>(
      builder: (context, state) {
        return Navigator(
          pages: [
            // Show loading screen
            if (state is UnknownSessionState)
              MaterialPage(
                child: LoadingView(),
              ),
            // Show auth flow
            if (state is Unauthenticated)
              MaterialPage(
                child: BlocProvider(
                  create: (context) => AuthCubit(
                    sessionCubit: context.read<SessionCubit>(),
                  ),
                  child: AuthNavigator(),
                ),
              ),
            // Show session flow
            if (state is Authenticated)
              MaterialPage(
                child: ProfileView(),
              )
          ],
          onPopPage: (route, result) => route.didPop(result),
        );
      },
    );
  }
}
