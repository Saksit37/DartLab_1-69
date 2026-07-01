// String say(String from, String mag, [String? device]) {
//   var result = '$from says $mag';
//   if (device != null) {
//     result = '$result with a $device';
// }
//   return result;
// }

// void main() {
//   print(say('Bob', 'Howdy'));
//   print(say('Bob', 'Howdy', 'smoke signal'));
// }

//--------------------------------------------------------------------

String say(String from, String msg, [String? device]) =>
    '$from says $msg${device != null ? ' with a $device' : ''}';

void main() {
  print(say('Bob', 'Howdy'));
  print(say('Alice', 'Hi!', 'smartphone'));
}