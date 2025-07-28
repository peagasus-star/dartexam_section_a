import 'dart:io';

void main() {
  int n=5;
  for(int i=1;i<2*n;i++){
  for(int j=1;j<2*n;j++){
    if(i>=j&&j<=2*n-1-i+1){
    stdout.write(" *");
    }
    else {
      stdout.write("  ");
      }
  }
    print("");
    
  }
  }
 

  
