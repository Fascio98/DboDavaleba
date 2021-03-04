using System;

namespace Dashifruli_Shetyobineba
{
    class Program
    {
        public static int isSubstring(string s1,string s2)
        {
            int M = s1.Length;
            int N = s2.Length;
            for (int i = 0; i < M - N; i++)
            {               
                int j;
                for (j = 0; j < N; j++)

                    if (Convert.ToInt32(s1[i + j]) != Convert.ToInt32(s2[j]))
                        break;
                if (j == N)
                    return j;
            }
            return -1;
        }
        static void Main(string[] args)
        {
            Console.WriteLine("Ramden Cifriani Mimdevrobis Shemotana Gnebavt?");
            int n = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Shemoitanet " + n + " Cifriani Mimdevroba!");
            string m = Console.ReadLine();
            if (m.Length != n)
                throw new Exception("Tqven Unda Shemoitanot " + n + " Cifriani Ricxvebis Mimdevroba!");
            Console.WriteLine("Ramdeni Cifrisgan Shedgeba Samxedro Obieqtis Nomeri?");
            int k = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Shemoitanet Samxedro Obieqtis" + k + "-Cali Cifri");
            string m1 = Console.ReadLine();
            if (k < 1 || k > 5)
                throw new Exception("Samxedro Obieqtis Nomershi Shemavali Cifrebis Raodenoba Ar Unda Iyos 1-Ze Naklebi Da 5-Ze Meti!!!!");
            int res = isSubstring(m, m1);
            if(res>0)
                Console.WriteLine("Yes");
            else
                Console.WriteLine("NO");
        }
    }
}
