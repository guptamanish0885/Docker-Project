page 50003 "Item Ledger Entries "
{
    ApplicationArea = All;
    Caption = 'Item Ledger Entries ';
    PageType = ListPart;
    SourceTable = "Item Ledger Entries ";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Entry No. "; Rec."Entry No. ")
                {
                    ToolTip = 'Specifies the value of the Entry No.  field.';
                    ApplicationArea = All;
                }
                field("Entry Type"; Rec."Entry Type")
                {
                    ToolTip = 'Specifies the value of the Entry Type field.';
                    ApplicationArea = All;
                }
                field("Item No. "; Rec."Item No. ")
                {
                    ToolTip = 'Specifies the value of the Item No.  field.';
                    ApplicationArea = All;
                }
                field(Description; rec.Description)
                {
                    ApplicationArea = all;
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ToolTip = 'Specifies the value of the Posting Date field.';
                    ApplicationArea = All;
                }
                field("Location Code "; Rec."Location Code ")
                {
                    ToolTip = 'Specifies the value of the Location Code  field.';
                    ApplicationArea = All;
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ToolTip = 'Specifies the value of the Unit Price field.';
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the value of the Quantity field.';
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    ToolTip = 'Specifies the value of the Amount field.';
                    ApplicationArea = All;
                }
                field("Document No. "; Rec."Document No. ")
                {
                    ToolTip = 'Specifies the value of the Document No.  field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
