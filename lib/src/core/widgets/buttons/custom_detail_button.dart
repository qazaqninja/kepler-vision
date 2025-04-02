import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/theme/typography.dart';

class CustomDetailButton extends StatelessWidget {
  final VoidCallback onTap;

  const CustomDetailButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.loc.moreDetail,
            style: const FigmaTextStyles().typography2Medium.copyWith(
                  color: context.colors.blue600,
                ),
          ),
        ],
      ),
    );
  }
}
