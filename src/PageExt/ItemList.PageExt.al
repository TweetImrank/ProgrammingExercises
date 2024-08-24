pageextension 55101 MyItemList extends "Item List"
{
    layout
    {
        addafter(InventoryField)
        {
            field(Availability1; Availability)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies Availability';
                Style = Strong;
                StyleExpr = MyStyleVar;
                DecimalPlaces = 0 : 5;
            }
        }
    }

    actions
    {
        addafter("C&alculate Counting Period")
        {
            action(CalculateAvailibilitySelected)
            {
                ApplicationArea = All;
                Caption = 'Calculate Availibility Selected';
                Image = Inventory;
                ShortcutKey = 'Shift+Ctrl+A';
                trigger OnAction()
                begin
                    CalculateAvailabilitySelected();
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    var
        Item: Record Item;
    begin
        Rec.CalcFields(Inventory, "Qty. on Purch. Order", "Qty. on Sales Order");
        Availability := Rec.Inventory + Rec."Qty. on Purch. Order" - Rec."Qty. on Sales Order";
        if Availability > Rec.Inventory then
            MyStyleVar := 'Favorable'
        else if Availability < Rec.Inventory then
            MyStyleVar := 'Attention'
        else
            MyStyleVar := 'Standard';

    end;

    local procedure CalculateAvailabilitySelected()
    var
        Item: Record Item;
        TotalAvailibility: Decimal;
    begin
        TotalAvailibility := 0;
        CurrPage.SetSelectionFilter(Item);
        Item.Next();

        Repeat
            Item.CalcFields(Inventory, "Qty. on Purch. Order", "Qty. on Sales Order");
            Availabilityselected := Item.Inventory + Item."Qty. on Purch. Order" - Item."Qty. on Sales Order";
            TotalAvailibility += Availabilityselected;
        until Item.Next() = 0;



        Message('The total availability of the selected Items is %1', TotalAvailibility);
        //TotalAvailibility := 0;
    end;

    var
        Availability: Decimal;
        Availabilityselected: Decimal;
        MyStyleVar: Text;

}