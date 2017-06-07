using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Warsztat_Samochodowy.Startup))]
namespace Warsztat_Samochodowy
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
