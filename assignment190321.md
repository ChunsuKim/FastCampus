[ 과제 ]

# Assignment 1

![이미지](https://user-images.githubusercontent.com/47494240/54746935-d4822f00-4c10-11e9-93b2-4f0a7603312e.png)

이미지처럼 Animal, Human, Pet, Dog, Cat 클래스 정의
상속을 적용해 필요한 속성을 모두 가지면서도 각각 다른 속성과 값을 지닐 수 있도록 구현

```swift
print("======show me the Animal======")
class Animal {
    var brain = true
    var legs = 0
    
    init (brain: Bool, legs: Int) {
        self.brain = brain
        self.legs = legs
    }
    
}

var animal = Animal(brain: true, legs: 0)
print("Animal의 다리 개수는 \(animal.legs)개 입니다.")
print("Animal은 뇌가 있습니까? \(animal.brain)")


print("======show me the Human======")
class Human : Animal {
    
    override init (brain: Bool, legs: Int) {
        super.init(brain: brain, legs: legs)
        
    }
}

var human = Human(brain: true, legs: 2)
print("Human의 다리 개수는 \(human.legs)개 입니다.")
print("Human은 뇌가 있습니까? \(human.brain)")


print("======show me the Pet======")
class Pet : Animal {
    var fleas = 0
    
        init (brain: Bool, legs: Int, fleas: Int) {
        super.init(brain: brain, legs: legs)
        self.fleas = fleas
    }
}

var pet = Pet(brain: true, legs: 4, fleas: 0)
print("Pet의 다리 개수는 \(pet.legs)개 입니다.")
print("Pet의 벼룩 개수는 \(pet.fleas)개 입니다.")
print("Pet의 뇌가 있습니까? \(pet.brain)")

print("======show me the Dog======")
class Dog : Pet {
    
    override init (brain: Bool, legs: Int, fleas: Int) {
        super.init(brain: brain, legs: legs, fleas: fleas)
    }
}

var dog = Dog(brain: true, legs: 4, fleas: 8)
print("Dog의 다리 개수는 \(dog.legs)개 입니다.")
print("Dog의 벼룩 개수는 \(dog.fleas)개 입니다.")
print("Dog의 뇌가 있습니까? \(dog.brain)")

print("======show me the Cat======")
class Cat : Pet {
    
    override init(brain: Bool, legs: Int, fleas: Int) {
        super.init(brain: brain, legs: legs, fleas: fleas)
    }
}

var cat = Cat(brain: true, legs: 4, fleas: 4)
print("Cat의 다리 개수는 \(cat.legs)개 입니다.")
print("Cat의 벼룩 개수는 \(cat.legs)개 입니다.")
print("Cat의 뇌가 있습니까? \(cat.brain)")
```

# Assignment 2

첨부된 각 도형의 이미지를 참고하여 각 도형별 클래스를 만들고 각각의 넓이, 둘레, 부피를 구하는 프로퍼티와 메서드 구현하기 (클래스 구현 연습)

![그림](https://user-images.githubusercontent.com/48010847/54744863-6a1ac000-4c0b-11e9-98d8-88750ad4bf92.png)

```swift
print("========show me the Square=========")

class Square {
    var width : Double
    var height : Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    func squareArea() -> Double {
        return width * height
    }
    func squareVolume() -> Double {
        return width * 4
    }
}

var square = Square(width: 7.0, height: 7.0)
print("정사각형의 넓이는 = \(square.squareArea())")
print("정사각형의 둘레는 = \(square.squareVolume())")


print("========show me the Rectangle=========")

class Retangle : Square {
    
    func rectangleVolume() -> Double {
        return (width + height) * 2
    }
}

var retangle = Retangle(width: 8.0, height: 4.0)
print("직사각형의 넓이는 = \(retangle.squareArea())")
print("직사각형의 둘레는 = \(retangle.rectangleVolume())")
```
