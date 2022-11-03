function titleize(array, callback) {
    newArray = array.map((word) => {
        return word[0].toUpperCase() + word.slice(1).toLowerCase();
    })
    newArray.forEach((ele) => { callback(ele) })
}

titleize(["arnob", "jusTin", "justin"], function (ele) { console.log(`${ele} rocks!`) })

function anagrams(str1, str2) {
    let lettersHash = {};

    for (let i = 0; i < str1.length; i++) {
        if (!lettersHash[str1[i]]) {
            lettersHash[str1[i]] = 1;
        } else {
            lettersHash[str1[i]]++;
        }
    }

    for (let i = 0; i < str2.length; i++) {
        if (!lettersHash[str2[i]]) {
            return false;
        } else {
            lettersHash[str2[i]]--;
        }
    }

    for (let key in lettersHash) {
        if (lettersHash[key] !== 0) {
            return false;
        }
    }
    return true;
}

console.log(anagrams("bob", "obb"));
console.log(anagrams("bob", "orb"));


