import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/router/router.dart';
import 'package:kepler_vision/src/features/profile_page/data/models/profile_entity.dart';

import '../../../../core/widgets/buttons/switchable_icon_button.dart';
import '../bloc/profile_bloc.dart';
import 'profile_avatar.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showProfile;

  const ProfileAppBar({
    super.key,
    this.showProfile = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.colors.white,
      elevation: 0,
      centerTitle: false,
      title: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return _buildDefaultTitle(context);
            },
            loaded: (viewModel) {
              return AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                switchInCurve: Curves.easeInOut,
                switchOutCurve: Curves.easeInOut,
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0.0, -0.5),
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    ),
                  );
                },
                child: showProfile
                    ? _buildProfileTitle(context, viewModel.profile!)
                    : _buildDefaultTitle(context),
              );
            },
          );
        },
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: SwitchableIconButton(
            icon: context.icons.cog__work_loading_cog_gear_settings_machine,
            onTap: () {
              context.push(RoutePaths.settings);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildProfileTitle(BuildContext context, ProfileEntity profile) {
    return Row(
      key: const ValueKey('profile_title'),
      children: [
        Hero(
          tag: 'profile_avatar',
          child: ProfileAvatar(
            name: profile.fullName ?? '',
            avatarUrl:
                'here should be avatar url', //TODO url in getProfile is absent
            size: 36,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Hero(
            tag: 'profile_name',
            flightShuttleBuilder: (
              BuildContext flightContext,
              Animation<double> animation,
              HeroFlightDirection flightDirection,
              BuildContext fromHeroContext,
              BuildContext toHeroContext,
            ) {
              return DefaultTextStyle(
                style: context.typography.textxlBold.copyWith(
                  color: context.colors.gray800,
                ),
                child: Text(profile.fullName ?? ''),
              );
            },
            child: Material(
              color: Colors.transparent,
              child: Text(
                profile.fullName ?? '',
                style: context.typography.textxlBold.copyWith(
                  color: context.colors.gray800,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDefaultTitle(BuildContext context) {
    return Text(
      key: const ValueKey('default_title'),
      'Аккаунт',
      style: context.typography.textxlBold.copyWith(
        color: context.colors.gray800,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
