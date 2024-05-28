import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_gellary/features/auth/presentation/manger/login/login_cubit.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_button.dart';
import 'custom_text_form_field.dart';

class LoginContainerAddField extends StatelessWidget {
  const LoginContainerAddField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Login Success"),
            ),
          );
          Navigator.pushNamed(context, "");
        }
        if (state is LoginFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
            ),
          );
        }
      },
      builder: (context, state) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 150,
              right: 40,
              left: 40,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 40),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "LOG IN",
                      style: Styles.textStyle30Bold(context),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextFormField(
                      controller: context.read<LoginCubit>().email,
                      hintText: "User Name",
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    CustomTextFormField(
                      controller: context.read<LoginCubit>().password,
                      hintText: "Password",
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    state is LoginLoading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : CustomButton(
                            onTap: () {
                              context.read<LoginCubit>().userLogin();
                            },
                          ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
