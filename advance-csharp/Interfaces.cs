/*
 *   Copyright (c) 2023 Az Foxxo
 *   All rights reserved.
 */

namespace AdvanceCsharp;

// Interface demo class
public class Interfaces
{
    // Create one of each animal and call their methods
    public Interfaces()
    {
        Bird bird = new Bird();
        bird.Fly();

        Fish fish = new Fish();
        fish.Swim();

        Duck duck = new Duck();
        duck.Fly();
        duck.Swim();

        Penguin penguin = new Penguin();
        penguin.Swim();
        penguin.Walk();
    }
}


// Interfaces are like classes but they cannot be instantiated and must be implemented in any inheriting classes
// This ensures that any class implementing a specific interface has the required methods and properties else will not compile

// Land animal
interface ILandAnimal
{
    void Walk();
}

// Water animal
interface IWaterAnimal
{
    void Swim();
}

// Flying animal
interface IFlyingAnimal
{
    void Fly();
}

// Animals
public class Bird : IFlyingAnimal
{
    public void Fly()
    {
        Console.WriteLine("Bird is flying.");
    }
}

public class Fish : IWaterAnimal
{
    public void Swim()
    {
        Console.WriteLine("Fish is swimming.");
    }
}

public class Duck : IFlyingAnimal, IWaterAnimal
{
    public void Fly()
    {
        Console.WriteLine("Duck is flying.");
    }

    public void Swim()
    {
        Console.WriteLine("Duck is swimming.");
    }
}

public class Penguin : IWaterAnimal, ILandAnimal
{
    public void Walk()
    {
        Console.WriteLine("Penguin is walking.");
    }

    public void Swim()
    {
        Console.WriteLine("Penguin is swimming.");
    }
}