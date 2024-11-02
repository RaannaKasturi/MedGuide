import 'package:easy_url_launcher/easy_url_launcher.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:ionicons/ionicons.dart';
import 'package:medguide/theme.dart';
import 'package:provider/provider.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _obscureText = true;
  late final TextEditingController _email;
  late final TextEditingController _password;
  late final TextEditingController _confirmPassword;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    _confirmPassword = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _confirmPassword.dispose();
    super.dispose();
  }

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/home', (route) => false);
            },
            icon: Icon(
              Ionicons.home,
              color: Theme.of(context).colorScheme.onPrimary,
            )),
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          "MedGuide",
          style: Theme.of(context)
              .textTheme
              .displayMedium
              ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
        ),
        actions: [
          IconButton(
            icon: const Icon(Ionicons.contrast_outline),
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Container(
        margin: const EdgeInsets.only(top: 40, left: 30, right: 30),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "Welcome to ",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface)),
                  TextSpan(
                      text: "MedGuide",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Theme.of(context).colorScheme.primary)),
                ])),
                Text("Register",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface)),
                SizedBox(height: height * 0.03),
                // EMAIL
                FormBuilderTextField(
                  name: "Email Address",
                  controller: _email,
                  canRequestFocus: true,
                  enableSuggestions: true,
                  keyboardType: TextInputType.emailAddress,
                  autofillHints: const [AutofillHints.email],
                  autocorrect: true,
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.onSurface),
                  decoration: InputDecoration(
                    icon: const Icon(Ionicons.mail),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    iconColor: Theme.of(context).colorScheme.onSurface,
                    fillColor: Theme.of(context).colorScheme.onSurface,
                    labelText: "Email Address",
                    hintText: "Enter your email address",
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.email(),
                  ]),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
                // PASSWORD
                SizedBox(height: height * 0.01),
                FormBuilderTextField(
                  name: 'Password',
                  controller: _password,
                  obscureText: _obscureText,
                  canRequestFocus: true,
                  enableSuggestions: false,
                  keyboardType: TextInputType.visiblePassword,
                  autofillHints: const [AutofillHints.newPassword],
                  autocorrect: false,
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.onSurface),
                  decoration: InputDecoration(
                    icon: const Icon(Ionicons.shield),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    iconColor: Theme.of(context).colorScheme.onSurface,
                    fillColor: Theme.of(context).colorScheme.onSurface,
                    labelText: "Password",
                    hintText: "Enter a password",
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: _toggleVisibility,
                    ),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.password(
                        minLength: 8,
                        maxLength: 30,
                        minLowercaseCount: 1,
                        minUppercaseCount: 1,
                        minNumberCount: 1,
                        minSpecialCharCount: 1,
                        checkNullOrEmpty: true),
                  ]),
                ),
                // CONFIRM PASSWORD
                SizedBox(height: height * 0.01),
                FormBuilderTextField(
                  name: 'Confirm Password',
                  controller: _confirmPassword,
                  obscureText: _obscureText,
                  canRequestFocus: true,
                  enableSuggestions: false,
                  keyboardType: TextInputType.visiblePassword,
                  autofillHints: const [AutofillHints.newPassword],
                  autocorrect: false,
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.onSurface),
                  decoration: InputDecoration(
                    icon: const Icon(Ionicons.shield_checkmark),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    iconColor: Theme.of(context).colorScheme.onSurface,
                    fillColor: Theme.of(context).colorScheme.onSurface,
                    labelText: "Confirm Password",
                    hintText: "Retype the password",
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: _toggleVisibility,
                    ),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.password(
                        minLength: 8,
                        maxLength: 30,
                        minLowercaseCount: 1,
                        minUppercaseCount: 1,
                        minNumberCount: 1,
                        minSpecialCharCount: 1,
                        checkNullOrEmpty: true),
                    FormBuilderValidators.equal(_password.text,
                        errorText: "Passwords do not match"),
                  ]),
                ),
                SizedBox(height: height * 0.02),
                // REGISTER BUTTON
                TextButton.icon(
                  onPressed: () {
                    String email = _email.text.trim();
                    String password = _password.text.trim();
                    String confirmPassword = _confirmPassword.text.trim();
                    debugPrint("Email: $email");
                    debugPrint("Password: $password");
                    debugPrint("Confirm Password: $confirmPassword");
                  },
                  label: const Text(" Register"),
                  icon: const Icon(Icons.person_add),
                  style: TextButton.styleFrom(
                    foregroundColor: Theme.of(context).colorScheme.onPrimary,
                    alignment: Alignment.center,
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    padding: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                // SOCIAL LOGIN
                SizedBox(height: height * 0.02),
                Text(
                  "Or register with",
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Ionicons.logo_google),
                      onPressed: () {},
                      iconSize: 40,
                      color: Theme.of(context).colorScheme.primary,
                      tooltip: ("Register with Google"),
                    ),
                    IconButton(
                      icon: const Icon(Ionicons.logo_github),
                      onPressed: () {},
                      iconSize: 40,
                      color: Theme.of(context).colorScheme.primary,
                      tooltip: ("Register with Github"),
                    ),
                    IconButton(
                      icon: const Icon(Ionicons.logo_facebook),
                      onPressed: () {},
                      iconSize: 40,
                      color: Theme.of(context).colorScheme.primary,
                      tooltip: ("Register with Facebook"),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                Text.rich(
                  TextSpan(children: [
                    TextSpan(
                        text: "Already have an account? ",
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: Theme.of(context).colorScheme.onSurface)),
                    TextSpan(
                        text: "Login",
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: Theme.of(context).colorScheme.primary),
                        // go to register page
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                '/login', (route) => false);
                          }),
                  ]),
                ),
              ]),
        ),
      ),
      persistentFooterButtons: [
        Text.rich(
          TextSpan(children: [
            TextSpan(
                text: "Developed with ❤️ by ",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onSurface)),
            TextSpan(
              text: 'Nayan Kasturi',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  EasyLauncher.url(
                      url: 'https://nayankasturi.eu.org',
                      mode: Mode.externalApp);
                },
            ),
          ]),
        ),
      ],
      persistentFooterAlignment: AlignmentDirectional.center,
    );
  }
}
