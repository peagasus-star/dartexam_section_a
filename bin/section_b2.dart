 import 'dart:io';

void main(){
  List numbers=[];
  List even=[];
  List odd=[];
  for (;;){
  stdout.write("enter a number ( 0 to stop) : ");
  int n=int.parse(stdin.readLineSync()!);
if(n==0){
break;
}
  numbers.add(n);

  }


for (int i=0;i<=numbers.length-1;i++){
  if(numbers[i]%2==0){
even.add(numbers[i]);
  }
  else{
odd.add(numbers[i]);
  }
}
for (int i=0;i<numbers.length-1;i++){

  if(numbers[0]<numbers[i+1]){
    numbers[0]=numbers[i+1];
  }
}
print(odd);
print(even);
print("greatest number : ${numbers[0]}");
  
}