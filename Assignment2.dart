//import dart:html;
import 'package:intl/intl.dart';
//import 'package:basic_utils/basic_utils.dart';
//import 'string_apis.dart';

final cur = new NumberFormat("#,##0.00", "en_IN");

extension CapExtension on String {
  String get titleCase => this
      .split(' ')
      .map((word) => word[0].toUpperCase() + word.substring(1))
      .join(' ');
}

class emp {
  double sal;
  int id;
  String ename;
  double tax, g;

  double da(sal) {
    double c = (10 * sal) / 100;
    return c;
  }

  double hra(sal) {
    double h = (30 * sal) / 100;
    return h;
  }

  double ta(sal) {
    double t = (20 * sal) / 100;
    return t;
  }

  double bon(sal) {
    double b = (10 * sal) / 100;
    return b;
  }

  double pf(sal) {
    double p = (5 * sal) / 100;
    return p;
  }

  double five(sal) {
    double f = (5 * sal) / 100;
    return f;
  }

  double gr(sal) {
    g = bon(sal) + da(sal) + hra(sal) + sal + pf(sal) + ta(sal) - five(sal);
    return g;
  }

  double netsal(sal) {
    double net = g - tax;
    return net;
  }

  void nameprint(String ename, double sal, int eid) {
    var recase = RegExp(r'\b\w');
    String str = ename.titleCase;
    str.replaceAllMapped(recase, (match) => match.group(0).toUpperCase());

    print("Name : $str  Sal is ${cur.format(sal)} Employee id is $eid");
  }

  double tax_cal(sal) {
    if (sal > 1000000) {
      return tax = (sal * 30) / 100;
    } else if (sal >= 700000 && sal <= 1000000) {
      return tax = (sal * 20) / 100;
    } else {
      return tax = (sal * 10) / 100;
    }
  }
}

void main() {
  double da_calc, hra_calc, ta_calc, bon_calc, pf_calc, gross_calc;
  emp e1 = emp();
  e1.id = 19;
  e1.sal = 1000000;
  e1.ename = "karan thakur";
  e1.nameprint(e1.ename, e1.sal, e1.id);
  da_calc = e1.da(e1.sal);
  print("Da is ${cur.format(da_calc)}");
  hra_calc = e1.hra(e1.sal);
  print("HRA is ${cur.format(hra_calc)}");
  ta_calc = e1.ta(e1.sal);
  print("Transport Allowance is ${cur.format(ta_calc)}");
  bon_calc = e1.bon(e1.sal);
  print("Bonus is ${cur.format(bon_calc)}");
  pf_calc = e1.pf(e1.sal);
  print("Pf is ${cur.format(pf_calc)}");
  gross_calc = e1.gr(e1.sal);
  print("Gross salary is ${cur.format(gross_calc)}");
}
