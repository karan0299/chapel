class GenericClass {
  var f:integral;
  proc init(arg:integral) {
    this.f = arg;
  }
}


proc test() {
  var x = new borrowed GenericClass(1);
  var y:GenericClass = new borrowed GenericClass(2);
  var z:GenericClass(int) = new borrowed GenericClass(2);

  writeln(x.type:string, " ", x);
  writeln(y.type:string, " ", y);
}

test();
