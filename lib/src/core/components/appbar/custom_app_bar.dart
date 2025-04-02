import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/core/components/appbar/enum/app_bar_back_button_type.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/widgets/buttons/switchable_icon_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final TextStyle? titleStyle;
  final String? subtitle;
  final TextStyle? subtitleStyle;
  final bool showBackButton;
  final AppBarBackButtonType backButtonType;
  final VoidCallback? onBackPressed;
  final List<Widget> actions;
  final Widget? leading;
  final Widget? titleWidget;
  final bool centerTitle;
  final Color? backgroundColor;
  final EdgeInsetsGeometry padding;
  final double height;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment titleCrossAlignment;

  const CustomAppBar({
    super.key,
    this.title,
    this.titleStyle,
    this.subtitle,
    this.subtitleStyle,
    this.showBackButton = false,
    this.backButtonType = AppBarBackButtonType.back,
    this.onBackPressed,
    this.actions = const [],
    this.leading,
    this.titleWidget,
    this.centerTitle = false,
    this.backgroundColor,
    this.padding = const EdgeInsets.fromLTRB(16, 8, 16, 8),
    this.height = 60,
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    this.titleCrossAlignment = CrossAxisAlignment.start,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: preferredSize.height,/
      color: backgroundColor ?? context.colors.white,
      child: SafeArea(
        child: Padding(
          padding: padding,
          child: Row(
            mainAxisAlignment: mainAxisAlignment,
            children: [
              Expanded(
                child: Row(
                  children: [
                    if (showBackButton) _buildBackButton(context) else if (leading != null) leading!,
                    if (showBackButton || leading != null) const SizedBox(width: 12),
                    if (titleWidget != null) titleWidget! else if (title != null) _buildTitleSection(context),
                  ],
                ),
              ),
              Row(children: actions),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    IconData icon;

    switch (backButtonType) {
      case AppBarBackButtonType.back:
        icon = context.icons.chevron_left;
        break;
      case AppBarBackButtonType.close:
        icon = context.icons.delete_1__remove_add_button_buttons_delete_cross_x_mathematics_multiply_math;
        break;
      default:
        icon = context.icons.chevron_left;
    }

    return SwitchableIconButton(
      icon: icon,
      onTap: onBackPressed ?? () => context.pop(),
    );
  }

  Widget _buildTitleSection(BuildContext context) {
    if (subtitle == null) {
      return Text(
        title!,
        style: titleStyle ??
            context.typography.textlgBold.copyWith(
              color: context.colors.gray800,
            ),
      );
    } else {
      return Column(
        crossAxisAlignment: titleCrossAlignment,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title!,
            style: titleStyle ??
                context.typography.textlgSemibold.copyWith(
                  color: context.colors.black,
                ),
          ),
          Text(
            subtitle!,
            style: subtitleStyle ??
                context.typography.textsmRegular.copyWith(
                  color: context.colors.gray500,
                ),
          ),
        ],
      );
    }
  }
}
