// (5)
 List s=[1,3,10,2,8];
 int l=s.length;
List a=[];
int findlargest(a){
for(int i=0;i<s.length-1;i++){
  if(a[i]>=a[i+1]){
    int t=a[i];
    a[i+1]=t;
  }

}
  return a[s.length-1];
}
void main(){
 
  int result=findlargest(s);
  print("largest number is : $result");
}