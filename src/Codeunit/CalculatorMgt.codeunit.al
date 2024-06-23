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

}