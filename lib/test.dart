// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Test {
  String hello;
  int check;
  bool test;
  Test({
    required this.hello,
    required this.check,
    required this.test,
  });

  Test copyWith({
    String? hello,
    int? check,
    bool? test,
  }) {
    return Test(
      hello: hello ?? this.hello,
      check: check ?? this.check,
      test: test ?? this.test,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hello': hello,
      'check': check,
      'test': test,
    };
  }

  factory Test.fromMap(Map<String, dynamic> map) {
    return Test(
      hello: map['hello'] as String,
      check: map['check'] as int,
      test: map['test'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Test.fromJson(String source) => Test.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Test(hello: $hello, check: $check, test: $test)';

  @override
  bool operator ==(covariant Test other) {
    if (identical(this, other)) return true;
  
    return 
      other.hello == hello &&
      other.check == check &&
      other.test == test;
  }

  @override
  int get hashCode => hello.hashCode ^ check.hashCode ^ test.hashCode;
}
