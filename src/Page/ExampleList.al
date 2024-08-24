page 55106 "Example List"
{

    ApplicationArea = All;
    Caption = 'Example List';
    PageType = List;
    SourceTable = Example;
    UsageCategory = Lists;
    CardPageId = 55107;
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(FieldOne; Rec.FieldOne)
                {
                    ApplicationArea = All;
                }
                field(FieldTwo; Rec.FieldTwo)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
