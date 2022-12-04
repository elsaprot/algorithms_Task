import 'package:kruskal/kruskal.dart' as kruskal;
import 'dart:io';

void main(List<String> arguments) {

  for (int i = 0; i < v!; i++)
  {
    for (int j = 0; j < v!; j++)
    {
      cost[i][j] = INT_MAX;
    }
  }
  for (int j = 0; j < e!; j++)
  {
    int m, n;
    // cin >> m >> n;
    // cin >> cost[m][n];
    m=int.parse(stdin.readLineSync()!);
    n=int.parse(stdin.readLineSync()!);
    cost[m][n]=int.parse(stdin.readLineSync()!);
    cost[n][m];
  }
  for (int i = 0; i < v!; i++)
    parent[i] = i;
  krus();
}

int? v, e;
List parent=List.filled(100, null, growable: false);
List cost= List.generate(1000, (index) => List.filled(1000,null),growable: false);

int find(int i) {
  while (parent[i] != i) {
    i = parent[i];
  }
  return i;
}

void union1(int i, int j) {
  int a = find(i);
  int b = find(j);
  parent[a] = b;
}

void krus() {
  int mincost = 0;
  int edge_count = 0;
  while (edge_count < v! - 1)
  {
    int min = 0, a = -1, b = -1;
    for (int i = 0; i < v!; i++)
    {
      for (int j = 0; j < v!; j++)
      {
        if (find(i) != find(j) && cost[i][j] < min)
        {
          min = cost[i][j];
          a = i;
          b = j;
        }
      }
    }
    union1(a, b);
    print('Edge  ${edge_count++} :( $a $b ) cost: $min');
    mincost += min;
  }
  print('Minimum cost= $mincost');
}