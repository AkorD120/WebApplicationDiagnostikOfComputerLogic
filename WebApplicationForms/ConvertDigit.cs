using System;

namespace WebApplicationForms
{
    public static class ConvertDigit
    {
        public static string ConvertToBIN(int a)
        {
            return BinaryOperation.ravenstvo(a);
        }

        public static string ConvertToOCT(int a)
        {
            return Convert.ToString(a, 8);
        }

        public static string ConvertToDEC(int a)
        {
            return Convert.ToString(a, 10);
        }
        public static string ConvertToHEX(int a)
        {
            return Convert.ToString(a, 16);
        }
        public static string ConvertToBIN(string a)
        {
            return BinaryOperation.ravenstvo(Convert.ToInt32(a));
        }

        public static string ConvertToOCT(string a)
        {
            return Convert.ToString(Convert.ToInt32(a), 8);
        }

        public static string ConvertToDEC(string a)
        {
            return Convert.ToString(Convert.ToInt32(a), 10);
        }
        public static string ConvertToHEX(string a)
        {
            return Convert.ToString(Convert.ToInt32(a), 16);
        }
    }
}