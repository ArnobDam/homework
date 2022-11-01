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
    console.log('We shall ' + verb.toUpperCase() + ' the ' + adj.toLowerCase() + ' ' + noun.charAt(0).toUpperCase() + noun.slice(1) + '.')
    // return "pull";
}

// const sum = function (x, y) {
//     return x + y;
// }

function sum(x, y) {
    return x + y;
}

madLib("pout", 'WHOLE', 'night');
// console.log(sum(2, 3) + 6);
