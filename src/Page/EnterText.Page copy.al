page 55104 DataManupulationExamples
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Data Manipulation Examples';

    /* layout
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
     }*/

    actions
    {
        area(Processing)
        {
            action(FindSomeRecords)
            {
                ApplicationArea = All;
                Caption = 'Find Some Records';
                Image = Find;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                var
                    Customer: Record Customer;
                begin
                    //Customer.FindFirst();
                    Customer.FindLast();
                    Message('%1', Customer);
                end;
            }
            action(LoopOverAllVendors)
            {
                ApplicationArea = All;
                Caption = 'Loop Over All Vendors';
                Image = Find;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                var
                    Vendor: Record Vendor;
                begin
                    Vendor.FindSet();
                    repeat
                        Message('%1', Vendor);
                    until Vendor.Next() = 0;
                end;
            }
            action(GetItem)
            {
                ApplicationArea = All;
                Caption = 'Get Item';
                ToolTip = 'Get Item';
                Image = Item;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                var
                    Item: Record Item;
                begin
                    if Item.Get('1900-S') then
                        Message('%1', Item);
                end;
            }
            action(GetCustomersFromLAtlanta)
            {
                ApplicationArea = All;
                Caption = 'Get Customers from Atlanta';
                ToolTip = 'Get Customers from Atlanta';
                Image = Find;
                trigger OnAction()
                var
                    Customer: Record Customer;
                begin
                    Customer.SetRange(City, 'Atlanta');
                    if Customer.FindSet() then
                        repeat
                            Message('%1', Customer);
                        until Customer.Next() = 0;
                end;
            }
            action(GetCustomersNotFromLondon)
            {
                ApplicationArea = All;
                Caption = 'Get Customers Not from Atlanta';
                ToolTip = 'Get Customers Not from Atlanta';
                Image = Find;
                trigger OnAction()
                var
                    Customer: Record Customer;
                begin
                    Customer.setfilter(City, '<>Atlanta');
                    if Customer.FindSet() then
                        repeat
                            Message('%1', Customer);
                        until Customer.Next() = 0;
                end;
            }
        }
    }

    var
        InputText: Text;
        CalcMgt: Codeunit "Calculator Mgt.";
}