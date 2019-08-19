using System;
using System.Collections.Generic;

namespace WebApplicationForms
{
    public static class BinaryOperation
    {
        #region field
        static Random rnd = new Random();
        #endregion

        #region method
        public static string RandomBinaryDigit(int k)
        {
            return ravenstvo(rnd.Next(k));
        }

        public static string RandomBinaryDigit(int k1, int k2)
        {
            return ravenstvo(rnd.Next(k1, k2));
        }

        public static string ravenstvo(int k)
        {
            string rav = Convert.ToString(Math.Abs(k), 2);
            if (rav.Length < 4)
                rav = new string('0', 4 - rav.Length) + rav;
            if (k < 0)
                rav = "11," + rav;
            else
                rav = "00," + rav;
            return rav;
        }

        public static string ConvertToZV(int a, int l)
        {
            if (a < 0)
            {
                string k = DelZNK(ravenstvo(a));
                if (k.Length < l)
                    k = new string('0', l - k.Length) + k;
                string t = null;
                for (int i = 0; i < k.Length; i++)
                    if (k[i] == '0') t += "1";
                    else t += "0";
                return "11," + t;
            }
            return ravenstvo(a);
        }

        public static string ConvertToDD(int a, int l)
        {
            if (a == -1) return "11,1111";
            if (a < 0)
                return ConvertToZV(a+1, l);
            return ravenstvo(a);
        }

        public static string DelZNK(string t)
        {
            if (t[2] == ',')
            {
                List<char> rem = new List<char>(t);
                t = null;
                rem.RemoveRange(0, 3);
                foreach (var i in rem)
                    t += i;
            }
            return t;
        }

        public static string DelZero(string t)
        {
            List<char> rem = new List<char>(t);
            t = null;
            while (rem[3] == '0') rem.RemoveAt(3);
            foreach (var i in rem)
                t += i;
            return t;
        }

        public static string AddZV(int a, int b)
        {
            return ConvertToZV(a + b, 4);
        }

        public static string AddDD(int d1, int d2)
        {
            return ConvertToDD(d1 + d1, 4);
        }
        #endregion
    }
}