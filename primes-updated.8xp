isPrime=1
primeIndex=1
maxCheckIndex=1
end=1000000

// Seeding addition
2→Primes(primeIndex)
Disp Primes(primeIndex)

primeIndex+1→primeIndex

For(x,3,end,2)
	If √x>Primes(maxCheckIndex)
	Then
		maxCheckIndex+1→maxCheckIndex
	End

	For(K,1,maxCheckIndex,1)
		If (mod(x,Primes(K))==0
		Then
			isPrime=0
		End
	End

	If isPrime==1
	Then
		x→Primes(primeIndex)
		Disp Primes(primeIndex)
		primeIndex+1→primeIndex
	End
	isPrime=1
End

