%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 1: Matlab Scavenger Hunt and HelloWorld
%
% Submitted by: Darius Ragland
%
% Due: August 28, 2024
%
% Instructions: 

% There are two parts to this assignment. Part 1 deals with using the
% Matlab documentation to answer some questions or perform some tasks. Part
% 2 involves you writing your very first Matlab program!!

% Please write all of your responses in the following .mfile.
% If there are comments after the question (as in question 2) please 
% write your answer inside those comments. If there are not comments
% please write your answer with correct matlab syntax. 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%% Part 1  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 1. Set the url of the matlab documentation to a variable called helpURL

helpURL = web('https://www.mathworks.com/help/matlab/'); 
% 2. What does the command 'clear all' do?
%
% Answer: The 'clear all' command resets the workspace to its original
% state by removing all variables and functions.
%


% 3. Find a matlab function to take the average of the following
% numbers [1 7 21 32 67 32453]? Store your answer in a variable called
% averageAnswer.

num = [1 7 21 32 67 32453];

averageAnswer = mean(num);


% 4. What command would you type to see a list of all installed toolboxes?

        %ver

% 5. Write some commands that would return a list of all of the available 
% functions in the image processing toolbox? 

help images
doc images 

% 6. On the line below figure, write a command to draw a graph of 
% x and y. 

x = linspace(-2*pi,2*pi);
y = sin(x);

figure
        plot(x,y)
        
    
        

% 7. Find a function that performs a statistical test you've seen used
% in a journal article (there are many possible answers to this). What does
% this function do and how would you use it?

%
% Answer: The ttest function in MATLAB is used to check if the average of a
% sample is used to assess if the means of a sample is significaantly
% different from a specefic value, which is normally 0, or if two samples
% have different averages. This function gives a decision on the null
% hypothesis, as well as the p value that signifies statistical
% significance of the test result.





%

% 8. What are the 2 major types of loops that MATLAB supports? What is the
% difference between them?

%
% Answer: The two types of loops MATLAB supports are 'while' and 'for'
% loops. for loops a specefiic number of times specefied by the user and
% while loops however long the confitions remain true. Both require the
% keyword 'end' to stop the loop.
% 


% 9. What does NaN stand for? Give an example of when you would get NaN as
% an answer. 

%
% Answer: NaN stands for "Not a Number" and occurs when a calculation
% results in an undefined or unrepresentable numeric value. One common 
% situation where NaN might appear is when performing statistical 
% operations like correlation on data where all values in one or both 
% variables are identical.
% An example of this could be y = [-0.213;-0.213;-0.213] In this situation
% all of the y values are the same and the formula for correlation involves
% subracting the mean of y from each y value which then results in a
% verctor of zeroes. The next step in this correlation would be dividing by
% the SD which is zero in this situation. So you end up dividing by zero,
% which produces NaN. 
%


% 10. The following code snippet executes but contains an error (we don't
% get a useful answer). See if you can use the documentation to fix the 
% error to get the sum of the numbers in A. Do not change or remove 
% any of the values in A.

A = [1 2 3 2 1 NaN 1 2 3 NaN];
S = sum(A);


% 11. I used to love playing the game minesweeper. Is there a way that I
% could play a similar game on Matlab? Write the command that would launch
% the game if so. 

xpbombs

% 12. Create a variable myAge and assign it the value of your age. Then 
% create a new variable called ageLessTwo and subtract two from the value of the
% myAge variable. Create a third variable called agePlusOne and add one to 
% the value of the myAge variable.

myAge = 23;
ageLessTwo = myAge-2;
agePlusOne =myAge+1;



% 13. Use the built-in function namelengthmax to find out the maximum number of
% characters that you can have in an identifier name under your version of
% MATLAB. Assign the value to a variable called maxNameLength.

namelengthmax
maxNameLength = 63;


% 14. You need to convert some weight values from metric to standard units. 
% Create two appropriately named variables to store the original weight in 
% pounds and the original weight in ounces respectively. Use who and whos 
% to see the variables. Clear one of your variables and then use who and whos again.

originalWeightkg = 100;
% Add your code on the next line
orginalWeightlbs = 2.205*(originalWeightkg);
orignalWeightoz =  35.274*(originalWeightkg);

%Display
who orginalWeightlbs orignalWeightoz
whos orginalWeightlbs orignalWeightoz

%Clear originalWeightlbs
clear orginalWeightlbs

%Display Remaining
who
whos

% 15. Assign a number with a decimal place to an appropriately named variable. Convert the
% variable to the type int32 and store the result in a new variable (hint: this is known
% as casting in computer programming). Use whos to check your result. 

ogVariable = 2.35;
intVariable = int32(ogVariable);
whos intVariable



% 16. Create a variable called weightInLBs to store a weight in pounds. Convert this to 
% kilograms using an appropriate calculation or function and assign the result to a variable weightInKgs.

weightInLBs = 50;
weightInKgs = weightInLBs * 0.453592;


% 18. Create a variable fTemp to store a temperature in degrees Fahrenheit (F). 
% Convert this to degrees Celsius (C) using an appropriate 
% calculation and store the result in a variable cTemp.

fTemp = 100;
cTemp = (fTemp - 32) * (5/9);


% 19. Using the colon operator, create the following row vectors:
% 2 3 4 5 6 7 
% 1.1000 1.3000 1.5000 1.7000 
% 8 6 4 2
% Store your results with variable names vecA, vecB and vecC respectively.

vecA = 2:7;
vecB = 1.1000:0.2000:1.700;
vecC = 8:-2:2;


% 20. Give a MATLAB expression that would create a vector 
% (assigned to a variable called vec) of 50 elements that range, equally spaced, 
% from 0 to 2pi. 

vec = linspace(0, 2*pi, 50);

disp(vec)

% 21. Using the colon operator and the transpose operator, 
% create a column vector that has the values -1 to 1 in steps of 0.5.
% Assign your answer to a variable called colVec.

rowVec = -1:0.5:1;
colVec = rowVec';



% 22. Create a variable called rows that is a random integer in the inclusive range 
% from 1 to 5. Create a variable called cols that is a random integer in the 
% inclusive range from 1 to 5. Create a matrix called resultMat of all zeros with the 
% dimensions given by the values of rows and cols. The resultMat should
% change each time you execute your code. 

rows = randi([1,5]);
cols = randi([1,5]);
resultMat = zeros(rows,cols);


% 23. Create a vector of five random integers, each in the inclusive range 
% from -10 to 10 assigned to a variable named originalVec. Perform each of 
% the following on the original vector and store your results in appropriately 
% named variables. (you should have a seperate line of code for each)

origanalVec = randi([-10,10],1,5);

% - subtract 3 from each element

vecMinus3 =  origanalVec- 3;
% - count how many are positive

vecPositive = sum(origanalVec > 0);

% - get the absolute value of each element

absVec = abs(origanalVec);

% - find the maximum.

maxVec = max(origanalVec);

% 24. Write some code that will calculate the area of a trapezoid. Create
% variables for base1, base2, and height and assign them values. Store the
% result of your calculation in a variable called trapArea. Comment your
% code so that another user can understand what your code does. 

%- Bases and height of trapeziod
base1 = 6;
base2 = 8;
height = 4;

% area of trapeziod
trapArea = 0.5 * (base1+base2) * height;



% 25. If you were to start your own lab/business, a key metric that you 
% might use is ROI when applying for a business loan or making organizational 
% decisions. The classic equation for ROI is:

% ROI = (Total Revenues – Total Costs) / Total Costs x 100

% Write some code that prompts the user to input total revenues and total 
% costs and then calculates the ROI and stores the value in a variable called
% ROI.


totalRevenues = 2000;
totalCost = 1700;

ROI = ((totalRevenues - totalCost)/totalCost) * 100;


%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%  Part 2: Hello World %%%%%%%%%%%%%%%%%%%%%%%%%%

% Write some code that will print the string 'Hello World' to the screen. 
% There are several ways that you could do this. For an extra challenge, 
% make your program able to take text input from the user and output 
% whatever they input. (For ease of running and executing your solution for 
% part 2, make sure you click the Run Section button vs the Run button) 

%%% Enter the code for your program below this line

disp('Hello World')




%%%%% When you have completed everything, type the following two commands
%%%%% (without comments) into your command window. 

%%% load handel
%%% sound(y, Fs)