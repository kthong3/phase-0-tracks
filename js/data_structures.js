var horse_colors = ['blue', 'red', 'orange', 'green']
var names = ['George', 'Adam', 'Thomas', 'Henry']

horse_colors.push('pink');
console.log(horse_colors);

names.push('Gemma');
console.log(names);

var horses = []
for (var i = 0; i < names.length; i++) {
  horse = {}
  horse[names[i]] = horse_colors[i];
  
  horses.push(horse);
}

console.log(horses);

function Car(make, model, age) {
  this.make = make;
  this.model = model;
  this.age = age;
  this.turn_on = function() {console.log("vroom vroom!");};
  console.log("CAR INITIALIZATION COMPLETE");
}

console.log("Let's build a car..");
var new_car = new Car("Honda", "Civic", 1);
console.log(new_car);
console.log("Our car can turn on!");
new_car.turn_on();
console.log("----");

console.log("Let's build a car..");
var another_new_car = new Car("BMW", "325i", 20);
console.log(another_new_car);
console.log("Our car can turn on!");
another_new_car.turn_on();
console.log("----");

console.log("Let's build a car..");
var last_new_car = new Car("Toyota", "Camary", 10);
console.log(last_new_car);
console.log("Our car can turn on!");
last_new_car.turn_on();