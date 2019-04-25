# High Order Function


### 고차함수란?

- 하나 이상의 함수를 인자로 취하는 함수

- 함수를 결과를 반환하는 함수

**Higher-order Function이 되기 위해서는 함수가 First Class Citizen이어야 한다.**



### First-Class Citizen

1급 객체 (First-class citizen)

- 변수나 데이터에 할당할 수 있어야 한다.

- 객체의 인자로 넘길 수 있어야 한다.

- 객체의 리턴값으로 리턴할 수 있어야 한다.


### Higher-order Functions in Swift

* forEach : 컬렉션의 각 요소(Element)에 동일 연산을 적용하며, 반환값이 없는 형태

* map : 컬렉션의 각 요소(Element)에 동일 연산을 적용하여, 변형된 새 컬렉션 반환

* filter : 컬렉션의 각 요소를 평가하여 조건을 만족하는 요소만을 새로운 컬렉션으로 반환

* reduce : 컬렉션의 각 요소들을 결합하여 단 하나의 타입을 지닌 값으로 반환 e.g. Int, String 타입

* flatMap : 중첩된 컬렉션을 하나의 컬렉션으로 병합

* compactMap : 컬렉션의 요소 중 옵셔널이 있을 경우 제거 (flatMap으로 사용하다가 Swift 4.1 에서 compactMap 으로 변경됨)
