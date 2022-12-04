import 'package:insertion/insertion.dart' as insertion;

void main(List<String> arguments) {

  List l1=[10,12,55,1,3];
  insertionSort(l1);
  printArr(l1);

}

void insertionSort(List arr)
{
int i,key,j;
for (i = 1; i < arr.length; i++)
{
key = arr[i];
j = i - 1;

while (j >= 0 && arr[j] > key)
{
arr[j + 1] = arr[j];
j = j - 1;
}
arr[j + 1] = key;
}
}

void printArr(List arr){
  for(int i=0;i<arr.length;i++){
    print(arr[i]);
  }
}