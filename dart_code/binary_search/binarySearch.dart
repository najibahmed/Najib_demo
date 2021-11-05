class Search {
  binarySearch(List<int> arr, key, low, high, flag) {
    int mid;
    while (low < high) {
      mid = ((low + high) / 2).floor();
      print("min=$low,mid=$mid,max=$high");
      if (key == arr[mid]) {
        return print("key is found at: $mid");
        // flag = 1;
        // break;
      } else if (key < arr[mid]) {
        high = mid - 1;
      } else {
        low = mid + 1;
      }
    }
    // if (flag == 1) {
    //   return print("key is found at${mid}");
    // } else {
    //   return print("key is not found");
    // }
  }
}
