/*import 'package:dart_console/dart_console.dart' as dart_console;

void main(List<String> arguments) {
  print('Hello world: ${dart_console.calculate()}!');
}*/
/**
 * 변수와 함수 및 클래스를 사용하는 앱
 * 제작자 : 학생명
 */
void main() { // 콘솔 앱 실행 진입점
  int myAge; // 변수명은 카멜표기법(소문자로시작, 2번째 단어 시작은 대문자로)
  myAge = 30; // 변수 모양이 낙타등 처럼 보여서 낙타등 표기법 이라고도 한다.
  print(myAge); // print는 Dart에 내장된 출력 함수 이다.
  double myHeight = 181.8; // 소수점 사용
  String myName = '김일국'; // 문자열
  bool married = true; // 참, 거짓 논리값 사용
  num number; // 특징: 정수 및 부동소수점 타입 모두에 사용할 수 있습니다.
  number = 10;
  number = 10.2;
  // print(*제미나이를 사용해서 출력 문을 자동으로 생성할 수 있음).
  //*main 함수에서 사용된 변수 모두를 1개의 print 함수를 사용해 출력해줘
  print('나이: $myAge, 키: $myHeight, 이름: $myName, 결혼 여부: $married, 숫자: $number');
  // 앱에서 상수값으로 사용될 두 가지 타입 비교(상수값을 사용하면 메모리 사용이 절약된다.)
  const String name1 = '김일국'; // const값은 컴파일 시 값이 고정된 후 실행 된다.
  final String name2; // final값은 유동적 값으로 런타임(실행) 시 값이 고정된다.
  name2 = '김일국'; // 생성할 때 초기값을 지정하지 않고, 런타입 시 값을 지정한다.
  var var1 = 10; // 특징: 데이터 타입은 초기 값에 따라 고정된다.
  //var1 = '10'; //에러 남 ~can't be assigned to a variable of type
  dynamic var2 = 10; // 특징: 데이터 타입은 초기 값과 상관없이 가변적 이다.
  var2 = '10';
  print('이름1: $name1, 이름2: $name2, var변수: $var1, dynamic변수: $var2');
  // List (인덱스가 있는 배열) 및 Map (키:값 쌍)
  // List 타입 변수 생성 (Create)
  List<String> myList; // <String>과 같이 제네릭 타입 변수를 선언한다.
  // 제네릭은 다른 데이터 타입이 저장되는 것을 방지하기 위해 사용된다.
  myList = ['김일국', '김이국', '김삼국'];
  print(myList);
  myList.add('김사국');
  print(myList);
  // List 타입 변수 값 추출 (Read) - 인덱스 번호 사용
  print(myList[1]);
  // List 타입 변수 값 수정 (Update) - 인덱스 번호 사용
  myList[1] = '김이국수정';
  print(myList);
  // List 타입 변수 값 삭제 (Delete) - 인덱스 번호 사용
  myList.remove('김이국수정');
  print(myList);
  myList.removeAt(0);
  print(myList);
  // List 타입 변수의 요소 개수 (아래)
  print(myList.length);
  // Map 타입 변수 값 생성 (Create)
  List<Map<String, dynamic>>
  myJsonList; // <String, dynamic>과 같이 제네릭 타입 변수를 선언합니다.
  // 제네릭은 다른 데이터 타입을 저장하는 것을 방지하기 위해 사용됩니다.
  myJsonList = [
    {'id': 'kim0', 'name': '김영국', 'age': 0},
    {'id': 'kim1', 'name': '김일국', 'age': 10},
    {'id': 'kim2', 'name': '김이국', 'age': 20, 'etc': '기타'},
  ];
  print(myJsonList);
  myJsonList.add({'id': 'kim3', 'name': '김삼국', 'age': 30});
  myJsonList[0].addAll({'etc': '기타'}); // 맵에 키:값 추가
  print(myJsonList);
  // Map 타입 변수 값 추출 (Read) - 키 사용 - 반복문을 배우면 인덱스 없이 특정 영역을 추출하는 방법을 배우게 됩니다.
  print("${myJsonList[2]['id']}, ${myJsonList[2].keys}, ${myJsonList[2].values},${myJsonList[2].entries}");
  // toList() 함수를 사용하여 키를 List 배열 타입으로 추출 (아래)
  var myJsonKeys = myJsonList[2].keys;
  List<String> myJsonKeysList = myJsonKeys.toList();
  print(myJsonList[2].keys.runtimeType); // MapIterable 타입
  print(myJsonKeysList.runtimeType); // List<String> 타입
  print(myJsonKeysList);
  // Map 타입 변수 값 수정 (Update) - 키 사용
  myJsonList[2]['etc'] = 1;
  print(myJsonList[2]);
  // Map 타입 키:값 삭제 (Delete) - 키 사용
  print(myJsonList[2].containsKey('etc'));
  myJsonList[2].remove('etc');
  print(myJsonList);
  // Map에 특정 키/값이 포함되어 있는지 확인
  print(myJsonList[2].containsKey('etc'));
  print(myJsonList[2].containsValue('김이국'));
  myJsonList.removeAt(3);
  print(myJsonList);
}