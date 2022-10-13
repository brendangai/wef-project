// const numbers = [
//     'A', 'B', 'C', 'D', 'E',
//     'F', 'G', 'H', 'I', 'J',
//     'K', 'L', 'M', 'N', 'O',
//     'P', 'Q', 'R', 'S', 'T',
//     'U', 'V', 'W', 'X', 'Y',
//     'Z']

// const types = [
//     {
//         icon: 'fire'
//     }
// ]

var randomImage = new Array();

randomImage[0] = "./tarot_image/00_Fool.jpeg";
randomImage[1] = "./tarot_image/01_Magician.jpeg";
randomImage[2] = "./tarot_image/02_High_Priestess.jpeg";
randomImage[3] = "./tarot_image/03_Empress.jpeg";
randomImage[4] = "./tarot_image/04_Emperor.jpeg";
randomImage[5] = "./tarot_image/05_Hierophant.jpeg";
randomImage[6] = "./tarot_image/06_Lovers.jpeg";
randomImage[7] = "./tarot_image/07_Chariot.jpeg";
randomImage[8] = "./tarot_image/08_Strength.jpeg";
randomImage[9] = "./tarot_image/09_Hermit.jpeg";
randomImage[10] = "./tarot_image/10_Wheel_of_Fortune.jpeg";
randomImage[11] = "./tarot_image/11_Justice.jpeg";
randomImage[12] = "./tarot_image/12_Hanged_Man.jpeg";
randomImage[13] = "./tarot_image/13_Death.jpeg";
randomImage[14] = "./tarot_image/14_Temperance.jpeg";
randomImage[15] = "./tarot_image/15_Devil.jpeg";
randomImage[16] = "./tarot_image/16_Tower.jpeg";
randomImage[17] = "./tarot_image/17_Star.jpeg";
randomImage[18] = "./tarot_image/18_Moon.jpeg";
randomImage[19] = "./tarot_image/19_Sun.jpeg";
randomImage[20] = "./tarot_image/20_Judgement.jpeg";
randomImage[21] = "./tarot_image/21_Judgement.jpeg";


let shuffleElem1 = document.querySelector('.shuffle-section1')

shuffleElem1.addEventListener('click', (event) => {
    var number = Math.floor(Math.random() * randomImage.length);
    document.write('<img src="' + randomImage[number] + '" />  ');
})

let shuffleElem2 = document.querySelector('.shuffle-section2')

shuffleElem2.addEventListener('click', (event) => {
    var number = Math.floor(Math.random() * randomImage.length);
    document.write('<img src="' + randomImage[number] + '" />  ');
})

let shuffleElem3 = document.querySelector('.shuffle-section3')

shuffleElem3.addEventListener('click', (event) => {
    var number = Math.floor(Math.random() * randomImage.length);
    document.write('<img src="' + randomImage[number] + '" />  ');
})

