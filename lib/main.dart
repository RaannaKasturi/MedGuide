import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:ionicons/ionicons.dart';
import 'util.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Poppins", "Syne");
    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MedGuide',
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: const Register(),
    );
  }
}

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          "MedGuide",
          style: Theme.of(context)
              .textTheme
              .displayMedium
              ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Register an Account",
                    style: Theme.of(context).textTheme.headlineLarge),
                Text(
                  "To unlock the full potential of MedGuide by registering an account",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(overflow: TextOverflow.visible),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            padding:
                const EdgeInsets.only(top: 80, left: 15, right: 20, bottom: 30),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // EMAIL
                  FormBuilderTextField(
                    name: "Email Address",
                    controller: _email,
                    canRequestFocus: true,
                    enableSuggestions: true,
                    keyboardType: TextInputType.emailAddress,
                    autofillHints: const [AutofillHints.email],
                    autocorrect: true,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      iconColor: Theme.of(context).primaryColor,
                      fillColor: Theme.of(context).primaryColor,
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
                  const SizedBox(height: 20),
                  FormBuilderTextField(
                    name: 'Password',
                    controller: _password,
                    obscureText: _obscureText,
                    canRequestFocus: true,
                    enableSuggestions: false,
                    keyboardType: TextInputType.visiblePassword,
                    autofillHints: const [AutofillHints.newPassword],
                    autocorrect: false,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      iconColor: Theme.of(context).primaryColor,
                      fillColor: Theme.of(context).primaryColor,
                      labelText: "Password",
                      hintText: "Enter a password",
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
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
                  const SizedBox(height: 20),
                  FormBuilderTextField(
                    name: 'Confirm Password',
                    controller: _confirmPassword,
                    obscureText: _obscureText,
                    canRequestFocus: true,
                    enableSuggestions: false,
                    keyboardType: TextInputType.visiblePassword,
                    autofillHints: const [AutofillHints.newPassword],
                    autocorrect: false,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      iconColor: Theme.of(context).primaryColor,
                      fillColor: Theme.of(context).primaryColor,
                      labelText: "Confirm Password",
                      hintText: "Retype the password",
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
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
                  const SizedBox(height: 30),
                  // REGISTER BUTTON
                  TextButton.icon(
                    onPressed: () {
                      String email = _email.text;
                      String password = _password.text;
                      String confirmPassword = _confirmPassword.text;
                      debugPrint("Email: $email");
                      debugPrint("Password: $password");
                      debugPrint("Confirm Password: $confirmPassword");
                    },
                    label: const Text("Register"),
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
                  const SizedBox(height: 20),
                  Text(
                    "Or register with",
                    style: Theme.of(context).textTheme.titleMedium,
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
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text("Login"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 150),
                ]),
          ),
        ],
      ),
    );
  }
}
