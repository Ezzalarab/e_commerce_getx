import '../../../app/exports.dart';

class HomeP extends StatelessWidget {
  const HomeP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home_page'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('home_page'),
      ),
    );
  }
}
