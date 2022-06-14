using System.Diagnostics;
using Microsoft.AspNetCore.Http;

namespace ChatBot.Web.Middleware
{
    public class LogMiddleware
    {
        private static int _requestCount;

        public void LogRequest(HttpContext context)
        {
            _requestCount++;
            Debug.WriteLine($"Last request: {context.Request.Path} - Number of incoming requests = {_requestCount}");
        }
    }
}
