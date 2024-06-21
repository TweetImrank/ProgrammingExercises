pageextension 55100 CustomerListExt extends "Customer List"
{

    actions
    {
        addfirst("&Customer")
        {
            action(VariablesAndDatatypes)
            {
                Caption = 'Run VariablesAndDatatypes Codeunit';
                ToolTip = 'Run the VariablesAndDatatypes Codeunit';
                Image = Process;
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;
                RunObject = codeunit VariablesAndDatatypes;
            }
        }
    }
}