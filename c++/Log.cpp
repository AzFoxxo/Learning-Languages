#include <iostream>

void Log(const char* message)
{
	std::cout << message << std::endl;
}

#if 0
int main()
{
	Log("Log");
}
#endif