page 55103 GetArmstrongNumbers
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Get Armstrong Numbers';

    layout
    {
        area(Content)
        {
            group(EnterNumbers)
            {
                Caption = 'Enter a start and end Number';
                field(StartNumber; StartNumber)
                {
                    Caption = 'Start Number';
                    ApplicationArea = All;

                }
                field(EndNumber; EndNumber)
                {
                    Caption = 'End Number';
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
                Caption = 'Get Armstrong Numbers';
                Image = Find;
                Promoted = true;
                PromotedCategory = New;
                trigger OnAction()
                begin
                    CalcMgt.GetArmstrongNumber(StartNumber, EndNumber);
                end;
            }
        }
    }

    var
        StartNumber: Integer;
        EndNumber: Integer;
        CalcMgt: Codeunit "Calculator Mgt.";
}