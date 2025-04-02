import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kepler_vision/src/core/components/roles/presentation/bloc/role_cubit.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/services/injectable/injectable_service.dart';
import 'package:kepler_vision/src/features/profile_page/domain/requests/get_profile_request.dart';
import 'package:kepler_vision/src/features/settings/domain/entities/role_entity.dart';
import 'package:url_launcher/url_launcher.dart';

import '../data/models/profile_child_entity.dart';
import '../data/models/profile_class_entity.dart';
import '../data/models/profile_entity.dart';
import '../data/models/profile_role_entity.dart';
import 'bloc/profile_bloc.dart';
import 'widgets/child_item.dart';
import 'widgets/class_item.dart';
import 'widgets/notification_switch.dart';
import 'widgets/profile_app_bar.dart';
import 'widgets/profile_avatar.dart';
import 'widgets/role_selector.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with SingleTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  bool _showAppBarProfile = false;
  String? _previousRoleName;

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final scrollPercentage = (_scrollController.offset / 150).clamp(0.0, 1.0);
    _animationController.value = scrollPercentage;

    final showAppBarProfile = scrollPercentage > 0.5;
    if (showAppBarProfile != _showAppBarProfile) {
      setState(() {
        _showAppBarProfile = showAppBarProfile;
      });
    }
  }

  void _resetScrollPosition() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
    _animationController.animateTo(0);
    setState(() {
      _showAppBarProfile = false;
    });
  }

  void _checkRoleChange(ProfileViewModel viewModel) {
    final currentRole = viewModel.profile?.roles?.isNotEmpty == true ? viewModel.profile!.roles!.first.name : null;

    if (_previousRoleName != null && _previousRoleName != currentRole) {
      _resetScrollPosition();
    }
    _previousRoleName = currentRole;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProfileBloc>()
        ..add(
          const ProfileEvent.getProfile(
            GetProfileRequest(
              schoolId: 1,
              userId: 1,
            ),
          ),
        ),
      child: Builder(builder: (context) {
        // Access RoleCubit here for listening to role changes
        final roleCubit = context.watch<RoleCubit>();

        return Scaffold(
          backgroundColor: context.colors.gray100,
          appBar: ProfileAppBar(showProfile: _showAppBarProfile),
          body: BlocConsumer<ProfileBloc, ProfileState>(
            listener: (context, state) {
              state.maybeWhen(
                loaded: (viewModel) {
                  _checkRoleChange(viewModel);
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox.shrink(),
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (viewModel) {
                  if (viewModel.profile == null) {
                    return const Center(child: Text('No profile data available'));
                  }
                  return _buildProfileContent(context, viewModel);
                },
                error: (message) => Center(child: Text(message)),
              );
            },
          ),
        );
      }),
    );
  }

  Widget _buildProfileContent(BuildContext context, ProfileViewModel viewModel) {
    final profile = viewModel.profile!;
    final currentRole = profile.roles?.isNotEmpty == true ? profile.roles!.first : null;

    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.only(top: 12, bottom: 12),
          sliver: SliverToBoxAdapter(
            child: AnimatedBuilder(
              animation: _fadeAnimation,
              builder: (context, child) {
                return Opacity(
                  opacity: 1 - _fadeAnimation.value,
                  child: child,
                );
              },
              child: _buildUserInfo(context, profile),
            ),
          ),
        ),
        if (profile.roles?.isNotEmpty == true)
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 12),
            sliver: SliverToBoxAdapter(
              child: _buildRoleSelector(context, profile),
            ),
          ),
        if (currentRole != null && currentRole.children != null && currentRole.children!.isNotEmpty)
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 12),
            sliver: _buildChildrenSliverList(context, currentRole.children!),
          ),
        if (currentRole != null && currentRole.classes != null && currentRole.classes!.isNotEmpty)
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 12),
            sliver: _buildClassesSliverList(context, currentRole.classes!),
          ),
        if (currentRole != null)
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 12),
            sliver: SliverToBoxAdapter(
              child: _buildNotificationsSection(context, currentRole),
            ),
          ),
        _buildSupportSliver(context),
      ],
    );
  }

  Widget _buildUserInfo(BuildContext context, ProfileEntity profile) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        child: Row(
          children: [
            AnimatedBuilder(
              animation: _fadeAnimation,
              builder: (context, child) {
                // Scale down as we scroll
                final scale = 1.0 - (_fadeAnimation.value * 0.2);
                return Transform.scale(
                  scale: scale,
                  child: child,
                );
              },
              child: Hero(
                tag: 'profile_avatar',
                child: ProfileAvatar(
                  name: profile.fullName ?? '',
                  avatarUrl: null, // Profile entity doesn't have avatarUrl
                  size: 80,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: 'profile_name',
                    child: Material(
                      color: Colors.transparent,
                      child: Text(
                        profile.fullName ?? '',
                        style: context.typography.textxlBold.copyWith(
                          color: context.colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  AnimatedBuilder(
                    animation: _fadeAnimation,
                    builder: (context, child) {
                      return Opacity(
                        opacity: 1.0 - _fadeAnimation.value,
                        child: child,
                      );
                    },
                    child: Text(
                      profile.email ?? '',
                      style: context.typography.textsmRegular.copyWith(
                        color: context.colors.gray500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRoleSelector(BuildContext context, ProfileEntity profile) {
    final currentRole = profile.roles?.isNotEmpty == true ? profile.roles!.first : null;

    if (currentRole == null) {
      return const SizedBox.shrink();
    }

    return Container(
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: RoleSelector(
          currentRole: currentRole,
          roles: profile.roles ?? [],
          onRoleSelected: (role) {
            // First update the local ProfileBloc to reflect the selected role visually
            context.read<ProfileBloc>().add(ProfileEvent.selectRole(role));

            // Then update the global RoleCubit to apply the role change throughout the app
            final roleCubit = context.read<RoleCubit>();
            // Convert ProfileRoleEntity to RoleEntity
            final roleEntity = RoleEntity(
              title: role.name ?? 'parent', // Use the name from ProfileRoleEntity as title
              // Add childId if available from the first child
              childId: role.children?.isNotEmpty == true ? role.children!.first.id?.toString() : null,
              // Add courseId if available from the first class - using name instead of id
              courseId: role.classes?.isNotEmpty == true ? role.classes!.first.name : null,
            );
            roleCubit.setRole(roleEntity);
          },
        ),
      ),
    );
  }

  Widget _buildSupportSliver(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  _launchUrl(Uri.parse('https://wa.me/77074044460'));
                },
                borderRadius: BorderRadius.circular(8),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/app_images/whatsapp.svg',
                          height: 32,
                          width: 32,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Связаться с поддержкой',
                              style: context.typography.textmdSemibold.copyWith(
                                color: context.colors.black,
                              ),
                            ),
                            Text(
                              'Чат в WhatsApp',
                              style: context.typography.textsmRegular.copyWith(
                                color: context.colors.gray500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: context.colors.gray400,
                        size: 24,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildChildrenSliverList(BuildContext context, List<ProfileChildEntity> children) {
    return SliverToBoxAdapter(
      child: Container(
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
              child: Text(
                'Дети',
                style: context.typography.textmdSemibold.copyWith(
                  color: context.colors.black,
                ),
              ),
            ),
            ...children.map((child) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: ChildItem(child: child),
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildClassesSliverList(BuildContext context, List<ProfileClassEntity> classes) {
    return SliverToBoxAdapter(
      child: Container(
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 16),
              child: Text(
                'Классы',
                style: context.typography.textmdSemibold.copyWith(
                  color: context.colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: classes.map((classInfo) => ClassItem(classInfo: classInfo)).toList(),
              ),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationsSection(BuildContext context, ProfileRoleEntity role) {
    // Check if the current role is psychologist (case-insensitive)
    final isPhsychologist = role.name?.toLowerCase() == 'психолог';

    return Container(
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NotificationSwitch(
            title: 'Уведомления',
            value: role.allowNotification,
            onChanged: (value) {
              // When main notifications switch is toggled, update all notification settings
              context.read<ProfileBloc>().add(
                    ProfileEvent.updateNotifications(
                      role: role,
                      value: value,
                    ),
                  );
            },
          ),
          NotificationSwitch(
            title: 'События',
            value: role.events,
            onChanged: (value) {
              // The BLoC will handle turning on the main notification if needed
              context.read<ProfileBloc>().add(
                    ProfileEvent.updateEventsNotifications(
                      role: role,
                      value: value,
                    ),
                  );
            },
          ),
          // Only show "Приход и уход" notification if the role is not psychologist
          if (role.comeAndGo != null && !isPhsychologist)
            NotificationSwitch(
              title: 'Приход и уход',
              value: role.comeAndGo ?? false,
              onChanged: (value) {
                // The BLoC will handle turning on the main notification if needed
                context.read<ProfileBloc>().add(
                      ProfileEvent.updateComeAndGoNotifications(
                        role: role,
                        value: value,
                      ),
                    );
              },
            ),
        ],
      ),
    );
  }
}
