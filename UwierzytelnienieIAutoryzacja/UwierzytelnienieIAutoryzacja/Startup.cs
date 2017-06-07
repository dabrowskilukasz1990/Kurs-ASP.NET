using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(UwierzytelnienieIAutoryzacja.Startup))]
namespace UwierzytelnienieIAutoryzacja
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
