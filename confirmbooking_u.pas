unit confirmbooking_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TfrmConBooking = class(TForm)
    Panel1: TPanel;
    redShowBooking: TRichEdit;
    btnFinalCon: TButton;
    btnBack: TButton;
    Image1: TImage;
    procedure btnBackClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFinalConClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConBooking: TfrmConBooking;

implementation

{$R *.dfm}
uses
  cleansweepmain_u, clsInvoice_u;

procedure TfrmConBooking.btnBackClick(Sender: TObject);
begin
  frmConBooking.close;
  frmCleanSweepMain.btnConBooking.Enabled := true;
end;

procedure TfrmConBooking.btnFinalConClick(Sender: TObject);
  var objInvoice : TInvoice;
  bFlag : boolean;
  tfInvoice : textfile;
  sLine : string;
begin
  //Confirmation needed from user
  if MessageDlg('Do you want to finalize your booking?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes
  then
    begin
      //Loads Proc. for update of DB
      frmCleanSweepMain.InsertBookingInvoiceJob;
      //Response for user
      showmessage('Your booking was finalized. Thank you for choosing us.');
      //Deactivate button
      btnFinalCon.Enabled := false;
      btnBAck.Enabled := false;
      //Option to display invoice
      if MessageDlg('Do you want to view your invoice?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes
        then
        begin
          //Creation and Use of clsInvoice
          objInvoice := TInvoice.CreateInvoice;
          objInvoice.setInvoiceID(iInvoiceID);
          if objInvoice.DetermineInvoiceDetails(iInvoiceID) = true then
          begin
            bFlag := true;
            if objInvoice.DetermineUserDetails(iUserID) = true then
              begin
                bFlag := true;
                objInvoice.setUserID(iUserID);
                if objInvoice.DetermineBookingDetails(iBookingID) = true then bFlag := true else bFlag := false;//Job
              end
              else bFlag := false//User
          end
          else bFlag := false;//Invoice
          if bFlag = true then
            begin
              objInvoice.getPriceDetails(rPropType, rBathPrice, rBedPrice, rServiceType);
              objInvoice.WriteInvoiceTxt;
            end;

          //Read of Invoice.txt
          redShowBooking.Lines.Clear;
          if FileExists('Invoice.txt') = false then
            begin
              showmessage('File not found.');
              exit;
            end;
          AssignFile( tfInvoice, 'Invoice.txt');
          Reset(tfInvoice);
          while not eof(tfInvoice) do
            begin
              Readln(tfInvoice, sLine);
              redShowBooking.Lines.Add(sLine);
            end;//while txt
          CloseFile(tfInvoice);
          objInvoice.Free;
        end//MessageDlg
        else
          begin
            showmessage('Thank you for time. Your service will arrive within time. You will now be forcefully exited');
            frmCleanSweepMain.Close;
          end;
    end
  else//Response fo user
  showmessage('Booking was not finalized. Feel free to change the information where needed.');

end;

procedure TfrmConBooking.FormClose(Sender: TObject; var Action: TCloseAction);
  var objInvoice : TInvoice;
begin
  objInvoice := TInvoice.CreateInvoice;
  objInvoice.Free;
end;

procedure TfrmConBooking.FormShow(Sender: TObject);
  var tf : textfile;
  sLine : string;
begin
  redShowBooking.Lines.Clear;
  //Display the txtfile
  if FileExists('Booking.txt') = false then
    begin
      Showmessage('File not Found');
      Exit;
    end;
  AssignFile( tf , 'Booking.txt');
  Reset(tf);
  while not eof(tf) do
    begin
      ReadLn( tf, sLine);
      redShowBooking.Lines.Add(sLine);
    end;
  CloseFile(tf);
end;

end.
