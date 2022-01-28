using Exercise3.OrderAggregate;
using System.Collections.ObjectModel;

namespace Exercise3.FrontDeskAggregate
{
    public class FrontDesk
    {
        private readonly ObservableCollection<IOrder> _order;
        public ReadOnlyObservableCollection<IOrder> ReadOnlyCollection { get; }
        public FrontDesk()
        {
            _order = new ObservableCollection<IOrder>();
            ReadOnlyCollection = new ReadOnlyObservableCollection<IOrder>(_order);
        }
        public void AddOrder(int numberOfBurgers)
        {
            _order.Add(new Order(numberOfBurgers));
            for (int i = 0; i < _order.Count; i++)
            {
                OrderEventArgs orderEventArgs = new OrderEventArgs(_order[i]);
                OrderCreated(this, orderEventArgs);
            }
        }

        public void RemoveCompletedOrders()
        {
            for (int i = _order.Count - 1 ; i >= 0; i--)
            {
                if (_order[i].IsCompleted)
                {
                    _order.Remove(_order[i]);
                }
            }
        }
        public event OrderAggregate.OrderCreatedHandler OrderCreated;       
    }
}