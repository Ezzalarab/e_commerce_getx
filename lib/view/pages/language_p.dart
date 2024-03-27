import '../../app/exports.dart';

class LanguageP extends StatelessWidget {
  const LanguageP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // welcome for each language
        title: const Text('Welcome'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Change Language', style: AppTypography.body1),
            const SizedBox(height: 20),
            LangButton(
              title: 'English',
              onPressed: () {},
            ),
            LangButton(
              title: 'Arabic',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
