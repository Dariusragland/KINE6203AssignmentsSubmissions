function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME:
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); % Bug found: I found this by trying to run the code and not being allowed to enter 1-3. Incorrect logic for validating level. 
% Fix: Use logical AND (&&) instead of OR (||) and check bounds.
while level < beginner || level > advanced       
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner %Bug found: I found this by trying to run the code and getting a incorrect use of '=' error message.                      

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
highest = advancedHighest;    
end
%Bug Found: The variable was named incorrectly typed as "advancedhighest" 
      %Fix: "advancedHighest
% randomly select secret number between 1 and highest for level of play

% Bug Found: Incorrect random number function
    % Fix: Use `randi(highest)` to generate a random integer.
    secretNumber = randi(highest);

% initialize number of guesses and User_guess
                % Bug Found: inccorectly intialized to 1
numOfTries = 0; % Fix: Start at 0, increment later.
userGuess = 0;

%Bug found: Guesses exceed the range of 1-1000 for highest guess
%fix: Relational operator in logical array should be ">" not ">="
% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
    while userGuess < 1 || userGuess > highest
fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);
userGuess = input('Re-enter a guess:');

    end % of guess validation loop

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1; %Bug found: Position of numofTries is outside the loop
                        % Fix: move statement after the validation loop

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber
    fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber %Bug found: This condtional statement is the same as the if statement above. 
    fprintf('Sorry, %d is too high.\n', userGuess); %Fix:Change the operative sign
else
% Bug Found: No closing `end` after success message
            % Fix: Added appropriate nesting and fixed conditional formatting.
            if numOfTries == 1
                fprintf('\nLucky You! You got it on your first try!\n\n');
            else
                fprintf('\nCongratulations! You guessed %d in %d tries.\n\n', secretNumber, numOfTries);
            end
end %end of if statement
end % end of main while loop
% Final message after the game ends % Bug found:final message appeared
% before end of game.
%fix: ensure fprint statement occured outside of while loop
    fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');  % of guessing while loop
end % end of game