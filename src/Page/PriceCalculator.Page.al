page 55101 PriceCalculator
{
    Caption = 'Price Calculator';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input';
                field(Quantity; Quantity)
                {
                    Caption = 'Input';
                    ToolTip = 'Enter a quantity';
                    ApplicationArea = All;
                }
                field(Price; Price)
                {
                    Caption = 'Price';
                    ToolTip = 'Enter a price';
                    ApplicationArea = All;
                }

            }
            group(Output)
            {

                field(Result; Result)
                {
                    Editable = false;
                    Caption = 'Result';
                    ToolTip = 'Specifies result of Quantity * Price';
                    ApplicationArea = All;
                }
                field(TotalSales; TotalSales)
                {
                    Editable = false;
                    Caption = 'Total Sales';
                    ToolTip = 'Specifies Total Sales';
                    ApplicationArea = All;
                }
                field(TotalCredits; TotalCredits)
                {
                    Editable = false;
                    Caption = 'Total Credits';
                    ToolTip = 'Specifies Total Credits';
                    ApplicationArea = All;
                }
                field(GrandTotal; GrandTotal)
                {
                    Editable = false;
                    Caption = 'Grand Total';
                    ToolTip = 'Specifies Grand Total';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Execute)
            {
                ApplicationArea = All;
                Caption = 'Execute';
                Image = ExecuteBatch;
                Promoted = true;
                PromotedCategory = New;
                trigger OnAction()
                begin
                    CalcMgt.Execute(Quantity, Price, Result, TotalCredits, TotalSales,
                    GrandTotal);
                end;
            }
            action(Clear)
            {
                ApplicationArea = All;
                Caption = 'Clear';
                Image = ClearFilter;
                Promoted = true;
                PromotedCategory = New;
                trigger OnAction()
                begin
                    ClearAll();
                end;
            }
        }
    }

    var
        Quantity, Price, Result, TotalCredits, TotalSales, GrandTotal : Decimal;
        CalcMgt: Codeunit "Calculator Mgt.";
}