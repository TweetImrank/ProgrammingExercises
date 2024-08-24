page 55102 GetTheNumbers
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Get the Numbers';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                field(Name; InputText)
                {
                    Caption = 'Input';
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(GettheNumbers)
            {
                ApplicationArea = All;
                Caption = 'Get the Numbers';
                Image = Action;
                Promoted = true;
                PromotedCategory = New;
                trigger OnAction()
                begin
                    Message('%1', CalcMgt.GetNumbersfromText(InputText));
                end;
            }
        }
    }

    var
        InputText: Text;
        CalcMgt: Codeunit "Calculator Mgt.";
}