# Chapter 0: Fundamentals
## 0.1 Evaluating polynomials
### Exercises
See bottom of [chapter-0.pdf](chapter-0.pdf).
### Computer problems
See bottom of [chapter-0.pdf](chapter-0.pdf) for notes. Command snippets follow below, for use in MatLAB. 

See files in this directory for the various functions necessary for the snippets below.

> [!NOTE] 
> Don't forget to turn off output rounding:
> 
> ``Home > Preferences > Command window > Format > long g``

#### 1

Calculate the polynomial:
```matlab
result = nest(50, ones(50), 1.00001)
```

Calculate error:
```matlab
result - (1.00001^51 - 1)/(1.00001 - 1)
```

#### 2

> [!TIP]
> You can generate the requested array with ``(-1).^(0:n)``

Calculate polynomial:
```matlab
result = nest(99, (-1).^(0:99), 1.00001)
```

Calculate error:
```matlab
(1-1.00001^100)/(1+1.00001) - result
```


