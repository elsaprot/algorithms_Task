import 'package:merge_sort/merge_sort.dart' as merge_sort;

void main(List<String> arguments) {
  List l1=[55,6,1,65,4,2];
  sort(l1, 0, l1.length-1);
  print(l1);
}

void merge(List arr, int l, int m, int r) {
  int n1 = m - l + 1;
  int n2 = r - m;

  List? L =List.filled(n1, null, growable: false);
  List R = List.filled(n2, null, growable: false);;

  for (int i = 0; i < n1; ++i) {
    L[i] = arr[l + i];
  }
  for (int j = 0; j < n2; ++j) {
    R[j] = arr[m + 1 + j];
  }

  int i = 0, j = 0;
  int k = l;
  while (i < n1 && j < n2) {
    if (L[i] <= R[j]) {
      arr[k] = L[i];
      i++;
    } else {
      arr[k] = R[j];
      j++;
    }
    k++;
  }

  while (i < n1) {
    arr[k] = L[i];
    i++;
    k++;
  }

  while (j < n2) {
    arr[k] = R[j];
    j++;
    k++;
  }
}

void sort(List arr, int l, int r) {
  if (l < r) {
    int m = (l + (r - l) / 2).toInt();

    sort(arr, l, m);
    sort(arr, m + 1, r);
    merge(arr, l, m, r);
  }
}
