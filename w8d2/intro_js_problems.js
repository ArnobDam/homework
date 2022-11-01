// Phase 1
// function mysteryScoping1() {
//     var x = 'out of block';
//     if (true) {
//       var x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
//   }

// mysteryScoping1();

//prints in block twice !!

//   function mysteryScoping2() {
//     const x = 'out of block';
//     if (true) {
//       const x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
//   }

// mysteryScoping2();

//prints in block, then out of block!!

//   function mysteryScoping3() {
//     const x = 'out of block';
//     if (true) {
//       var x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
//   }

// mysteryScoping3();
//throws error Identifier 'x' has already been declared

// function mysteryScoping4() {
//     let x = 'out of block';
//     if (true) {
//         let x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// mysteryScoping4();
//prints in block, then out of block (same as mysteryScoping4)!!!

// function mysteryScoping5() {
//     let x = 'out of block';
//     if (true) {
//         let x = 'in block';
//         console.log(x);
//     }
//     let x = 'out of block again';
//     console.log(x);
// }

// mysteryScoping5();
//throws error Identifier 'x' has already been declared (same error as mysteryScoping3)

// function madLib(verb, adj, noun) {
//     console.log('We shall ' + verb.toUpperCase() + ' the ' + adj.toLowerCase() + ' ' + noun.charAt(0).toUpperCase() + noun.slice(1) + '.')
// }

function madLib(verb, adj, noun) {
    console.log('We shall ' + verb.toUpperCase() + ' the ' + adj.toLowerCase() + ' ' + noun.charAt(0).toUpperCase() + noun.slice(1) + '.');
    // return "pull";
}

// const sum = function (x, y) {
//     return x + y;
// }

// function sum(x, y) {
//     return x + y;
// }

madLib("pout", 'WHOLE', 'night');
// console.log(sum(2, 3) + 6);

function isSubstring(searchString, subString) {
    if (searchString.includes(subString)) {
        return true
    } else {
        return false
    }
}

console.log(isSubstring("carpool", "car")); //return true
console.log(isSubstring("carpool", "bar")); //returns false


//Phase 2


// function fizzBuzz(array) {
//     let arr = [];
//     for (let i = 0; i < array.length; i++) {
//         if (array[i] % 3 === 0) {
//             if (array[i] % 5 !== 0) {
//                 arr.push(array[i]);
//             }
//         } else {
//             if (array[i] % 5 === 0) {
//                 if (array[i] % 3 !== 0) {
//                     arr.push(array[i]);
//                 }
//             }
//         }
//     }
//     console.log(arr);
// }

function fizzBuzz(array) {
    let arr = [];

    array.forEach(element => {
        if ((element % 3 == 0 && element % 5 != 0) || (element % 5 == 0 && element % 3 != 0)) {
            arr.push(element)
        }
    });

    console.log(arr);
}

let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]

fizzBuzz(array);

function isPrime(num) {

    if (num == 1) {
        return true;
    }

    for (let i = 2; i < num; i++) {
        if (num % i == 0) {
            return false;
        }
    }

    return true;
}

// console.log(isPrime(2))
// console.log(isPrime(3))
// console.log(isPrime(4))
// console.log(isPrime(10))
// console.log(isPrime(15485863))
console.log(isPrime(3548563))

function sumOfNPrimes(n) {
    let count = 0;
    let i = 2;

    let sum = 0
    while (count < n) {
        if (isPrime(i)) {
            sum += i;
            count++;
        }
        i++;
    }
    console.log(sum)
}

sumOfNPrimes(0);
sumOfNPrimes(1);
sumOfNPrimes(4);

