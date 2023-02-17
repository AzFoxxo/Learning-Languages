/*
 *   Copyright (c) 2023 Az Foxxo
 *   All rights reserved.
 */

namespace AdvanceCsharp;

public class PropertiesRefresher
{
    // Member variables
    public int a;
    public int b;
    public int c;
    private int d;

    // Using a getter and setter for the property to prevent invalid values
    public int D
    {
        get => d;
        set => d = value == 0 ? throw new Exception("D cannot be zero! Division by zero error!") : value; // Value is the value passed to the setter
    }

    // Only allowing private setting of the variable (shorter way)
    public double result { get; private set; } // This disallows setting the variable from outside the class and only allowing reading it

    // Additionally, using a just a getter for instance is possible (like the above code may also be written as)
    public double Result
    {
        get
        {
            return (a * b) + (c / d);
        }
    }

    // Random test calculation
    public double ABCD()
    {
        result = (a * b) + (c / d);
        return result;
    }
}