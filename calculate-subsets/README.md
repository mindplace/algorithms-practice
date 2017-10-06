# Algorithm Drill: Calculating Count of Subsets

## Summary
If we had five pens, how many unique groups of three could we make?  If we had ten letters, how many unique combinations of four could we make?  If we had twelve players, how many unique teams of seven could we make?

More generically, given a set of *n* options, how many unique *k*-sized subsets could we make?


### A Function for Calculating the Number of Subsets
We're going to define a function that we'll later translate into a Ruby method.  We'll represent our function as `f(n, k)`.  `n` represents the number of options we have, and `k` represents the size of each subset.  To determine how many unique groups of three we could make from five crayons, we'd have `f(5, 3)`.  Given ten letters, to determine how many unique combinations of four we could make, we'd have `f(10, 4)`.  Do we see how this could translate to a method definition?

```
f(n, k)  = f(n - 1, k - 1) + f(n - 1, k)

f(5, 3)  = f(4, 2) + f(4, 3)
f(10, 4) = f(9, 3) + f(9, 4)
```
*Figure 1*. Generic formula for `f(n, k)` with two examples.

We know that our function needs two inputs:  `n` and `k`.  But what do we do with those inputs?  Figure 1 shows the calculations that we do with them.  Let's take a minute to review both the general formula and how it would be applied to the specific situations we've been discussing.  What type of algorithm does this look like?


### Known Numbers of Subsets
```
f(0, 5) = 0
f(3, 0) = 1
f(7, 1) = 7
```
*Figure 2*. Known values for specific input conditions.

There are some conditions where we know how many subsets we can calculate based on the inputs.  These conditions are shown in Figure 2 and detailed in the following points.

- If there are zero options, we can make zero subsets.
- We can always make one subset of size zero, the empty set.
- If we're trying to make subsets of size one, then we can make as many subsets as there are options.


## Releases
### Release 0: Translate the Function to Ruby
```ruby
subset_count(0, 5)
# => 0
subset_count(6, 2)
# => 15
subset_count(6, 3)
# => 20
subset_count(24, 4)
# => 10626
```

Write a `subset_count` method that implements the function we defined in the *Summary*.  Our method should accept two arguments, the number of options and the subset size, and it should return the number of unique combinations of the subset size that can be made from the number of options (see Figure 3).  Tests have been written to describe the known conditions (e.g., when there are zero options).  We'll need to write tests for other use cases.


## Conclusion
Given a real-world function, we were required to translate it into Ruby.  When developing an algorithm, it's sometimes helpful to understand how we would solve the problem in the real world and then translate our process into Ruby.
