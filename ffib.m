function f=ffib(n)
if n>2
 f=ffib(n-1)+ffib(n-2);
else
 f=1;
end
