import 'package:flutter/material.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';

import '../../data/models/profile_child_entity.dart';
import 'profile_avatar.dart';

class ChildItem extends StatelessWidget {
  final ProfileChildEntity child;

  const ChildItem({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileAvatar(
          name: child.fullName!,
          avatarUrl: child.imageUrl,
          size: 50,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                child.fullName!,
                style: context.typography.textmdMedium.copyWith(
                  color: context.colors.black,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                child.email!,
                style: context.typography.textsmMedium.copyWith(
                  color: context.colors.gray500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
