import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/widgets/shimmer/shimmer_container.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.time,
    this.iconColor,
    this.iconData,
    this.hasActionLink = false,
    this.onTap,
    this.imagePath,
    this.isIcon = false,
  });

  final String title;
  final String subtitle;
  final String time;
  final Color? iconColor;
  final IconData? iconData;
  final bool hasActionLink;
  final VoidCallback? onTap;
  final String? imagePath;
  final bool isIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: context.colors.white,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: context.colors.gray900.withValues(alpha: 0.05),
                    blurRadius: 2,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: isIcon
                  ? Icon(
                      iconData,
                      color: iconColor,
                    )
                  : Padding(
                      padding: const EdgeInsets.all(5.5),
                      child: SvgPicture.asset(
                        imagePath ?? '',
                      ),
                    ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: context.colors.white,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: context.colors.gray900.withValues(alpha: 0.05),
                      blurRadius: 2,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title,
                                  style: context.typography.textmdSemibold.copyWith(
                                    color: context.colors.black,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(subtitle,
                                    style: context.typography.textxsRegular.copyWith(
                                      color: context.colors.gray500,
                                    )),
                                if (hasActionLink)
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: Text(
                                      'Посмотреть',
                                      style: context.typography.textxsRegular.copyWith(
                                        color: context.colors.blueGray500,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Text(
                            time,
                            style: context.typography.textxsRegular.copyWith(
                              color: context.colors.gray500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationItemShimmer extends StatelessWidget {
  const NotificationItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ShimmerContainer(
            width: 32,
            height: 32,
            isEight: true,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: ShimmerContainer(
              width: double.infinity,
              height: 84,
              isEight: true,
            ),
          ),
        ],
      ),
    );
  }
}
