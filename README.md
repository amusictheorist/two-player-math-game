# two-player-math-game

1. Game Initialization:
Set up players with initial lives and scores.
Decide who the initial current_player is.

2. Generate Question:
Create a Question instance to generate a new math problem.

3. Capture Input:
Prompt the current_player for their answer and capture the input.

4. Check Answer:
Compare the player's input with the correct_answer from the Question.

5. Update Player State:
Use methods on the Player class to update score or reduce lives based on correctness.

6. Display Results:
Show the current scores and lives for both players.

7. Switch Turns:
If the current_player has lives remaining, switch to the other player.

8. Check Game Over:
If a player's lives reach zero, announce the winner and end the game.
