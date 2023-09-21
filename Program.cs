using System;

class Program
{
    private static void Main(string[] args)
    {

        //Task:
        //1.Verilmiş integer array-ini azdan choxa dogru sort edən funksiya yazın. [0, 50, -11, 23, 18]

        //2.Verilmiş integer array-inin ortalamasını tapan funksiya yazın. [0, 50, -11, 23, 18 ]

        //3.Verilmiş integer array-ində minimum ədədin indexsini tapan funksiya yazın.  [0, 50, -11, 23, 18 ]


        #region 1.Find middle number of array
        static double FindMiddleNumber(int[] array)
        {
            double num = 0;
            int count = 0;

            for (int i = 0; i < array.Length; i++)
            {
                num += array[i];
                count++;
            }

            return num / count;
        }

        int[] arr = { 0, 23, -11, 17, 18 };
        #endregion


        #region 2.Find array min value index
        static int FindMinValIndex(int[] array)
        {
            int num = 0;

            for (int i = 0; i < array.Length; i++)
            {
                if (array[i] <= num)
                {
                    num = i;
                }
            }

            return num;
        }

        int[] arr1 = { 0, 23, -11, 17, 18 };
        #endregion
    }
}