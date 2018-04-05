//
//  vehicle.swift
//  This class is a blueprint for a vehicle
//
//  Created by Matthew Lourenco on 05/04/18.
//  Copyright © 2018 MTHS. All rights reserved.
//

public class Vehicle {
	
	private enum MyError : Error {
    	case InvalidLicensePlateException(String)
	}
	
	public enum Colours {
		case WHITE
		case GREY
		case BLACK
		case RED
		case ORANGE
		case YELLOW
		case GREEN
		case BLUE
		case PURPLE
	}
	
	var _licensePlate: String
	var _colour: Colours
	var _numberOfDoors: Int = 4
	var _numberOfWheels: Int = 4
	var _numberOfTires: Int = 4
	var _speed: Int = 0    		// km/h
	var _maxSpeed: Int = 200	// km/h
	
	public init(licensePlate: String, colour: Colours) throws {
		//Default Constructor for vehicle class
		if licensePlate.count == 7 {
			_licensePlate = licensePlate
		} else {
			throw MyError.InvalidLicensePlateException("License is invalid length")
		}
		_colour = colour;
	}
	
	func getLicensePlate() -> String { return _licensePlate } //Getter
	
	func setLicensePlate(newPlate: String) throws {
		//Setter
		if newPlate.count == 7 {
			_licensePlate = newPlate
		} else {
			throw MyError.InvalidLicensePlateException("License is invalid length")
		}
	}
	
	func getColour() -> Colours { return _colour } //Getter
	
	func setColour(newColour: Colours) {
		//Setter
		_colour = newColour
	}
	
	func getNumberOfDoors() -> Int { return _numberOfDoors } //Getter
	
	func getNumberOfWheels() -> Int { return _numberOfWheels } //Getter

	func getNumberOfTires() -> Int { return _numberOfTires } //Getter
	
	func getSpeed() -> Int { return _speed } //Getter
	
	func getMaxSpeed() -> Int { return _maxSpeed } //Getter
	
	func accelerate(amount: Int) {
		//Allows the vehicle to accelerate an amount
		_speed += amount
		if(_speed > _maxSpeed) {
			_speed = _maxSpeed
		}
	}
	
	func brake(amount: Int) {
		//Allows the vehicle to brake an amount
		_speed -= amount
		if(_speed < 0) {
			_speed = 0
		}
	}
	
	func getValues() -> String{
		//Returns the fields of the class
		return "License plate: \(_licensePlate)\nColour: \(_colour)\nNumber of doors: \(_numberOfDoors)\nNumber of wheels: \(_numberOfWheels)\nNumber of tires: \(_numberOfTires)\nSpeed: \(_speed)km/h\nMaximum speed: \(_maxSpeed)km/h";
	}
}