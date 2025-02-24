unit clsInvoice_u;

interface

uses SysUtils, Vcl.Dialogs, math, Data.DB, Vcl.Grids, Vcl.DBGrids, dmcleaningservice_u, cleansweepmain_u;

Type
  TInvoice = class(TObject)
  private
    fInvoiceID : integer;
    fBooking : integer;
    fAmount : real;
    fUserID : integer;
    fName : string;
    fSurname : string;
    fDateIssued : string;
    fEmail : string;
    fAddresse : string;
    fServiceType : string;
    fServiceTypePrice : real;
    fBathPrice : real;
    fBedPrice : real;
    fPropTypePrice : real;
  public
   procedure setInvoiceID ( iInvoice : integer);
   procedure getInvoiceDetails ( rAmount : real; sDateIssued : string );
   procedure setUserID ( iUserID : integer);
   procedure getUserDetails ( sName, sSurname, sAddresse, sEmail : string);
   procedure getBookingDetails ( sServiceType : string);
   procedure getPriceDetails ( rPropType, rBath, rBed, rServiceType : real);
   procedure WriteInvoiceTxt;
   function DetermineInvoiceDetails (iInvoiceID : integer) : boolean;
   function DetermineUserDetails ( iUser : integer ) : boolean;
   function DetermineBookingDetails ( iBookingID : integer ) : boolean;
   constructor CreateInvoice;
  end;

implementation

{ TInvoice }

constructor TInvoice.CreateInvoice;
begin
  fInvoiceID := 0;
  fBooking := 0;
  fAmount := 0;
  fUserID := 0;
  fPropTypePrice := 0;
  fBathPrice := 0;
  fBedPrice := 0;
  fServiceTypePrice := 0;
  fName := '';
  fSurname := '';
  fDateIssued := '';
  fEmail := '';
  fAddresse := '';
  fServiceType := '';
end;

function TInvoice.DetermineInvoiceDetails ( iInvoiceID : integer ): boolean;
  var bFlag : boolean;
begin
  bFlag := false;
  dmCleaningService.tblInvoice.Open;
  dmCleaningService.tblInvoice.First;
  while not dmCleaningService.tblInvoice.Eof and bFlag = false do
    begin
      if iInvoiceID = dmCleaningService.tblInvoice.FieldByName('InvoiceID').AsInteger then
        begin
          getInvoiceDetails( dmCleaningService.tblInvoice.FieldByName('Amount').AsInteger, dmCleaningService.tblInvoice.FieldByName('DateIssued').AsString ) ;
          bFlag := true;
        end
      else
      dmCleaningService.tblInvoice.Next;
    end;
  if bFlag = true then Result := true;
end;

function TInvoice.DetermineBookingDetails(iBookingID: integer): boolean;
  var  bFlag : boolean;
begin
  bFlag := false;
  dmCleaningService.tblBooking.Open;
  dmCleaningService.tblBooking.First;
  while not dmCleaningService.tblBooking.Eof and bFlag = false do
    begin
      if iBookingID = dmCleaningService.tblBooking.FieldByName('BookingID').AsInteger then
        begin
          getBookingDetails(dmCleaningService.tblBooking.FieldByName('ServiceType').AsString);
          bFlag := true
        end
      else dmCleaningService.tblBooking.Next;
    end;
  if bFlag = true then result := true;
  
end;

function TInvoice.DetermineUserDetails(iUser: integer): boolean;
  var sSQL : string;
begin
  sSQL := ' Select *'+
          ' From tblUser'+
          ' Where UserID = '+inttostr(iUser)+' ';
  dmCleaningService.tblqUser.SQL.Text := sSQL;
  dmCleaningService.tblqUser.Open;
  getUserDetails(dmCleaningService.tblqUser.FieldByName('Name').AsString, dmCleaningService.tblqUser.FieldByName('Surname').AsString, dmCleaningService.tblqUser.FieldByName('Addresse').AsString, dmCleaningService.tblqUser.FieldByName('Email').AsString);
  if dmCleaningService.tblqUser.Recordcount = 1 then Result := true;
  dmCleaningService.tblqUser.Close;
end;

procedure TInvoice.getInvoiceDetails(rAmount: real; sDateIssued : string);
begin
  fAmount := rAmount;
  fDateIssued := sDateIssued;
end;

procedure TInvoice.getPriceDetails(rPropType, rBath, rBed, rServiceType: real);
begin
  fPropTypePrice := rPropType;
  fBathPrice := rBath;
  fBedPrice := rBed;
  fServiceTypePrice := rServiceType;
end;

procedure TInvoice.getBookingDetails(sServiceType: string);
begin
  fServiceType := sServiceType;
end;

procedure TInvoice.getUserDetails(sName, sSurname, sAddresse, sEmail: string);
begin
  fName := sName;
  fSurname := sSurname;
  fAddresse := sAddresse;
  fEmail := sEmail;
end;

procedure TInvoice.setInvoiceID( iInvoice : integer);
begin
  fInvoiceID := iInvoice;
end;

procedure TInvoice.setUserID(iUserID: integer);
begin
  fUserID := iUserID;
end;

procedure TInvoice.WriteInvoiceTxt;
  var tfInvoice : textfile;
begin
  AssignFile(tfInvoice, 'Invoice.txt');
  Rewrite(tfInvoice);
  Writeln(tfInvoice, 'CLEANSWEEP');
  Writeln(tfInvoice, 'CleanSweep.co.za');
  Writeln(tfInvoice,'Invoice Number' + ' ' +inttostr(fInvoiceID) );
  Writeln(tfInvoice,'Issued on '+ fDateIssued);
  Writeln(tfInvoice,'-----------------------');
  Writeln(tfInvoice,'BILLED TO');
  Writeln(tfInvoice,'-----------------------');
  Writeln(tfInvoice, fName + ' ' + fSurname);
  Writeln(tfInvoice, fEmail);
  Writeln(tfInvoice, fAddresse);
  Writeln(tfInvoice,'-----------------------');
  Writeln(tfInvoice, 'SERVICE COSTS');
  Writeln(tfInvoice,'-----------------------');
  Writeln(tfInvoice, fServiceType + ' :' + 'R' + floattostr(fServiceTypePrice));
  Writeln(tfInvoice, 'Type of Property : ' + 'R' + floattostr(fPropTypePrice));
  Writeln(tfInvoice, 'Bathroom : ' + 'R'+ floattostr(fBathPrice));
  Writeln(tfInvoice, 'Bedroom : '+ 'R' + floattostr(fBedPrice));
  Writeln(tfInvoice, '');
  Writeln(tfInvoice,'Total of Service : '+ 'R'+ floattostr(fAmount) );
  CloseFile(tfInvoice);
end;

end.
