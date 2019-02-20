using System;

namespace NumberGuesser
{
    class Program
    {
        static void Main(string[] args)
        {
            getAppInfo();
            greetUser();
            while (true)
            {
                Random random = new Random();
                int correctNumber = random.Next(1, 10);
                int guess = 0;

                Console.WriteLine("Pick a number between 1 and 10");

                while (guess != correctNumber)
                {
                    string input = Console.ReadLine();
                    if (!int.TryParse(input, out guess))
                    {
                        printColorMessage(ConsoleColor.Red, "You MUST enter a number.");
                        continue;
                    }
                    guess = Int32.Parse(input);
                    if (guess != correctNumber)
                    {
                        printColorMessage(ConsoleColor.Red, "That is not the correct number. Please try again.");
                    }
                }

                printColorMessage(ConsoleColor.Cyan, "You guessed it right!");

                Console.WriteLine("Play Again? [Y or N]");
                string answer = Console.ReadLine().ToUpper();

                if (answer == "Y") {
                    continue;
                }
                else if (answer == "N") {
                    return;
                } else {
                    return;
                }
            }
        }

        static void getAppInfo()
        {
            string appName = "Number Guesser";
            string appVersion = "1.0.0";
            string appAuthor = "Sonali Marlin";
            Console.ForegroundColor = ConsoleColor.Green;
            Console.WriteLine("{0}: Version {1} by {2}", appName, appVersion, appAuthor);
            Console.ResetColor();
        }

        static void greetUser()
        {
            Console.WriteLine("What is your name?");
            string inputName = Console.ReadLine();
            Console.WriteLine("Hello {0}. Ready to play a guessing game?", inputName);
        }

        static void printColorMessage(ConsoleColor color, string message)
        {
            Console.ForegroundColor = color;
            Console.WriteLine(message);
            Console.ResetColor();
        }
    }
}
