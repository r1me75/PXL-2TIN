using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using ChatBot.Domain;
using ChatBot.Infrastructure;
using Microsoft.EntityFrameworkCore;
using ChatBot.AppLogic;
using ChatBot.Web.Middleware;

namespace ChatBot.Web
{
    public class Startup
    {
        private LogMiddleware _logMiddleware;
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
            _logMiddleware = new LogMiddleware();
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            //Do not change the statements below
            services.AddScoped<DatabaseSeeder>();
            services.AddDefaultIdentity<User>(options => options.SignIn.RequireConfirmedAccount = false)
                .AddEntityFrameworkStores<ChatBotDbContext>();
            services.AddControllersWithViews();
            services.AddRazorPages();

            //TODO: add your services below
            services.AddDbContext<ChatBotDbContext>(options =>
                options.UseSqlServer(
                    Configuration.GetConnectionString("DefaultConnection")));
            services.AddScoped<IFeedbackRepository, FeedbackDbRepository>();
            services.AddSingleton<IAnswerGenerator, PxlAnswerGenerator>();

        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseDatabaseErrorPage();
                // ik krijg app.UseLog() niet geimporteerd.

                app.Use(next =>
                {
                    return async context =>
                    {
                        _logMiddleware.LogRequest(context);
                        await next(context);
                    };
                });
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }
            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthentication();
            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller=Home}/{action=Index}/{id?}");
                endpoints.MapRazorPages();
            });
        }
    }
}
