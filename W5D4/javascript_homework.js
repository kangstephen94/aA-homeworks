//madLib

function madLib (verb, adj, noun) {
  verb1 = verb.toUpperCase();
  adj1 = adj.toUpperCase();
  noun1 = noun.toUpperCase();
  return `We shall ${verb1} the ${adj1} ${noun1}`;
}


// isSubstring

function isSubstring(phrase, subphrase) {
  return phrase.includes(subphrase);
}


// fizzBuzz

function fizzBuzz (array) {
  const fizzBuzzArr = [];

  array.forEach(el => {
    if ((el % 3 === 0) ^ (el % 5 === 0)) {
      fizzBuzzArr.push(el);
    }
  });

  return fizzBuzzArr;
}

// isPrime

function isPrime (n) {
  if (n < 2) { return false; }

  for (let i = 2; i < n; i++) {
    if (n % i === 0) {
      return false;
    }
  }

  return true;
}

// sumOfNPrimes

function sumOfNPrimes (n) {
  let sum = 0;
  let countPrimes = 0;
  let i = 2;

  while (countPrimes < n) {
    if (isPrime(i)) {
      sum += i;
      countPrimes++;
    }
    i++;
  }

  return sum;
}
