page 50002 "Item Master"
{
    Caption = 'Item Master';
    PageType = Card;
    SourceTable = "Item Master";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'Item Master';
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                    ApplicationArea = All;
                }
                field(Description2; Rec.Description2)
                {
                    ToolTip = 'Specifies the value of the Description2 field.';
                    ApplicationArea = All;
                }
                field("Base Unit Of Measure "; Rec."Base Unit Of Measure ")
                {
                    ToolTip = 'Specifies the value of the Base Unit Of Measure  field.';
                    ApplicationArea = All;
                }
                field("Assebly Bom"; Rec."Assebly Bom")
                {
                    ToolTip = 'Specifies the value of the Assebly Bom field.';
                    ApplicationArea = All;
                }
                field("Automatic Ext. Texts"; Rec."Automatic Ext. Texts")
                {
                    ToolTip = 'Specifies the value of the Automatic Ext. Texts field.';
                    ApplicationArea = All;
                }
                field("Created From Non Stock Items "; Rec."Created From Non Stock Items ")
                {
                    ToolTip = 'Specifies the value of the Created From Non Stock Items  field.';
                    ApplicationArea = All;
                }
                field("Item Category Code "; Rec."Item Category Code ")
                {
                    ToolTip = 'Specifies the value of the Item Category Code  field.';
                    ApplicationArea = All;
                }
                field(Inventory; Rec.Inventory)
                {
                    ToolTip = 'Specifies the value of the Inventory field.';
                    ApplicationArea = All;
                }
                field("Highest Sale Of Date"; Rec."Highest Sale Of Date")
                {
                    ToolTip = 'Specifies the value of the Highest Sale Of Date field.';
                    ApplicationArea = All;
                }
                field("Total Sale Of Date"; Rec."Total Sale Of Date")
                {
                    ToolTip = 'Specifies the value of the Total Sale Of Date field.';
                    ApplicationArea = All;
                }
            }
            group("Entry Variables")
            {
                field(Entrytype; Entrytype)
                {
                    ApplicationArea = all;
                }
                field(PostingDate; PostingDate)
                {
                    ApplicationArea = all;
                }
                field(LocationCode; LocationCode)
                {
                    ApplicationArea = all;
                }
                field(Qty; Qty)
                {
                    Caption = 'Quantity';
                    ApplicationArea = all;
                }
                field(UnitPrice; UnitPrice)
                {
                    ApplicationArea = all;
                }
                field(DocumentNo; DocumentNo)
                {
                    ApplicationArea = all;
                }
            }
            group("Ledger Entries")
            {
                part("Item Ledger Entries "; "Item Ledger Entries ")
                {
                    SubPageLink = "Item No. " = field("No.");
                }
            }
        }
    }
    var
        Entrytype: Option Purchae,Sale;
        PostingDate: Date;
        LocationCode: Text[30];
        Qty: Decimal;
        UnitPrice: Decimal;
        DocumentNo: Code[20];
}
