class MethodCascade {
  var b;

  void bsetter(b) {
    this.b = b;
  }

  void printb() {
    print(this.b);
  }
}

void main() {
  var mc = MethodCascade();

  mc
    ..bsetter(10)
    ..printb();
}
