namespace Exercise3.OrderAggregate
{
    using System.ComponentModel;
    using System.Runtime.CompilerServices;

    public class Order : IOrder, INotifyPropertyChanged
    {
        private int _numberOfBurgers;
        private bool _isStarted = false;
        private bool _isCompleted = false;
        public Order(int numberOfBurgers)
        {
            _numberOfBurgers = numberOfBurgers;
            Number = OrderNumber.CreateNext();
        }
        public OrderNumber Number { get; set; }
        public int NumberOfBurgers { 
            get 
            {
                return _numberOfBurgers;
            } 
        }
        public bool IsStarted 
        {
            get => _isStarted;
            set 
            {
                _isStarted = value;
                OnPropertyChangd(nameof(IsStarted));
            } 
        }
        public bool IsCompleted 
        {
            get => _isCompleted;
            set
            {
                _isCompleted = value;
                OnPropertyChangd(nameof(IsCompleted));
            }
        }
        public event PropertyChangedEventHandler PropertyChanged;
        private void OnPropertyChangd([CallerMemberName] string caller = "")
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(caller));
            }
        }
    }
}