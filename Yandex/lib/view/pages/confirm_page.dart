import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:yandex/view/pages/profile_page.dart';

import '../../controller/auth_controller.dart';

class ConfirmationPage extends StatefulWidget {
  final String email;

  const ConfirmationPage({Key? key, required this.email}) : super(key: key);

  @override
  State<ConfirmationPage> createState() => _ConfimationPageState();
}

class _ConfimationPageState extends State<ConfirmationPage> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verify Code"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          PinFieldAutoFill(
            controller: controller,
            cursor: Cursor(color: Colors.black, enabled: true, width: 2),
            decoration: const BoxLooseDecoration(
              gapSpace: 10,
              bgColorBuilder: FixedColorBuilder(
                Colors.white,
              ),
              strokeColorBuilder: FixedColorBuilder(
                Colors.black,
              ),
            ),
            onCodeSubmitted: (s) {},
            onCodeChanged: (s) {},
            currentCode: "",
          ),
          ElevatedButton(
              onPressed: () {
                context.read<AuthController>().verifyEmail(
                    code: controller.text, email: widget.email, onSuccess: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (_) => const ProfilePage()), (route) => false);
                });
              },
              child: const Text("Send"))
        ],
      ),
    );
  }
}
