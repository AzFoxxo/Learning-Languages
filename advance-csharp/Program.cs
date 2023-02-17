﻿/*
 *   Copyright (c) 2023 Az Foxxo
 *   All rights reserved.
 */

// Enable/disable
// #define GETTER_SETTER

namespace AdvanceCsharp;

public class Program
{
    public static void Main(string[] args)
    {
        #region Properties
        #if GETTER_SETTER
        // Create a new instance of PropertiesRefresher
        var propertiesRefresher = new PropertiesRefresher();

        // Set the values of A, B, C, and D
        propertiesRefresher.a = 1;
        propertiesRefresher.b = 2;
        propertiesRefresher.c = 3;
        // propertiesRefresher.d = 0; // This could be dangerous due to be being a division by zero so using a getter and setter is better
        propertiesRefresher.D = 0;

        // Print the value of ABCD
        Console.WriteLine(propertiesRefresher.ABCD());
        #endif
        #endregion
    }
}