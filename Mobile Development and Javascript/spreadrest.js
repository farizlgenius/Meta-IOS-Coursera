/**
 * Join Array wih Spread Operator
 */

const fruit = ["apple", "pear", "plum"];
const berries = ["blueberry", "strawberry"];
const fruitsAndBerries = [...fruit, ...berries];

console.log(fruitsAndBerries);

/**
 *  Join Object with Spread Operator
 */
const flying = { wings: 2 };
const car = { wheels: 4 };
const flyingCar = { ...flying, ...car };
console.log(flyingCar);

/**
 *  Adding new member with Spread Operator
 */
let veggies = ["onion", "prasley"];
veggies = [...veggies, "carrot", "beetroot"];
console.log(veggies);

/**
 *  Convert String to array
 */
const greet = "Hello";
const arrayOfChar = [...greet];
console.log(arrayOfChar);

const meal = ["soup", "steak", "ice cream"];
let [starter] = meal;
console.log(starter);
