//
//  bike.swift
//  This class is a blueprint for a bike that extends a vehicle
//
//  Created by Matthew Lourenco on 05/04/18.
//  Copyright © 2018 MTHS. All rights reserved.
//

public class Bike: Vehicle {
	
	var _cadence: Int = 0
	var _gear: Int = 1
	var _maxGear: Int = 6
	
	public init(colour: Colours) throws {
		// Default constructor
		try super.init(licensePlate: "AAAA111", colour: colour)
		_numberOfDoors = 0
		_numberOfWheels = 2
		_numberOfTires = _numberOfWheels
		_maxSpeed = 50
		_licensePlate = ""
	}
	
	override func setLicensePlate(newPlate: String) { }
	
	func getCadence() -> Int { return _cadence } //Getter
	
	func setCadence(newCadence: Int) {
		//Setter
		_cadence = newCadence
		if (_cadence >= 0) {
			_speed = _cadence * _gear;
			if (_speed > _maxSpeed) {
				_speed = _maxSpeed;
			}
		} else {
			_speed = 0;
		}
	}
	
	func getGear() -> Int { return _gear } //Getter
	
	func setGear(newGear: Int) {
		if (newGear < 0) {
			_gear = 0
		} else if (newGear > _maxGear) {
			_gear = _maxGear
		} else {
			_gear = newGear
		}
		
		_speed = _cadence * _gear
		if (_speed > _maxSpeed) {
			_speed = _maxSpeed
		}
	}
	
	func getMaxGear() -> Int { return _maxGear } //Getter
	
	override func accelerate(amount: Int) { }
	
	override func brake(amount: Int) { }
	
	func brake() {
		//Allows the bike to stop
		_cadence = 0
		_speed = 0
	}
	
	func getStatus() -> String {
		//Returns the relevant fields of the class
		return "Colour: \(_colour)\nCadence: \(_cadence)\nGear: \(_gear)\nSpeed: \(_speed)km/h\n"
	}
}