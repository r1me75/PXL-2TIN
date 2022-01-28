namespace Exercise3
{
    public static class IntegerExtensions
    {
        public static int CircularIncrement(this int value, int minimum, int maximum)
        {
            if (value + 1 > maximum || value + 1 < minimum)
            {
                return minimum;
            }
            return value + 1;
        }
        //This class should contain an extension method 'CircularIncrement'. The method returns an integer incremented by 1.
        //But when the number to increment is a maximum value, the the returned number should be a minimum value.
    }
}