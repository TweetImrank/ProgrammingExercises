page 55105 "MyDevCustomer List"
{

    ApplicationArea = All;
    Caption = 'MyDev Cutomer List';
    PageType = ListPlus;
    SourceTable = MyDevCustomer;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {

            group(Input)
            {
                Caption = 'Input';
                field(SearchText; SearchText)
                {
                    Caption = 'Search by City';
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        if Text.StrPos(SearchText, '*') = 0 then
                            error('* should be included in the search text');
                    end;
                }

            }

            repeater(General)
            {
                Editable = false;
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(CopyfromCustomer)
            {
                Caption = 'Copy from Customer';
                ApplicationArea = All;
                Image = Copy;
                trigger OnAction()
                var
                    Customer: Record Customer;
                    MyDevCustomer: Record MyDevCustomer;
                begin
                    Customer.SetFilter(City, SearchText);
                    if Customer.FindSet() then
                        repeat
                            if MyDevCustomer.get(Customer."No.") then begin
                                MyDevCustomer.Name := Customer.Name;
                                MyDevCustomer.City := Customer.City;
                                MyDevCustomer.Modify();
                            end else begin
                                MyDevCustomer."No." := Customer."No.";
                                MyDevCustomer.Name := Customer.Name;
                                MyDevCustomer.City := Customer.City;
                                MyDevCustomer.Insert();
                            end;
                        until Customer.Next() = 0;
                    CurrPage.Update();
                end;
            }
            action(EmptyTable)
            {
                Caption = 'Empty Table';
                ApplicationArea = All;
                Image = Delete;
                trigger OnAction()
                var
                    MyDevCustomer: Record MyDevCustomer;
                begin
                    MyDevCustomer.DeleteAll();
                    CurrPage.Update();
                end;
            }
        }
    }
    var
        SearchText: Text;
}
