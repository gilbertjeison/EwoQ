using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(EwoQ.Startup))]
namespace EwoQ
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
