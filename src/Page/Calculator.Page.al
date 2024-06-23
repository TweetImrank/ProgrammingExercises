page 55100 Calculator
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(Input)
            {
                field(FirstValue; FirstValue)
                {
                    Caption = 'First';
                    ApplicationArea = All;
                }
                field(SecondValue; SecondValue)
                {
                    Caption = 'Second';
                    ApplicationArea = All;
                }

            }
            group(Output)
            {
                group(Left)
                {
                    field(Result; Result)
                    {
                        ApplicationArea = All;
                    }
                }
                group(Right)
                {
                    field(IsBigger; IsBigger)
                    {
                        ApplicationArea = All;
                    }
                    field(IsSmaller; IsSmaller)
                    {
                        ApplicationArea = All;
                    }
                }


            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Plus)
            {
                ApplicationArea = All;
                Caption = '+';
                Image = Calculate;
                Promoted = true;
                PromotedCategory = New;
                trigger OnAction()
                begin
                    Result := CalcMgt.plus(FirstValue, SecondValue);
                end;
            }
            action(Minus)
            {
                ApplicationArea = All;
                Caption = '-';
                Image = Calculate;
                Promoted = true;
                PromotedCategory = New;
                trigger OnAction()
                begin
                    Result := CalcMgt.subtraction(FirstValue, SecondValue);
                end;
            }
            action(Multiply)
            {
                ApplicationArea = All;
                Caption = '*';
                Image = Calculate;
                Promoted = true;
                PromotedCategory = New;
                trigger OnAction()
                begin
                    Result := CalcMgt.multiply(FirstValue, SecondValue);
                end;
            }
            action(Division)
            {
                ApplicationArea = All;
                Caption = '/';
                Image = Calculate;
                Promoted = true;
                PromotedCategory = New;
                trigger OnAction()
                begin
                    Result := CalcMgt.division(FirstValue, SecondValue);
                end;
            }
            action(MOD)
            {
                ApplicationArea = All;
                Caption = 'MOD';
                Image = Calculate;
                Promoted = true;
                PromotedCategory = New;
                trigger OnAction()
                begin
                    Result := CalcMgt.Modular(FirstValue, SecondValue);
                end;
            }
            action(DIV)
            {
                ApplicationArea = All;
                Caption = 'DIV';
                Image = Calculate;
                Promoted = true;
                PromotedCategory = New;
                trigger OnAction()
                begin
                    Result := CalcMgt.remainder(FirstValue, SecondValue);
                end;
            }
            action(Greaterthan)
            {
                ApplicationArea = All;
                Caption = '>';
                Image = Calculate;
                Promoted = true;
                PromotedCategory = New;
                trigger OnAction()
                begin
                    IsBigger := CalcMgt.greaterthan(FirstValue, SecondValue);
                    IsSmaller := NOT IsBigger;
                end;
            }
        }
    }

    var
        FirstValue, SecondValue, Result : Decimal;
        IsBigger, IsSmaller : Boolean;
        CalcMgt: Codeunit "Calculator Mgt.";
}