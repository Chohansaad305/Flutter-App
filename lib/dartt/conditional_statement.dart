void main() {
  var a = 500;
  var b = 50;

  if (a > 200 || b < 10) {
    // condition 1 is true
    // print('Block 1');
  } else{
    // condition 1 is false
    // print('Block Else');  
  }

  if (a > 200 && b > 100) {
    // condition 1 and condition are true
    // print('Block 1');
    // when both if are true
  } else if (a > 50) {
    // condition 2 is true
    // print('Block 2');
  } else if (a > 80) {
    // condition 3 is true
    // print('Block 3');
  } else if (a == 500) {
    // condition 3 is true
    // print('Block 4');
  } else {
    // all condition are true
    // print('Block Else');
  }
}
