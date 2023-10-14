class Calculator {
  num? a;
  num? b;
  String? op;
  List<String> stack = List.empty(growable: true);

  Calculator();

  String calculate(String input) {
    switch (input) {
      case 'AC':
        {
          a = null;
          b = null;
          op = null;
          stack.clear();
          return '0';
        }
      case '1' ||
            '2' ||
            '3' ||
            '4' ||
            '5' ||
            '6' ||
            '7' ||
            '8' ||
            '9' ||
            '0' ||
            '.':
        {
          if (op == null) {
            stack.add(input);
            a = stackToNum();
            return a.toString();
          } else if (op != null) {
            stack.add(input);
            b = stackToNum();
            return b.toString();
          }
        }
      case '+' || '-' || 'X' || '/' || '%':
        {
          stack.clear();
          op = input;
          a = operation(op!);
          return (a ?? 0).toString();
        }
      case '=':
        {
          {
            stack.clear();
            a = operation(op ?? '=');
            return (a ?? 0).toString();
          }
        }
      case '+/-':
        {
          if (stack.contains('-')) {
            stack.removeAt(0);
          } else {
            stack.insert(0, '-');
          }
          if (op == null) {
            a = stackToNum();
            return a.toString();
          } else if (op != null) {
            b = stackToNum();
            return b.toString();
          }
        }
      default:
        {}
    }
    return '';
  }

  num stackToNum() {
    String n = '';
    for (var element in stack) {
      n += element;
    }
    return num.tryParse(n) ?? 0;
  }

  num operation(String op) {
    num res = 0;
    switch (op) {
      case '+':
        {
          res = (a ?? 0) + (b ?? 0);
        }
      case '-':
        {
          res = (a ?? 0) - (b ?? 0);
        }
      case 'X':
        {
          res = (a ?? 0) * (b ?? 1);
        }
      case '/':
        {
          res = (a ?? 0) / (b ?? 1);
        }
      case '%':
        {
          res = (a ?? 0) / 100;
        }
      default:
        {
          res = 0;
        }
    }
    return res;
  }
}
