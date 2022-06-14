using System.ComponentModel.DataAnnotations;

namespace ChatBot.Web.Models
{
    public class QuestionModel
    {
        [Required, MinLength(1)]
        public string Question { get; set; }
    }
}