### Powers of 2

Complete the function that takes a non-negative integer ```n``` as input, and returns a list of all the powers of ```2``` with
the exponent ranging from ```0``` to ```n``` ( inclusive ).

---

### Square(n) Sum

Complete the square sum function so that it squares each number passed into it and then sums the results together.

For example, for ```[1, 2, 2]``` it should return ```9``` because ```1^2 + 2^2 + 2^2 = 9```.

---

### Welcome to the City

Create a method ```sayHello```/```say_hello```/```SayHello``` that takes as input a name, city, and state to welcome a person. Note that ```name``` will be an array consisting of one or more values that should be joined together with one space between each, and the length of the ```name``` array in test cases will vary.

**Example:**

```say_hello(['John', 'Smith'], 'Phoenix', 'Arizona')```

This example will return the string ```Hello, John Smith! Welcome to Phoenix, Arizona!```

---

### Speed Control

In John's car the GPS records every ```s``` seconds the distance travelled from an origin (distances are measured in an arbitrary but consistent unit). For example, below is part of a record with ```s = 15```:

```x = [0.0, 0.19, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0, 2.25]```

The sections are:

```0.0-0.19, 0.19-0.5, 0.5-0.75, 0.75-1.0, 1.0-1.25, 1.25-1.50, 1.5-1.75, 1.75-2.0, 2.0-2.25```

We can calculate John's average hourly speed on every section and we get:

```[45.6, 74.4, 60.0, 60.0, 60.0, 60.0, 60.0, 60.0, 60.0]```

Given ```s``` and ```x``` the task is to return as an integer the ```*floor*``` of the maximum average speed per hour obtained on the sections of ```x```. If x length is less than or equal to 1 return ```0``` since the car didn't move.

**Example** :

with the above data your function ```gps(s, x)``` should return ```74```

**Note**
With floats it can happen that results depends on the operations order. To calculate hourly speed you can use:

```(3600 * delta_distance) / s.```

---

### Testing 1-2-3

Your team is writing a fancy new text editor and you've been tasked with implementing the line numbering.

Write a function which takes a list of strings and returns each line prepended by the correct number.

The numbering starts at 1. The format is ```n: string```. Notice the colon and space in between.

**Examples: (Input --> Output)**

```
[] --> []
["a", "b", "c"] --> ["1: a", "2: b", "3: c"]
```

---

### To square(root) or not to square(root)

Write a method, that will get an integer array as parameter and will process every number from this array.

Return a new array with processing every number of the input-array like this:

If the number has an integer square root, take this, otherwise square the number.

**Example**

```[4,3,9,7,2,1] -> [2,9,3,49,4,1]```

**Notes**

The input array will always contain only positive numbers, and will never be empty or null.

---

### Length and two values

Given an integer ```n``` and two other values, build an array of size ```n``` filled with these two values alternating.

**Examples**
```
5, true, false     -->  [true, false, true, false, true]
10, "blue", "red"  -->  ["blue", "red", "blue", "red", "blue", "red", "blue", "red", "blue", "red"]
0, "one", "two"    -->  []
```

Good luck!