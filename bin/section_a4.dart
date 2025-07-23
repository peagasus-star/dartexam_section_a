//(4)
import 'dart:io';

void main(){
  bool div=false;
stdout.write("enter a number : ");
int n=int.parse(stdin.readLineSync()!);
if(n%4==0){
print("quad");
div=true;}

if (n%6==0){
  print("hex");
  div=true;}

if(n%4==0&&n%6==0){
  print("quadhex");
  div=true;}

  if(div==false){
    print(n);
  }

}
