#pragma checksum "C:\Users\Rappi\Desktop\plataformasGrupo5TPFinal\plataformasGrupo5TPFinal\Views\My\Abm.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "a8f3d441968958339869721a96e47521a043724d"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_My_Abm), @"mvc.1.0.view", @"/Views/My/Abm.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\Rappi\Desktop\plataformasGrupo5TPFinal\plataformasGrupo5TPFinal\Views\_ViewImports.cshtml"
using plataformasGrupo5TPFinal;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\Rappi\Desktop\plataformasGrupo5TPFinal\plataformasGrupo5TPFinal\Views\_ViewImports.cshtml"
using plataformasGrupo5TPFinal.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 1 "C:\Users\Rappi\Desktop\plataformasGrupo5TPFinal\plataformasGrupo5TPFinal\Views\My\Abm.cshtml"
using System.Security.Claims;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"a8f3d441968958339869721a96e47521a043724d", @"/Views/My/Abm.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"ed48818e2c6bc955ef2da6dded663ec24e9f3a6c", @"/Views/_ViewImports.cshtml")]
    public class Views_My_Abm : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("<center>\r\n    <div class=\"card\">\r\n        <div class=\"row\">\r\n            <div class=\"col-md-12\">\r\n                <section>\r\n                    <h4>\r\n                        Hola\r\n                        ");
#nullable restore
#line 9 "C:\Users\Rappi\Desktop\plataformasGrupo5TPFinal\plataformasGrupo5TPFinal\Views\My\Abm.cshtml"
                    Write(((ClaimsIdentity)User.Identity).FindFirst(ClaimTypes.Name).Value);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
                    </h4>
                    <br />
                    <a href=""/Usuarios"">Usuarios</a>
                    <br />
                    <a href=""/Reservas"">Reservas</a>
                    <br />
                    <a href=""/Cabañas"">Cabañas</a>
                    <br />
                    <a href=""/Hoteles"">Hoteles</a>

                </section>
            </div>
        </div>
    </div>
</center>");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591