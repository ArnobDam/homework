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

function bSearch(arr, target) {

    if (arr.length < 1) return null;

    let midpoint = Math.floor(arr.length / 2);
    let leftArr = arr.slice(0, midpoint);
    let rightArr = arr.slice(midpoint + 1);
    if (arr[midpoint] === target) {
        return midpoint;
    } else if (target < arr[midpoint]) {
        return bSearch(leftArr, target);
    } else {
        result = bSearch(rightArr, target)

        if (result === null) return null;

        return result += 1 + leftArr.length
    }
}

array = [1, 3, 5, 6, 7, 9, 13]
console.log(bSearch(array, 13))
