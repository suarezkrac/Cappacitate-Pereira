//
//  main.swift
//  RegistroAsistentes
//
//  Created by Developer Cymetria on 18/04/15.
//  Copyright (c) 2015 Mintic. All rights reserved.
//

import Foundation

func input()->String{
    let keyboard = NSFileHandle.fileHandleWithStandardInput()
    let inputData = keyboard.availableData
    let rawString = NSString(data: inputData, encoding: NSUTF8StringEncoding)
    if let string = rawString{
        return string.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
    }
    else{
        return "Texto Invalido"
    }
}

var response:String
var personas:[Person] = []

do{
    var newPerson = Person()
    newPerson.enterInfo()
    personas.append(newPerson)
    println("Desea ingresar otra persona?? (y/n)")
    response = input()
}while (response=="y")

for user in personas{
    user.printInfo()
}

