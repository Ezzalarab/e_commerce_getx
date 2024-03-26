import '../../../app/exports.dart';

class LoginP extends StatelessWidget {
  const LoginP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Column(
          children: [
            Text('Login Page'),
          ],
        ),
      ),
    );
  }
}
