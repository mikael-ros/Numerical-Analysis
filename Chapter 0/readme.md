# Chapter 0: Fundamentals
## 0.1 Evaluating polynomials
### Exercises
See bottom of [chapter-0.pdf](chapter-0.pdf).
### Computer problems
See bottom of [chapter-0.pdf](chapter-0.pdf) for notes. Command snippets follow below, for use in MATLAB. 

See files in this directory for the various functions necessary for the snippets below.

#### 1

Calculate the polynomial:
```matlab
format long g
result = nest(50, ones(50), 1.00001)
% Calculate error:
result - (1.00001^51 - 1)/(1.00001 - 1)
```

#### 2

> [!TIP]
> You can generate the requested array with ``(-1).^(0:n)``

Calculate polynomial:
```matlab
format long g
result = nest(99, (-1).^(0:99), 1.00001)
% Calculate error:
(1-1.00001^100)/(1+1.00001) - result
```
## 0.2 Binary numbers
### Exercises
See bottom of [chapter-0.pdf](chapter-0.pdf).

## 0.3 Floating Point Representation of Real Numbers
### Exercises
See bottom of [chapter-0.pdf](chapter-0.pdf). What follows are some snippets useful for checking your answers:

#### 5
##### a)
```matlab
format long
x = 2^(-51) + 2^(-53)   
y = 1 + x               
z = y - 1  
```             
Result: 
```text
x = 5.551115123125783e-16
y = 1.000000000000000
z = 4.440892098500626e-16
```

##### b)
```matlab
format long
x = 2^(-51) + 2^(-52) + 2^(-53) 
y = 1 + x                       
z = y - 1                       
```
Result: 
```text
x = 7.771561172376096e-16
y = 1.000000000000001
z = 8.881784197001252e-16
```

#### 6
##### a)
```matlab
format long
x = 2^(-51) + 2^(-52) + 2^(-54)  
y = 1 + x               
z = y - 1  
```             
Result: 
```text
x = 7.216449660063518e-16
y = 1.000000000000001
z = 6.661338147750939e-16
```

##### b)
```matlab
format long
x = 2^(-51) + 2^(-52) + 2^(-60) 
y = 1 + x                       
z = y - 1                       
```
Result: 
```text
x = 6.670011765130823e-16
y = 1.000000000000001
z = 6.661338147750939e-16
```

#### 7
##### a)
```matlab
format hex
8
```             
Result: 
```text
ans = 4020000000000000
```

##### b)
```matlab
format hex
21
```             
Result: 
```text
ans = 4035000000000000
```

##### c)
```matlab
format hex
1/8
```             
Result: 
```text
ans = 3fc0000000000000
```

##### d)
```matlab
format hex
1/3
```             
Result: 
```text
ans = 3fd5555555555555
```

I skipped the rest of the exercises beyond this point in 0.3.

## 0.4 Loss of significance
### Exercises
See bottom of [chapter-0.pdf](chapter-0.pdf).
> note: I skipped all of them, basically.

### Computer problems
Skipped.

## 0.5 Review of calculus
### Exercises
Skipped.