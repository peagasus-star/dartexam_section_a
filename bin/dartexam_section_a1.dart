//section A (1)


void main(){
  Map student={"course":"dart basics","duration":30,"isfree":true};
  for(var key in student.keys){
    print("key : $key  , value : ${student[key]} ");
  }
}
