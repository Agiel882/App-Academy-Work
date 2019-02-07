function madLib(verb, adjective, noun) {  
    return `We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}`
}

console.log(madLib('make', 'best', 'guac'))

function isSubstring(searchString, subString){
    return searchString.includes(subString)
}

console.log(isSubstring("time to program", "time"))
console.log(isSubstring("Jump for joy", "joys"))


function fizzbuzz(array){
    ret = [];
    for(i=0;i < array.length;i++){
        match = 0;
        if(array[i] % 3 === 0){
            match++;
        }
        if(array[i] % 5 === 0){
            match++;
        }
        if(match === 1){
            ret.push(array[i]);
        }
    }
    return ret;
}
//WHYYYY

console.log(fizzbuzz([3, 5, 15]));

function isPrime(n){
    for(i=2;i<Math.floor(Math.sqrt(n)) + 1;i++){
        if(n % i === 0){
            return false;
        }
    }   
    return true;
}

function sumOfNPrimes(n){
    sum = 0;
    j = 0;
    i = 2;
    while(j < n){
        if(isPrime(i)){
            sum += i;
            j++;
        }
        i++;
    }
    return sum;
}

console.log(sumOfNPrimes(0));

function titleize(names){
    names.eachItem(name =>{
        name.charAt(0).toUpperCase();
    });
    return names;
}

console.log(titleize());