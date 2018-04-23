using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected string GetCardValue(CardViewDataItemTemplateContainer container)
    {
        return container.CardView.GetCardValuesByKeyValue(container.KeyValue, "CategoryName").ToString();
    }
}