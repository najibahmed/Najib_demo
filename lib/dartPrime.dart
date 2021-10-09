void main() {
  int i = 43;
  checkPrime(i);
}

checkPrime(int n) {
  int flag = 0;
  for (int i = 2; i <= n / 2; ++i) {
    if (n % i == 0) {
      flag = 1;
      break;
    }
  }
  if (n == 1) {
    return print("$n Neither prime number or composite.");
  } else {
    if (flag == 0) {
      return print("$n is Prime number.");
    } else
      return print("$n is not prime Number.");
  }
}
