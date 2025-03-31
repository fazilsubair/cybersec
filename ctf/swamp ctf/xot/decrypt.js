const CryptoJS = require("crypto-js");

const key = "flagPart2_3";
const encrypted1 = "U2FsdGVkX1/oCOrv2BF34XQbx7f34cYJ8aA71tr8cl8=";
const encrypted2 = "U2FsdGVkX197aFEtB5VUIBcswkWs4GiFPal6425rsTU=";

const decrypted1 = CryptoJS.AES.decrypt(encrypted1, key).toString(CryptoJS.enc.Utf8);
const decrypted2 = CryptoJS.AES.decrypt(encrypted2, key).toString(CryptoJS.enc.Utf8);

console.log(`Decrypted 1: ${decrypted1}`);
console.log(`Decrypted 2: ${decrypted2}`);

