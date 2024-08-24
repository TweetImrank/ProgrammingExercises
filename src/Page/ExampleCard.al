page 55107 "Example Card"
{

    Caption = 'Example Card';
    PageType = Card;
    SourceTable = Example;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(FieldOne; Rec.FieldOne)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        TriggerLog.InsertLogEntry(CurrPage.ObjectId(true), 'Field One OnValidate');
                    end;

                }
                field(FieldTwo; Rec.FieldTwo)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        TriggerLog.InsertLogEntry(CurrPage.ObjectId(true), 'Field Two OnValidate');
                    end;
                }
            }
        }
    }
    trigger OnAfterGetCurrRecord()
    var
        myInt: Integer;
    begin
        TriggerLog.InsertLogEntry(CurrPage.ObjectId(true), 'OnAfterGetCurrRecord');
    end;

    trigger OnAfterGetRecord()
    var
        myInt: Integer;
    begin
        TriggerLog.InsertLogEntry(CurrPage.ObjectId(true), 'OnAfterGetRecord');
    end;

    trigger OnClosePage()
    var
        myInt: Integer;
    begin
        TriggerLog.InsertLogEntry(CurrPage.ObjectId(true), 'OnClosePage');
    end;

    trigger OnDeleteRecord(): Boolean
    var
        myInt: Integer;
    begin
        TriggerLog.InsertLogEntry(CurrPage.ObjectId(true), 'OnDeleteRecord');
    end;

    trigger OnFindRecord(Which: Text): Boolean
    var
        myInt: Integer;
    begin
        TriggerLog.InsertLogEntry(CurrPage.ObjectId(true), 'OnFindRecord');
    end;

    trigger OnInit()
    var
        myInt: Integer;
    begin
        TriggerLog.InsertLogEntry(CurrPage.ObjectId(true), 'OnInit');
    end;

    trigger OnInsertRecord(Belowxrec: Boolean): Boolean
    var
        myInt: Integer;
    begin
        TriggerLog.InsertLogEntry(CurrPage.ObjectId(true), 'OnInsertRecord');
    end;

    trigger OnModifyRecord(): Boolean
    var
        myInt: Integer;
    begin
        TriggerLog.InsertLogEntry(CurrPage.ObjectId(true), 'OnModifyRecord');
    end;

    trigger OnNewRecord(Belowxrec: Boolean)
    var
        myInt: Integer;
    begin
        TriggerLog.InsertLogEntry(CurrPage.ObjectId(true), 'OnNewRecord');
    end;

    trigger OnNextRecord(Steps: Integer): Integer
    var
        myInt: Integer;
    begin
        TriggerLog.InsertLogEntry(CurrPage.ObjectId(true), 'OnNextRecord');
    end;

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        TriggerLog.InsertLogEntry(CurrPage.ObjectId(true), 'OnOpenPage');
    end;

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    var
        myInt: Integer;
    begin
        TriggerLog.InsertLogEntry(CurrPage.ObjectId(true), 'OnQueryClosePage');
    end;

    var
        TriggerLog: Record TriggerLog;

}
