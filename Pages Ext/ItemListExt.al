/// <summary>
/// PageExtension ItemListExt (ID 50002) extends Record Item List.
/// </summary>
pageextension 50002 ItemListExt extends "Item List"
{

    actions
    {
        addbefore("Item Journal")
        {
            action("Show Json")
            {
                Caption = 'Show Json';
                ApplicationArea = All;
                Promoted = true;
                Image = Document;
                PromotedCategory = Process;
                PromotedIsBig = true;
                trigger OnAction()
                var
                    jsonobj: JsonObject;
                    jsonAr: JsonArray;
                    jtoken: JsonToken;
                    jValue: JsonValue;
                    jsonObj1: JsonObject;
                    jsonAr1: JsonArray;
                    text: Text;
                begin
                    jsonobj.Add('Item', 'Item123');
                    jsonobj.Add('Price', 123.456);
                    jsonobj.Add('Version', '0.2.0');
                    jsonObj1.Add('No', 1234);
                    jsonAr.Add(jsonObj1);
                    Clear(jsonObj1);
                    jsonObj1.Add('No', 2345);
                    jsonAr.Add(jsonObj1);
                    jsonAr.Add(1200);
                    jsonAr.Add(2200);
                    jsonobj.Add('Items', jsonAr);
                    jsonobj.WriteTo(text);
                    Message('%1', text);
                end;
            }
        }
    }

    var
        myInt: Integer;
}