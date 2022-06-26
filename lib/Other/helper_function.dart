class HelperFunction {
  static List<List<String>> transformColumnsToRows(List<List<String>> columns) {
    //Find max number of elements in columns.
    int maxCount = 0;
    for (var col in columns) {
      if (col.length > maxCount) maxCount = col.length;
    }
    for (var col in columns) {
      if (col.length < maxCount) {
        col.addAll(List.filled(maxCount - col.length, ''));
      }
    }
    List<List<String>> results = List<List<String>>.filled(
        maxCount, List<String>.filled(columns.length, ''));
    for (var i = 0; i < results.length; i++) {
      for (var j = 0; j < results[i].length; j++) {
        results[i][j] = columns[j][i];
      }
    }
    return results;
  }
}
