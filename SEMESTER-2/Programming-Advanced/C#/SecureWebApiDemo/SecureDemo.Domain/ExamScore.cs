namespace SecureDemo.Domain
{
    public class ExamScore
    {
        public int Id { get; set; }
        public string Course { get; set; }
        public double Score { get; set; }
        public User User { get; set; }
        public int UserId { get; set; }
    }
}
