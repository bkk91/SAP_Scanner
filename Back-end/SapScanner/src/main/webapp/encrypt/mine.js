
function encodingAll(cardNumber, year, month, cvs, key){
    const cardArr = cardNumber.toString().split("-");
    const keyArr = key.toString().split("");
    let resultSet = ["0", "0", "0", "0"];
    var result = "";
    for(var i in cardArr){
        const eachNumber = cardArr[i].toString().split("");
        for(var j in eachNumber){
            resultSet[i] += eachNumber[j] + keyArr[j];
        }
        result = resultSet[0];
        result += year + resultSet[1];
        result += month + resultSet[2];
        result += cvs + resultSet[3];
    }
    console.log(result);
    return result;
}

