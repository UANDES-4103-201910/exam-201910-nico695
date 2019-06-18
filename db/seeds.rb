# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#user1 = User.create(fname: "Prubea", lname: "exam", email:"exam12@miuandes.cl")
#user2 = User.create(fname: "Nicolas", lname: "Grigoriew", email:"nmgrigoriewdensol@miuandes.cl")
#user3 = User.create(fname: "Martin", lname: "Sanchez", email:"ex1@miuandes.cl")
#user4 = User.create(fname: "Josefina", lname: "Concha", email:"ex2@miuandes.cl")
#user5 = User.create(fname: "Mauricio", lname: "Valenzuela", email:"ex3@miuandes.cl")

p1 = Product.create(pmethod:"pre-pay",brand: "Mattel", model:"110", variant: "black", price: 25000, sdescription: "Amazing product to have at home", ldescription: "Security, you have to be carefull round this product following it will explain to you how to implement it", sc: true )
p2 = Product.create(pmethod:"subscription",brand: "Fabercastle", model:"321", variant: "black", price: 25000, sdescription: "Amazing product to have at home", ldescription: "Security, you have to be carefull round this product following it will explain to you how to implement it", sc: true )
p3 = Product.create(pmethod:"subscription",brand: "Hotwheels", model:"256", variant: "black", price: 25000, sdescription: "Amazing product to have at home", ldescription: "Security, you have to be carefull round this product following it will explain to you how to implement it", sc: false )
p4 = Product.create(pmethod:"pre-pay",brand: "Mattel", model:"112", variant: "red", price: 20000, sdescription: "Amazing product to have at home", ldescription: "Security, you have to be carefull round this product following it will explain to you how to implement it", sc: false )

a1 = Address.create(phone:123456789 , adressl1: "monseñor 2134", adressl2: "av la plaza 3121", city: "Santiago", country: "Chile", zip:7596)
a2 = Address.create(phone:123456777 , adressl1: "los leones 512", adressl2: "nueva providencia 213", city: "Santiago", country: "Chile", zip:34567)
a3 = Address.create(phone:123456666 , adressl1: "los cactus 17197", adressl2: "albert leblanc 765", city: "Santiago", country: "Chile", zip:1231)

user1 = Model.create(email:"exam12@miuandes.cl", password:"1234")
user2 = Model.create(email:"nmgrigoriewdensol@miuandes.cl",password:"1234")
user3 = Model.create(email:"ex1@miuandes.cl",password:"1234")
user4 = Model.create(email:"ex2@miuandes.cl",password:"1234")
user5 = Model.create(email:"ex3@miuandes.cl",password:"1234")



o1 = Order.create(user_id: user1.id, product_id: p1.id , billing: 25000 , address_id: a1.id , saddress: "Chileexpresss 11111")

o2 = Order.create(user_id: user2.id, product_id: p2.id , billing: 25000 , address_id: a2.id , saddress: "Chileexpresss 11111")

o3 = Order.create(user_id: user4.id, product_id: p4.id , billing: 20000 , address_id: a3.id , saddress: "Chileexpresss 11111")
