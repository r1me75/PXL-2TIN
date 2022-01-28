namespace Exercise3.OrderAggregate 
{
    using Exercise3;
    public struct OrderNumber
    {
        private const int MINIMUM = 1;
        private const int MAXIMUM = 99;
        private static int _sequence;
        public int Sequence { get; }
        public OrderNumber(int orderNumber)
        {
            Sequence = orderNumber;
        }
        public static OrderNumber CreateNext()
        {
            _sequence = IntegerExtensions.CircularIncrement(_sequence, MINIMUM, MAXIMUM);
            return new OrderNumber(_sequence);
        }
        public override string ToString()
        {
            return "#" + Sequence;
        }
    }
}