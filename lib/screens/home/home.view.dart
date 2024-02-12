part of '_index.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('State Management'),
          actions: [
            IconButton(
              onPressed: () {
                html.window.open('https://github.com/Siputsss/siska_sm', 'siska-fb');
              },
              icon: const Icon(SimpleIcons.github, color: SimpleIconColors.github),
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              OnReactive(
                () => Text(
                  _dt.rxHitung.state.toString(),
                  textScaler: const TextScaler.linear(2),
                ),
              ),
              OnBuilder(
                listenTo: _dt.rxHitung,
                builder: () => Text(
                  _dt.rxHitung.state.toString(),
                  textScaler: const TextScaler.linear(2),
                ),
              ),
              ElevatedButton(
                onPressed: () => _ct.tambah(),
                child: const Text("tambah"),
              ),
            ],
          ),
        ));
  }
}
