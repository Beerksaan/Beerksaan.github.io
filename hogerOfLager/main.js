const scoreElement = document.querySelector(".start-score");
const diceRollElement = document.querySelector(".dice-roll");
const computerDiceRollElement = document.querySelector(".computer-dice-roll");
const livesElement = document.querySelector(".beginning-life");
const lagerButton = document.querySelector(".button1");
const hogerButton = document.querySelector(".button2");
const startGo = document.querySelector(".go");
const namePrompt2 = document.querySelector(".playerInputName");

// Variables
let score = 0;
let lives = 5;
let aiRoll; // Store AI's roll

// Function to roll the dice
function rollDice() {
    return Math.floor(Math.random() * 6) + 1;
}

// AI Guessing Logic
function AiGuess(guessedNum, playerRoll) {
    // Update the displayed values
    computerDiceRollElement.textContent = aiRoll; // Show AI's roll

    let correct = false;

    // Compare the AI's roll with the player's roll
    if (guessedNum === "hoger" && aiRoll < playerRoll) {
        correct = true;
    } else if (guessedNum === "lager" && aiRoll > playerRoll) {
        correct = true;
    }

    if (correct) {
        score++;
    } else {
        lives--; // Decrease lives on incorrect guess
    }

    // Update scores and lives display
    scoreElement.textContent = score;
    livesElement.textContent = lives;

    // Check if the game is over
    if (lives <= 0) {
        alert("Game Over! Your score was: " + score);
        resetGame();
        play();
    }
}

// Reset the game to initial state
function resetGame() {
    score = 0;
    lives = 5;
    scoreElement.textContent = score;
    livesElement.textContent = lives;
}

// Event listeners
hogerButton.style.display = "none";
lagerButton.style.display = "none";

startGo.addEventListener("click", function() {
    startGo.style.display = "none"; 
    lagerButton.style.display = "inline";
    hogerButton.style.display = "inline";
    
    // Only AI rolls on the first click
    aiRoll = rollDice(); // Store AI's roll
    computerDiceRollElement.textContent = aiRoll; // Show AI's roll
    diceRollElement.textContent = ""; // Hide player's roll

    play2(); // Play audio for AI roll
});

hogerButton.addEventListener('click', function() {
    const playerRoll = rollDice(); // Roll the player's dice
    diceRollElement.textContent = playerRoll; // Show player's roll

    AiGuess("hoger", playerRoll); // Call AI guessing logic with player's roll
    hideButtonsAndShowGo();
});

lagerButton.addEventListener('click', function() {
    const playerRoll = rollDice(); // Roll the player's dice
    diceRollElement.textContent = playerRoll; // Show player's roll
    

    AiGuess("lager", playerRoll); // Call AI guessing logic with player's roll
    hideButtonsAndShowGo();
});

// Function to hide buttons and show "Go" button
function hideButtonsAndShowGo() {
    lagerButton.style.display = "none";
    hogerButton.style.display = "none";
    startGo.style.display = "inline"; // Show "Go" button again
}

function play() {
    const audio = new Audio('fatal.mp3');
    audio.play();
}

function play2() {
    const audio = new Audio('ps5.mp3');
    audio.play();
}

const namePrompt = prompt("What is your name?");
if (namePrompt) {
    namePrompt2.textContent = namePrompt;
}