void main() {
  List<Map<String, double?>> weatherData = [
    {'temp': 5.3, 'rain': 0.9, 'wind': null},
    {'temp': 4.5, 'rain': null, 'wind': 10.8},
    {'temp': null, 'rain': 3.8, 'wind': null}
  ];

  print('Durchschnittliche Temperatur: ${GetAverage("temp", weatherData)}');
  print(
      'Durchschnittliche Niederschlagsmenge: ${GetAverage("rain", weatherData)}');
  print(
      'Durchschnittliche Windgeschwindigkeit: ${GetAverage("wind", weatherData)}');
}

double GetAverage(String key, List<Map<String, double?>> data) {
  int nSum = 0;
  double sum = 0;
  for (int i = 0; i < data.length; i++) {
    if (data[i][key] != null) {
      sum += data[i][key]!;
      nSum++;
    }
  }
  double avg = sum / nSum;
  return avg;
}
