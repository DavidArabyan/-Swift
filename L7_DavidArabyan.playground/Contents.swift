import UIKit

var str = "Hello, playground"

// 1. Придумать класс, методы которого могут завершаться неудачей и возвращать либо значение, либо ошибку Error?. Реализовать их вызов и обработать результат метода при помощи конструкции if let, или guard let

//2. Придумать класс, методы которого могут выбрасывать ошибки. Реализуйте несколько throws-функций. Вызовите их и обработайте результат вызова при помощи конструкции try/catch.

enum CarError : Error {
    case passengersInDanger
    case insufficientGasoline
    case passengerIsNotWearing
    case unknownError
    case speedImprovemet ( needed : Int )
}

class Car {
    var takenSeats : Int
    var petrolTankCapacity : Int
    
    
    init( takenSeats : Int, petrolTankCapacity : Int ) {
        self.takenSeats = takenSeats
        self.petrolTankCapacity = petrolTankCapacity
    }
    
    func startEngine ( passenger : Int, gasVolume : Int, sealBeltOn : Int) throws {
        sealBeltOn <= self.takenSeats
        if gasVolume > self.petrolTankCapacity {
            throw CarError.unknownError
        } else if gasVolume <= 10 {
            throw CarError.insufficientGasoline
        } else if passenger > self.takenSeats {
            throw CarError.passengersInDanger
        } else if passenger != sealBeltOn {
            throw CarError.passengerIsNotWearing
        }
        print ( " Поверните ключ зажигания " )
    }
    
    
}

var hoda = Car (takenSeats: 5, petrolTankCapacity: 50)
try? hoda.startEngine(passenger: 3, gasVolume: 14, sealBeltOn: 2)


var mazda = Car (takenSeats: 4, petrolTankCapacity: 40)
try? mazda.startEngine(passenger: 4, gasVolume: 15, sealBeltOn: 4)



do {
    try hoda.startEngine(passenger: 3, gasVolume: 5, sealBeltOn: 2)
} catch CarError.insufficientGasoline {
    print ( "Бензина недостаточно для поездки")
} catch CarError.passengerIsNotWearing {
    print ( "Пассажиры обязаны пристегнуться" )
} catch CarError.passengersInDanger {
    print ( "Вместимость салона нарушена" )
} catch CarError.unknownError {
    print ( "Бензобак переполнен, опасность!" )
}


extension Car {
    func speedLimits ( speed : Int ) throws {
        if speed >= 60 {
            throw CarError.speedImprovemet ( needed : 60)
        }
        print( "скоростной режим в норме" )
    }
}

do {
    try hoda.speedLimits(speed: 90)
} catch CarError.speedImprovemet(needed: 60) {
    print ( "Сбавьте скорость во избежание аварийной ситуации" )
}



