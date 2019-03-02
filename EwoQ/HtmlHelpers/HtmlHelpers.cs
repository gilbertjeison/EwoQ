using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Html;

namespace EwoQ.HtmlHelpers
{
    public static class HtmlHelpers
    {
        public static MvcHtmlString LiActionLink(this HtmlHelper html, string text, string action, string controller)
        {
            var context = html.ViewContext;
            if (context.Controller.ControllerContext.IsChildAction)
                context = html.ViewContext.ParentActionViewContext;
            var routeValues = context.RouteData.Values;
            var currentAction = routeValues["action"].ToString();
            var currentController = routeValues["controller"].ToString();

            var str = String.Format("<li role=\"presentation\"{0}>{1}</li>",
                currentAction.Equals(action, StringComparison.InvariantCulture) &&
                currentController.Equals(controller, StringComparison.InvariantCulture) ?
                " class=\"active\"" :
                String.Empty, html.ActionLink(text, action, controller).ToHtmlString()
            );
            return new MvcHtmlString(str);
        }
             
        public static MvcHtmlString MenuItem(this HtmlHelper htmlHelper, string text, string action, string controller, string num, string icon)
        {
            var routeData = htmlHelper.ViewContext.RouteData;
            var currentAction = routeData.GetRequiredString("action");
            var currentController = routeData.GetRequiredString("controller");
            bool isCurrent = string.Equals(currentAction, action, StringComparison.OrdinalIgnoreCase) && string.Equals(currentController, controller, StringComparison.OrdinalIgnoreCase);
            UrlHelper urlHelper = new UrlHelper(htmlHelper.ViewContext.RequestContext);
            string url = urlHelper.Action(action, controller);
            StringBuilder html = new StringBuilder();
            TagBuilder span = new TagBuilder("span");
            span.AddCssClass("badge pull-right");
            span.InnerHtml = num;
            html.Append(span);
            TagBuilder i = new TagBuilder("i");
            i.AddCssClass(icon);
            html.Append(i);
            span = new TagBuilder("span");
            span.InnerHtml = text;
            html.Append(span);
            TagBuilder a = new TagBuilder("a");
            a.MergeAttribute("href", url);
            if (isCurrent)
            {
                a.AddCssClass("current");
            }
            a.InnerHtml = html.ToString();
            TagBuilder li = new TagBuilder("li");
            if (isCurrent)
            {
                li.AddCssClass("current");
            }
            li.InnerHtml = a.ToString();
            return MvcHtmlString.Create(li.ToString());
        }
    }
}