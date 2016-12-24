# primes

This is a prime number generator I wrote in highschool on my TI-86 Graphing
calculator. Probably in 2008.

It is written in TI-Basic for the TI-86.

It was written on the calculator itself, so the variable names are a little
terse...

# IF YOU HAVE NEVER MADE A PRIME NUMBER GENERATOR LEAVE NOW AND TRY IT

# You will learn a lot and if you keep reading it will spoil the fun of discovery

I purposefully did not look anything up while building this, and I am happy I
came up with the same thing as [Eratosthenes](https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes).

Here were my iterations.

Determine a number is prime by...

1. Skipping even numbers, check if a number is divisible by any odd number less
   than that number.
2. Oh wait, I only need to check odd numbers less than 1/2 of the original number because their pair will be in the upper 1/2
3. Oh wait... Not 1/2 the number, only check numbers less than the square root
   of that number because that is the 1/2 way point for multiplication.
4. Wait a second... I only need to check the previous primes... because all the
   other odd numbers will be some combination of other primes... So just store
   the primes and check those.

And there you have it.

Three improvements that I see now that I am 8 years more experienced are:

1. Show that I seed the list beforehand by just doing it in the program

	```
	2->PRI(1)
	```

2. Print the first value in the PRI. Which is the first prime, 2. Which never
   prints.

	```
	// -- N=2
	// ++ N=1
	// ...
	// Before main loop
	Disp PRI(N)
	N+1->N
	```

3. The worst one by far. You know how I mentioned that you should skip even
   numbers because they will always be divisible by 2? Well my for loop does not
   do that because I did not understand the notation at the time I guess and it
   seemed fast enough.

	```
	For(x,x,1000000)
	// I thought it was
	// for(start, step, end)
	// but that would not even work, because I would ONLY check even numbers
	// it is actually
	// for(var, start, end, step) with step=1 if not included
	// so I am checking even numbers, darn.
	// It should be
	For(x,3,1000000,2)
	```

I have included the original as just `primes.BAS`.

I have also included a indented version for readability.
`primes-indented.BAS`.

Finally I have `primes-updated.BAS` which has the fixes I mentioned above plus
better variable names.
