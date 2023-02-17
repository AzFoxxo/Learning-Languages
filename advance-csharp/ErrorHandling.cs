/*
 *   Copyright (c) 2023 Az Foxxo
 *   All rights reserved.
 */

namespace AdvanceCsharp;

public class ErrorHandling
{
    public ErrorHandling()
    {
        // Try, catch, finally

        int a = 10;
        int b = 0;

        try // Perform invalid operation - try to divide by zero
        {
            Console.WriteLine(a / b);
        }
        catch (DivideByZeroException e) // Catch the error, can be specific like this general - Exception
        {
            Console.WriteLine(e.Message);
        }
        finally // Finally, this always runs
        {
            Console.WriteLine("Finally");
        }

        // Throwing errors
        // throw new Exception("Error"); // General error - Exception
        // throw new DivideByZeroException("Error"); // Specific error - DivideByZeroException
        throw new CustomException("Error"); // Custom error - CustomException
    }
}

// Custom exceptions can be created by inheriting from Exception
public class CustomException : Exception
{
    public CustomException(string message) : base(message) { }
}