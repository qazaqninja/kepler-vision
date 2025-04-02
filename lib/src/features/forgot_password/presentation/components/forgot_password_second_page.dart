import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';

import '../../../../app/imports.dart';

class ForgotPasswordSecondPage extends StatefulWidget {
  const ForgotPasswordSecondPage({
    super.key,
    required this.email,
    required this.pageController,
    required this.callback,
  });

  final String email;
  final PageController pageController;
  final VoidCallback callback;

  @override
  State<ForgotPasswordSecondPage> createState() => _ForgotPasswordSecondPageState();
}

class _ForgotPasswordSecondPageState extends State<ForgotPasswordSecondPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 40,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Введите код, отправленный на вашу почту ',
                style: context.typography.textxlBold.copyWith(
                  color: context.colors.black,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 4),
              Text(
                'Если письмо не пришло, проверьте папку «Спам»',
                style: context.typography.textmdRegular.copyWith(
                  color: context.colors.gray500,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  6,
                  (index) => const CustomOTPWidget(),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        widget.callback();
                      },
                      child: const Text(
                        'Получить код повторно',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomOTPWidget extends StatelessWidget {
  const CustomOTPWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 52,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        keyboardType: TextInputType.number,
        style: context.typography.displaysmMedium.copyWith(
          color: context.colors.black,
        ),
        cursorColor: context.colors.brand500,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 7,
            horizontal: 8,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: context.colors.gray300),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: context.colors.gray300),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: context.colors.brand300),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: context.colors.error300),
          ),
        ),
      ),
    );
  }
}
