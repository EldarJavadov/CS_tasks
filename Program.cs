using System;

class Program
{
    private static void Main(string[] args)
    {

        #region

        //int end = 10;
        //int count = 0;

        //for (int number = 2; number <= end; number++)
        //{
        //    bool isPrime = true;

        //    for (int divisor = 2; divisor*divisor <= number; divisor++)
        //    {
        //        if (number % divisor == 0)
        //        {
        //            isPrime = false;
        //            break;
        //        }
        //    }

        //    if (isPrime)
        //    {
        //        count++;
        //    }
        //}

        //Console.WriteLine(count);

        #endregion


        #region
        //int number = 1230;
        //int count = 0;

        //while (number != 0)
        //{
        //    number = number/10;
        //    count++;
        //}
        //Console.WriteLine(count);
        #endregion


        #region
        //int number = 9;
        //int number1 = 0;

        //do
        //{
        //    if (number1 == number)
        //    {
        //        Console.WriteLine("3ün qüvvətidir");
        //        break;
        //    }
        //    else
        //    {
        //        number1 = number / 3;
        //        //Console.WriteLine("3ün qüvvəti deyil");
        //    }
        //} while (number1 * number1 <= number);
        #endregion


        #region Less to more sort
        int[] arr = { 0, 23, -11, 17, 18 };
        int numi = 0;
        int numj = 0;
        bool test = false;


        for (int i = 0; i < arr.Length; i++)
        {
            for (int j = 0; j < arr.Length; j++)
            {
                if (test)
                {
                    if (arr[j] < numj)
                    {
                        numj = arr[j];
                        //Console.WriteLine(arr[j]);
                    }
                }
                else
                {
                    if (arr[j] > numi && arr[j]<=numj)
                    {
                        numj = arr[j];
                        //Console.WriteLine(arr[j]);
                    }                    
                }
            }
            
            Console.WriteLine(numj);
            test = false;
            numi = numj;

        }


        

        #endregion
    }
}