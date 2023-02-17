/*
 *   Copyright (c) 2023 Az Foxxo
 *   All rights reserved.
 */

namespace AdvanceCsharp;

public class JaggedArray
{
    // Jagged arrays are arrays embedded in arrays

    // Create a new array of arrays
    public static int[][] jaggedArray = new int[3][];
    
    // Create each array in the jagged array which can be different sizes
    public JaggedArray()
    {
        jaggedArray[0] = new int[3];
        jaggedArray[1] = new int[2];
        jaggedArray[2] = new int[4];

        // Set values
        jaggedArray[0] = new int[] { 489, 2344, 43 };
        jaggedArray[1] = new int[] { 234, 234 };
        jaggedArray[2] = new int[] { 234, 234, 234, 234 };
    }

    // Print each item in the jagged array
    public void PrintJaggedArray()
    {
        // Loop through each array in the jagged array
        foreach (var array in jaggedArray)
        {
            // Print that array
            foreach (var item in array)
            {
                Console.Write($"{item} ");
            }

            // Newline
            Console.WriteLine();
        }
    }
}