using System;

namespace Sorted_Arrays
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Shemoitanet Pirveli Masivis Elementebis Raodenoba!");
            int a = Convert.ToInt32(Console.ReadLine());
            int[] A = new int[a];
            Console.WriteLine("Shemoitanet Meore Masivis Elementebis Raodenoba!");
            int b = Convert.ToInt32(Console.ReadLine());
            int[] B = new int[b];
            Console.WriteLine("Shemoitanet Pirveli Masivis Elementebi!");
            for (int i = 0; i < a; i++)
                A[i] = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Shemoitanet Meore Masivis Elementebi!");
            for (int i = 0; i < b; i++)
                B[i] = Convert.ToInt32(Console.ReadLine());
            int[] C = new int[a + b];
            for(int i=0;i<a+b;i++)
            {
                Array.Sort(A);
                Array.Sort(B);
                if (i <= A.Length - 1)
                {
                    C[i] = A[i];
                }
                else
                {
                    C[i] = B[i - B.Length+1];
                }
                if(i==a+b-1)
                    Array.Sort(C);
            }         
            for(int i=0;i<C.Length;i++)
                Console.WriteLine(C[i]);
        }
    }
}
