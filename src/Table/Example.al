table 55102 Example
{
    DataClassification = CustomerContent;
    Caption = 'Example';
    fields
    {
        field(1; FieldOne; Integer)
        {
            DataClassification = CustomerContent;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                TriggerLog.InsertLogEntry(Rec.TableName, 'OnValidate Field One');
            end;

            trigger OnLookup()
            var
                myInt: Integer;
            begin
                TriggerLog.InsertLogEntry(Rec.TableName, 'OnLookup Field One');
            end;

        }
        field(2; FieldTwo; Integer)
        {
            DataClassification = CustomerContent;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                TriggerLog.InsertLogEntry(Rec.TableName, 'OnValidate Field Two');
            end;

            trigger OnLookup()
            var
                myInt: Integer;
            begin
                TriggerLog.InsertLogEntry(Rec.TableName, 'OnLookup Field Two');
            end;
        }
    }

    keys
    {
        key(PK; FieldOne)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        TriggerLog: Record TriggerLog;

    trigger OnInsert()
    begin
        TriggerLog.InsertLogEntry(Rec.TableName, 'OnInsert');
    end;

    trigger OnModify()
    begin
        TriggerLog.InsertLogEntry(Rec.TableName, 'OnModify');
    end;

    trigger OnDelete()
    begin
        TriggerLog.InsertLogEntry(Rec.TableName, 'OnDelete');
    end;

    trigger OnRename()
    begin
        TriggerLog.InsertLogEntry(Rec.TableName, 'OnRename');
    end;

}