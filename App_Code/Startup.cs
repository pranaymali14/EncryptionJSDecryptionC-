using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(EncryptJsWeb.Startup))]
namespace EncryptJsWeb
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
