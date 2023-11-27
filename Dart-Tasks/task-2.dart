void main(){
  List <int> numo = [1,2,3,4];
  print("The maximum number is: ${maxNum(numo)}");
  print("The minimum number is: ${minNum(numo)}");
  print("The overall sum is: ${sumNum(numo)}");
  print("The Average is: ${avgNum(numo)}");
}

int maxNum(List <int> n){ //calculates the maximum number
  int maxi = n[0];
  for(int i in n)
    if (i>maxi)
      maxi = i;
  return maxi;
}

int minNum(List <int> n){ //calculates the minimum number
  int mini = n[0];
  for(int i in n)
    if(i<mini)
      mini = i;
  return mini;
}

int sumNum(List <int> n){ // calculates the overall sum
  int sum = 0;
  for(int i in n)
    sum+=i;
  return sum;
}

double avgNum(List <int> n){ //calculates the average of the list
  return sumNum(n) / n.length;
}