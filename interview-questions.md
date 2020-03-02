# ASSESSMENT 4: Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn.  

1. What is an instance variable in Ruby? How is it different from other variables?

  Your answer: An instance variable in Ruby is a specific part of an object that can be passed new information to and also changed when called upon. It is different from other variables in that it is not permanenet and can be changed. 

  Researched answer:
  
  An instance variable has a name beginning with @, and its scope is confined to whatever object self refers to. Two different objects, even if they belong to the same class, are allowed to have different values for their instance variables. From outside the object, instance variables cannot be altered or even observed (i.e., ruby's instance variables are never public) except by whatever methods are explicitly provided by the programmer. As with globals, instance variables have the nil value until they are initialized.
  


2. What is a block in Ruby?

  Your answer: A block in Ruby is another syntax variation in the way in which Ruby can be written. 

  Researched answer:
  
  Ruby blocks are little anonymous functions that can be passed into methods.

  Blocks are enclosed in a do / end statement or between brackets {}, and they can have multiple arguments.

  The argument names are defined between two pipe | characters.



3. Ruby has an implicit return. What does that mean?

  Your answer: That means that if a Ruby variable is initialized with a certain variable then it will always call back that variable as it is initialized unless it is changed. 

  Researched answer:

  Any statement in Ruby returns the value of the last evaluated expression. 


4. What is object-oriented programming? How is it different than functional programming?

  Your answer: Object oriented programming turns every component into an object while functional program is more based on function acting on objects. 

  Researched answer:
  
  Object-oriented programming (OOP) is a programming paradigm based on the concept of "objects", which are data structures that contain data, in the form of fields, often known as attributes; and code, in the form of procedures, often known as methods.
  
  Functional programming is a programming paradigm, a style of building the structure and elements of computer programs, that treats computation as the evaluation of mathematical functions and avoids changing-state and mutable data -
  

5. What is the difference between a class and an object?

  Your answer:A class can be passed variables to and has several variables when an object is only one variable. 

  Researched answer:
  
  An object is a unit of data. A class is what kind of data it is.

  For example, 3 and 5 are different numbers. They are not the same object. But they are both integers, so they belong to the same class. 
