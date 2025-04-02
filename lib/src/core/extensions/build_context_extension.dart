import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kepler_vision/gen/assets.gen.dart';
import 'package:kepler_vision/src/core/components/roles/presentation/bloc/role_cubit.dart';
import 'package:kepler_vision/src/core/localization/generated/l10n.dart';
import 'package:kepler_vision/src/core/theme/colors.dart';
import 'package:kepler_vision/src/core/theme/theme.dart';
import 'package:kepler_vision/src/core/theme/typography.dart';
import 'package:kepler_vision/src/core/utils/constants/app_icons.dart';
import 'package:kepler_vision/src/features/settings/domain/entities/role_entity.dart';

extension BuildContextExtension on BuildContext {
  S get loc => S.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  bool get userGestureInProgress => Navigator.of(this).userGestureInProgress;

  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  double get aspectRatio => MediaQuery.of(this).size.aspectRatio;
  double get bottomViewInset => MediaQuery.of(this).viewInsets.bottom;
  RoleEntity? get role => read<RoleCubit>().state.currentRole;
  $AssetsAppImagesGen get assetImages => Assets.appImages;
  $AssetsIconsGen get assetIcons => Assets.icons;
  AppColors get colors => AppTheme.colors;
  FigmaTextStyles get typography => AppTheme.typography;
  AppIcons get icons => AppTheme.icons;
}
