class Employee {
  int _hours = 0;
  double _rate = 0;
  final _tax = 0.1; //10%

  Employee(int hours, double rate) {
    if (hours < 0 || rate <= 0) {
      throw Exception('negative values not allowed');
    }
    _hours = hours;
    _rate = rate;
  }

  double netSalary() => (_hours * _rate) * (1 - _tax);

  @override
  String toString() {
    return """
        Houres: $_hours
        Rate:$_rate
        Tax: ${_tax * 100}%
        Net Salary: ${netSalary()}
       """; // bete2der etda5l paragraph
  }
}
