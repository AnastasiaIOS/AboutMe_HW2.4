//
//  ModelPerson.swift
//  LogInOut_HW2.3
//
//  Created by Anastasia on 03.03.2022.
//

struct appFriend {
    let user = "user"
    let password = "12345"
    let person: Person
}

struct Person {
    let name = "Анастасия"
    let defenition = "Привет! Давай знакомиться! Мои основные увлечения - чтение книг, музыка, горные лыжи. Сейчас осваиваю SWIFT, кажется, теперь это мое 4-е увлечение"
    let contacts: Contacts
    let hobby = "Вяжу тапочки котикам"
}

struct Contacts {
    let phone = "2-25-25-25"
    let email = "sendMe@mail.ru"
}
