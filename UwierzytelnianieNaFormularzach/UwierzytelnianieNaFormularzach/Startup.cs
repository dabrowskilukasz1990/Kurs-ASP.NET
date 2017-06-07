using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(UwierzytelnianieNaFormularzach.Startup))]
namespace UwierzytelnianieNaFormularzach
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
