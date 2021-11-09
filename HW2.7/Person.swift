//
//  Person.swift
//  HW2.7
//
//  Created by Никита Шинов on 09.11.2021.
//
struct Person {
    
    var firstName: String
    var lastName: String
    var phoneNumber : String
    var email: String
    var name: String {
        return "\(firstName) \(lastName)"
    }
    
    static func createContact () -> [Person] {
        
        var contacts: [Person] = []
        
        let shuffledNames = firstNames.shuffled()
        let shuffledSurnames = lastNames.shuffled()
        let shuffledPhoneNumbers = phoneNumbers.shuffled()
        let shuffledEmails = emails.shuffled()
        
        for counter in 0...9 {
            
            let person = Person(firstName: shuffledNames[counter],
                                lastName: shuffledSurnames[counter],
                                phoneNumber: shuffledPhoneNumbers[counter],
                                email: shuffledEmails[counter])
            
            contacts.append(person)
            
        }
        return contacts
    }
}
