/*
 *   Copyright (c) 2023 Az Foxxo
 *   All rights reserved.
 */

using System.Collections; // Like List requires System.Collections

namespace AdvanceCsharp;

public class ArrayLists
{
    // ArrayLists are not fixed in size and can be added to and can take any type of data
    ArrayList arrayList = new ArrayList(10); // Define a fixed size of 10

    ArrayList dynamicArrayList = new ArrayList(); // Define a dynamic size

    public ArrayLists() // Constructor
    {
        // Standard methods such as Add, Remove, Insert, Clear exist
        
        // Add
        arrayList.Add(1);
        arrayList.Add(2);
        arrayList.Add(true);
        dynamicArrayList.Add("Hello");
        dynamicArrayList.Add("World");
        dynamicArrayList.Add(1);


        // Remove
        arrayList.Remove(1);
        dynamicArrayList.Remove("Hello");

        // Insert
        arrayList.Insert(0, 1);
        dynamicArrayList.Insert(0, "Hello");

        // Count
        Console.WriteLine($"{nameof(arrayList)} has a length of {arrayList.Count}.");
        Console.WriteLine($"{nameof(dynamicArrayList)} has a length of {dynamicArrayList.Count}.");

        // Clear
        arrayList.Clear();
        dynamicArrayList.Clear();

        // Other methods exist like with list
    }
}