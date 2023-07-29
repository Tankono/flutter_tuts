import 'package:flutter/material.dart';
import 'package:flutter_tuts/ui/app_widgets.dart';
import 'package:flutter_tuts/ui/login/components/app_icons.dart';

import 'components/app_text_theme.dart';
import 'components/button_effect_widget.dart';
import 'components/colors.dart';
import 'components/constants.dart';
import 'components/container_hide_keyboard.dart';
import 'components/text_form_field_custom.dart';
import 'components/wrap_page.dart';

class LoginPage2 extends StatelessWidget {
  LoginPage2({Key? key}) : super(key: key);

  final _usernameFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return WrapPage(
        top: false,
        statusBarColor: Colors.transparent,
        backgroundColor: Colors.white,
        child: ContainerHideKeyboard(
          child: Column(children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(bottom: 8),
                width: size.width,
                height: 250,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: CustomColors.neutral5),
                            child: AppIcons.logo,
                          ),
                          const SizedBox(height: 10),
                          Text("Bánh mì 88",
                              style: h26.copyWith(
                                  color: CustomColors.primary1,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  TF(),
                  const SizedBox(
                    height: defaultPadding / 1.5,
                  ),
                  TF(),
                  const SizedBox(
                    height: defaultPadding * 2,
                  ),
                  BT()
                ],
              ),
            )
          ]),
        ));
  }
}
