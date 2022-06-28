enum Gender {
  male,
  female;

  @override
  String toString() {
    switch (this) {
      case Gender.male:
        return '男';
      case Gender.female:
        return '女';
    }
  }
}
