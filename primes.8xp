D=1
x=2
N=2
L=1
K=1
For(x,x,1000000)
If √x>PRI(L)
Then

L+1→L
End

For(K,1,L,1)
If (mod(x,PRI(K))==0
Then
D=0
End
End

If D==1
Then
x→PRI(N)
Disp PRI(N)
N+1→N

End
D=1
End

