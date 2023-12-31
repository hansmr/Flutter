void main() async {
  emitNumber().listen((int value) {
    print('Stream value: $value');
  });
}

Stream<int> emitNumber() async* {
  final valuesToEmit = [1, 2, 3, 4, 5];
  for (int i in valuesToEmit) {
    await Future.delayed(Duration(seconds: 1));
    // Cede el valor de i para ser usado por el stream
    yield i;
  }
}
