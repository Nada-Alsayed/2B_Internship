//
//  Model.swift
//  task_01
//
//  Created by MAC on 24/10/2023.
//

import Foundation

struct Place{
    let name: String
    let image :String
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}


var places:[Place] = [
    Place(name: "A cupcake is a small, single-serving cake that's typically baked in a cup-shaped container, often made of paper or aluminum. Cupcakes are a popular dessert or snack and come in a wide variety of flavors, fillings, and toppings.", image: "5")
    ,Place(name: "Chocolate is a beloved and widely consumed treat made from cacao beans, which are the dried and fully fermented seeds of Theobroma cacao, a small evergreen tree native to the deep tropical regions of Central and South America. Chocolate has been enjoyed for centuries and is renowned for its rich, indulgent taste.", image: "2")
    ,Place(name: "Cake is a delectable and widely cherished dessert that comes in various flavors, shapes, and sizes. It is a symbol of celebration, whether it's for birthdays, weddings, anniversaries, or simply to satisfy a sweet craving. ", image: "3")
    ,Place(name: "Donuts, also spelled as \"doughnuts,\" are a popular and beloved treat that is typically deep-fried and known for their sweet and slightly crispy exterior and soft, fluffy interior. They come in various shapes, sizes, and flavors and are often enjoyed as a dessert or breakfast item.", image: "1")]
