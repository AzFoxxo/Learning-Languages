/*
 *   Copyright (c) 2023 Az Foxxo
 *   All rights reserved.
 */

// Enable/disable
// #define GETTER_SETTER
// #define JAGGED_ARRAY
// #define ARRAY_LIST
// #define ERROR_HANDLING
#define INTERFACES

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

        #region Jagged Array
        #if JAGGED_ARRAY
        // Create a new instance of JaggedArray
        var jaggedArray = new JaggedArray();

        // Print the jagged array
        jaggedArray.PrintJaggedArray();
        #endif
        #endregion

        #region ArrayList
        #if ARRAY_LIST
        // Create a new instance of ArrayLists
        var arrayLists = new ArrayLists();
        #endif
        #endregion

        #region Error Handling
        #if ERROR_HANDLING
        // Create a new instance of ErrorHandling
        var errorHandling = new ErrorHandling();
        #endif
        #endregion

        #region Interfaces
        #if INTERFACES
        // Create a new instance of Interfaces
        var interfaces = new Interfaces();
        #endif
        #endregion
    }
}