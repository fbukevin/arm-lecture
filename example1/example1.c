int add(int, int);

int main()
{
	int a, b, c;
	a=10;
	b=12;
	//c=add(a,b);
	c=divide(a,b);

	//return 0;
	return c;
}

int add(int a, int b)
{
	return a+b;
}

int divide(int a, int b)
{
	return (a/b);
}
