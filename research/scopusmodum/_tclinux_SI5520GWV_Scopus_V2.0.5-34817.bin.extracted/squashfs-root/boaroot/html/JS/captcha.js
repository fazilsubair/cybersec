var code; 
function createCode() { 
    code = ""; 
    var codeLength = 5; //验证码的长度 
    var checkCode = document.getElementById("checkCode"); 
    //digits and alphabets except '0','1','O','I','l'
    var codeChars = new Array(2, 3, 4, 5, 6, 7, 8, 9, 
        'a','b','c','d','e','f','g','h','i','j','k','m','n', 'o', 'p','q','r','s','t','u','v','w','x','y','z',
        'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');

    for(var i = 0; i < codeLength; i++) {
        var charNum = Math.floor(Math.random() * 55);
        code += codeChars[charNum];
    }

    if(checkCode) {
//        checkCode.className = "code";
        checkCode.innerHTML = code;
    }
}

function validateCode() 
{
    var inputCode=document.getElementById("inputCode").value;
    if(inputCode.length <= 0) {
        alert("ValidateCode should not be empty!");
				return -1;
    }
    else if(inputCode.toUpperCase() != code.toUpperCase()) {
        alert("ValidateCode is invalid!");
				return -1;
    }
    else {
        /*alert("Succeccfully check ValidateCode!");*/
				return 0;
    }    
}  
