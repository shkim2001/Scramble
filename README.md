# Scramble

## Abstract
This is Scramble, a word game based off of *Scrabble*. It was developed during Carleton College's Fall 2023 trimester for Matt Lepinski's class CS347: Advanced Software Design. The application is primarily wriiten using React for the frontend, and Go for the backend, with a PostgreSQL-written database tracking game states. 

### Contributers
|Name|Email|  
|----|-----|  
|Roo Case|caser@carleton.edu|
|Sunny Kim|kims3@carleton.edu|
|John Win|winj@carleton.edu|
|Artem Yushko|yushkoa@carleton.edu|

## Contents
- [Description](#description)
- [Setup Instructions](#Setup-instructions)
- [Playing The Game](#Playing-The-Game)
- [Player Leaderboard (Written by Fast Ntense)](#player-leaderboard-written-by-fast-ntense)
- [Technologies Used](#technologies-used)
- [Credits](#credits)

## Description

Scramble is based off of Hasbro's *Scrabble*, a game developed in 1938 by Alfred Mosher Butts. In the original *Scrabble* game, 2-4 players each recieve a "hand" of seven letter tiles, which they are required to play some number of each term to form a word on the board, with at least one tile being connected to a tile on the board in such a way that conenction too forms a word. Each letter tile is assigned a points value, and each word is scored off of the values of the tiles constituting the word. The game is complex and difficult to explain succinctly. We reccommend [this material from Northwestern University](https://users.cs.northwestern.edu/~robby/uc-courses/22001-2008-winter/*Scrabble*.html) as a good primer on the game. 

We have made some modifications to our version, which deviate from the standard commercial rules of *Scrabble*
- Our version of the game has support for exactly two players. 
- The tiles look slightly different. 
- Hand scores are not removed from the final scores when the game ends
- The game immediately begins - users do not have the ability to mulligan. 

## Setup Instructions

Clone this repository onto your local machine. You will also need an up-to-date version of Docker running on your computer, and a modern web browser (you do not need to be connected to the internet, but need a web browser in order to connect to the localhost and play the game)

To run the whole program, go to the `Scramble` directory and use the following command on the terminal:

```terminal
> docker compose build && docker compose up
```

On first startup, Docker will download and install many dependencies required to run. This may take a while. To run Scramble any time after initial startup, you only need run:

```terminal
> docker compose up
```

The core server will start up last. The game is ready to connect and play when you see the following message:
```
scramble-game-1       | Server is running on :8080
```

The user-ready app can be accessed at http://localhost:3000 

NOTE: The game will not run if you try to access it using HTTPS. Any individual match will not work if you quit and re-open the browser running the game, but will work if a user reloads their respective game.  

To play, open two browser tabs both running the app. The two tabs can be on the same browser or separate browsers. 

## Playing The Game

#### New Game

Clicking "New Game" will create a new game of Scramble. It prompts you to enter your user name. Then you will move to the waiting room which has the "start game" button. The unique 6 digit game ID of the created new game will be available at the end the URL of the game. Send this game ID to another player.

#### Join Game

Clicking "Join Game" will prompt you for a username and a game session ID. Input those, and you will also be presented with a screen saying "Start Game". Your username MUST be different than the other players. If it is not, the game will refuse to start and you will need to create a new game session. Player 1 (who created the game) will need to actually start the game. 

#### Playing The Game

Playing the game uses normal *Scrabble* rules. The person who initially created the game by clicking "New Game" will always go first. This means that the traditional method of picking a random letter (with the person with the letter closest to "A" winning) will not work, and instead you should decide the method of deciding who should go first. We recommend flipping a coin or playing rock-paper-scissors. Players will take turns back and forth playing words until the tile bag is empty, and one of the two players runs out of tiles. 

There are a few core features one can use during a game:
- **Refresh**: remove all the tiles from your hand. Get a new set of tiles. 
- **Skip**: Skip your turn
- **Shuffle**: icon to the left of the hand. Shuffles the order of your hand randomly. 
- **Return To Hand**: Recall all tiles that have been placed by the user in a turn, before the word is submitted. 
- **Resign**: automatically ends the game, with the one who did not resign being the victor. 

As opposed to traditional *Scrabble*, when the game ends, the player that still has tiles in their hands does NOT have the values of the tiles removed from the final scores. When the game ends, the website will announce that the game has finished and declare the winner. 

## Player Leaderboard (Written by Fast Ntense)
- Starter Code for player leaderboard
- Add columns for player1 score and player2 score
- Run through a game and get score for each player 
- Order by playerTotal Score
  
### Frontend
- leaderboard.html: displays a static leaderboard with same background and styles as main project. 

## Technologies Used
### Frontend
- React (JavaScript)

### Backend
-  Go
-   [`gorilla/mux`](https://github.com/gorilla/mux) Library for Go

### Server
- PostgreSQL
- Go

### Languages 
- Go
