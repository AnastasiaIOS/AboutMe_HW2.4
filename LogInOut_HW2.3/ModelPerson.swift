//
//  ModelPerson.swift
//  LogInOut_HW2.3
//
//  Created by Anastasia on 03.03.2022.
//

struct AppFriend {
    let login: String
    let password: String
    let person: Person
    
    static func createApp() -> AppFriend {
        AppFriend(login: "user", password: "12345", person: Person.getPerson())
    }
}

struct Person {
    let name: String
    let defenition: String
    let contacts: Contacts
    let hobby: String
    
    static func getPerson() -> Person {
        Person(name: "Анастасия",
               defenition: "Привет! Давай знакомиться! Мои основные увлечения - чтение книг, музыка, горные лыжи. Сейчас осваиваю SWIFT, кажется, теперь это мое 4-е увлечение",
               contacts: Contacts.getContacts(),
               hobby: "Вяжу носочки котикам")
    }
}

struct Contacts {
    let phone: String
    let email: String
    
    static func getContacts() -> Contacts {
        Contacts(phone: "2-25-25-25",
                 email: "sendMe@mail.ru")
    }
}




