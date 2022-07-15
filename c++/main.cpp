#include <iostream>

#ifdef VARIABLES
int main()
{

	// With optional unsgined before type
	// TYPE			// SIZE (BYTES)
	// char			1
	// short		2
	// int			4
	// long			4
	// long long	8

	// float		4
	// double		8

	// bool			1

	// Float must have an f (upper or lower) after the number else if a double
	// float i = 10.0; // double
	// float i = 10.0f; // float

	// bool - true or false

	// Get the size of a datatype - () are optional for sizeof
	std::cout << sizeof(bool) << std::endl;

	// bool* ptr; // - pointer
	// bool& ref; // - reference

	int variable = 8; // signed -2b -> 2b approx.
	unsigned int variable_unsigned = 8; // unsigned 0 -> 4b approx.
	char A = 'A'; // using the number for it

	std::cout << "Hello, World!" << std::endl;
}
#endif

#ifdef FUNCTIONS
// <return-type> (void if no return), name of variable, ( arg_type arg)
int Multiply(int a, int b) {
	return a * b;
}
int main() {
	int i = Multiply(10, 10);
	std::cout << i << std::endl;
}
#endif

#ifdef TRANSLATION_UNIT
// Use static to define the variable, etc. in a single translation unit

int main()
{
	// void Log(const char* message); // to tell the compiler it's defined somewhere
	#include "Log.h" // Does the same as ^^^

	// #include "relative_path"
	// #include <absolute_path> // From include directory
	// Quotes "" can work for <> but not vice versa and bad practice
	// C++ standard library doesn't include .h or .cpp extensions unlike C's

	Log("Test");
}

#endif