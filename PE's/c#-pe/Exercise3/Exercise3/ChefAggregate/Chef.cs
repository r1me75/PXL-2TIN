using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using Exercise3.FrontDeskAggregate;
using Exercise3.OrderAggregate;

namespace Exercise3.ChefAggregate
{
    public class Chef
    {
        private Queue<IOrder> ordersInQue = null;
        private IChefActions chef;
        public Chef(FrontDesk frontDesk, IChefActions chefActions)
        {
            ordersInQue = new Queue<IOrder>();
            frontDesk.OrderCreated += FrontDesk_OrderCreated;
            chef = chefActions;
        }
        private void FrontDesk_OrderCreated(object sender, OrderEventArgs args)
        {
           ordersInQue.Enqueue(args.Order);
        }
        public void StartProcessingOrders(CancellationToken cancellationToken)
        {
            //Task.Factory.StartNew invokes an action in a new thread so that the calculation does not block the UI thread (otherwise the UI would hang)
            Task.Factory.StartNew(() =>
            {
                while (!cancellationToken.IsCancellationRequested)
                {
                    //TODO: check if the queue contains an order. If so -> process it.
                    while (ordersInQue.Count != 0)
                    {
                        Order order = (Order)ordersInQue.Dequeue();
                        order.IsStarted = true;
                        for (int i = 0; i < order.NumberOfBurgers; i++)
                        {
                            chef.CookBurger();
                        }
                        order.IsCompleted = true;
                        chef.TakeABreather();
                    }
                }
            }, cancellationToken);
        }
    }
}