import 'binarySearch.dart';

void main() {
  List<int> arr = [10, 20, 30, 40, 50, 60];
  int low = 0;
  int high = arr.length - 1;
  int key = 50;
  int flag = 0;
  Search obj = new Search();
  obj.binarySearch(arr, key, low, high, flag);
}
