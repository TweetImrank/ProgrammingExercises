codeunit 55101 "Calculator Mgt."
{
    procedure plus(firstvalue: Decimal; secondvalue: Decimal): Decimal
    begin
        exit(firstvalue + secondvalue);
    end;

    procedure subtraction(firstvalue: Decimal; secondvalue: Decimal): Decimal
    begin
        exit(firstvalue - secondvalue);
    end;

    procedure multiply(firstvalue: Decimal; secondvalue: Decimal): Decimal
    begin
        exit(firstvalue * secondvalue);
    end;

    procedure division(firstvalue: Decimal; secondvalue: Decimal): Decimal
    begin
        exit(firstvalue / secondvalue);
    end;

    procedure modular(firstvalue: Decimal; secondvalue: Decimal): Decimal
    begin
        exit(firstvalue MOD secondvalue);
    end;

    procedure remainder(firstvalue: Decimal; secondvalue: Decimal): Decimal
    begin
        exit(firstvalue DIV secondvalue);
    end;

    procedure greaterthan(firstvalue: Decimal; secondvalue: Decimal): Boolean
    begin
        exit(firstvalue > secondvalue);
    end;

    procedure Execute(Qty: Decimal; Price: Decimal; var Result: Decimal; var TotalCredits: Decimal; var TotalSales: Decimal; var GrandTotal: Decimal)
    begin
        if Qty = 0 then
            exit;

        Result := Qty * Price;

        if Result < 0 then
            TotalCredits -= Result
        else if Result > 0 then
            TotalSales += Result;

        GrandTotal := TotalSales - TotalCredits;

    end;

    procedure GetNumbersfromText(myText: Text): Text
    var
        i: Integer;
        OneTxt: Text;
        ReturnValue: Text;

    begin
        For i := 1 to StrLen(myText) do begin
            OneTxt := CopyStr(myText, i, 1);
            if IsNumeric(OneTxt) then
                ReturnValue := ReturnValue + OneTxt;
        end;
        exit(ReturnValue);
    end;

    local procedure IsNumeric(varText: Text): Boolean
    var
        varInteger: Integer;
    begin
        exit(Evaluate(varInteger, varText));
    end;

    procedure GetArmstrongNumber(FirstNumber: Integer; SecondNumber: Integer)
    var
        i: Integer;
        j: Integer;
        SingleDigit: Integer;
        lastchar: Text;
        lastchardec: Decimal;
        currentchar: Text;
        currentchardec: Decimal;
        addnumber: Decimal;
        finalmessage: Text;
    begin
        For i := FirstNumber to SecondNumber do begin
            addnumber := 0;
            lastchar := CopyStr(format(i), STRLEN(format(i)), 1);
            Evaluate(lastchardec, lastchar);
            For j := 1 to strlen(Format(i)) do begin
                currentchar := CopyStr(format(i), j, 1);
                Evaluate(currentchardec, currentchar);
                addnumber += Power(currentchardec, lastchardec);
            end;
            if i = addnumber then
                finalmessage := finalmessage + Format(i) + ' * ';
        end;
        Message(finalmessage);
    end;

}