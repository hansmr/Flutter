void main() async {
  // Los streams se activan si existen un listener (listen)
  // de no ser asi, si son invocados no van a activarse
  emitNumbers().listen((value) {
    print('Stream value: $value');
  });
}

// Los streams son un flujo de datos
// Take(5) permite generar 5 datos y luego parar el stream
Stream<int> emitNumbers() {
  return Stream.periodic(
    const Duration(seconds: 1),
    (value) {
      // print('desde periodic $value');
      return value;
    },
  ).take(5);
}
