pageextension 50001 CustomerListExt extends "Customer List"
{
    actions
    {
        addfirst(processing)
        {
            action(Sendmail)
            {
                Caption = 'Send Mail';
                ApplicationArea = all;
                trigger OnAction()
                var
                    OutS: OutStream;
                    Ins: InStream;
                    TempBlob: Codeunit "Temp Blob";
                    RecRef: RecordRef;
                    FRef: FieldRef;
                    Body: Text;
                    Receipients: List of [Text];
                // SMTP: Codeunit "SMTP Mail";
                begin
                    TempBlob.CreateOutStream(OutS);
                    RecRef.Open(Database::Customer);
                    FRef := RecRef.Field(1);
                    FRef.SetRange(Rec."No.");
                    Report.SaveAs(50000, '', ReportFormat::Html, OutS, RecRef);
                    TempBlob.CreateInStream(Ins);
                    Ins.ReadText(Body);
                    Receipients.Add('guptamanish0885@gmail.com');
                    // Mail1.CreateMessage('guptamansih0885@gmail.com', '', '', 'Mail From BC', Body, false, false);
                    Mail.Create(Receipients, 'Mail from BC', Body, true, Receipients, Receipients);
                    Mail1.Send();
                    // SMTP.CreateMessage('manish', 'guptamansih0885@gmail.com', Receipients, 'Mail From BC', Body, true);
                    // SMTP.Send();
                    //  Mail1.CreateMessage();
                end;
            }
        }
    }

    var
        Mail: Codeunit "Email Message";
        Mail1: Codeunit Mail;

}