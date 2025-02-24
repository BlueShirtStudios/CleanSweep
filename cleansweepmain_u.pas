unit cleansweepmain_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, confirmbooking_u, math, cleansweeplogin_u,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Buttons;

type
  TfrmCleanSweepMain = class(TForm)
    pgcCSMain: TPageControl;
    tbsChecklist: TTabSheet;
    pnlBackGrd1: TPanel;
    btnConBooking: TButton;
    tbsAddAcc: TTabSheet;
    Panel1: TPanel;
    btnBack: TButton;
    tbsStaffHome: TTabSheet;
    tbsAdminHome: TTabSheet;
    pnlBackground2: TPanel;
    pnlBackground1: TPanel;
    dbgStaff: TDBGrid;
    btnExit: TButton;
    btnChangeCrew: TButton;
    btnViewJobDetails: TButton;
    btnAcceptBooking: TButton;
    pnlBackGround: TPanel;
    pnlBackground4: TPanel;
    pnlBackground5: TPanel;
    dbgAdmin: TDBGrid;
    btnUpdatePayment: TButton;
    tbsGenerateReport: TTabSheet;
    pnlBackground6: TPanel;
    redGenReport: TRichEdit;
    btnOutGenReport: TButton;
    pnlBackGrd2: TPanel;
    grbPropInfo: TGroupBox;
    lblPropType: TLabel;
    lblNumBath: TLabel;
    lblNumBed: TLabel;
    lblAddresse: TLabel;
    cmbPropType: TComboBox;
    cmbNumBath: TComboBox;
    cmbNumBed: TComboBox;
    pnlHelp1: TPanel;
    memHelp1: TMemo;
    chbPet: TCheckBox;
    edtAddresse: TEdit;
    pnlBackGrd3: TPanel;
    gpbSerInfo: TGroupBox;
    lblSerType: TLabel;
    lblFreq: TLabel;
    lblDay: TLabel;
    pnlHelp2: TPanel;
    memHelp2: TMemo;
    cmbSerType: TComboBox;
    cmbFreqOfSer: TComboBox;
    cmbDayOfSer: TComboBox;
    pnlBAckground7: TPanel;
    lblAccountCreate: TLabel;
    edtAddName: TEdit;
    lblAddName: TLabel;
    lblAddSurname: TLabel;
    edtAddSurname: TEdit;
    lblAddCell: TLabel;
    edtAddCell: TEdit;
    lblAddAddresse: TLabel;
    edtAddAddresse: TEdit;
    lblAddEmail: TLabel;
    edtAddEmail: TEdit;
    btnCreateAccount: TButton;
    btnAddAccExit: TButton;
    btnAddresseHelp: TButton;
    btnaddAccHelp: TButton;
    btnAddAccAddressHelp: TButton;
    cmbFilterDAy: TComboBox;
    lblWorkDay: TLabel;
    Label1: TLabel;
    cmbTimes: TComboBox;
    btnMotivation: TButton;
    lblMotivation: TLabel;
    grbShowOutstandingPayments: TGroupBox;
    btnShowAll: TButton;
    cmbSelectMonth: TComboBox;
    btnCertainUser: TButton;
    grbPastPayments: TGroupBox;
    btnAllHisPAYments: TButton;
    cmbPayRange: TComboBox;
    btnBoss: TButton;
    btnBosstoAdmin: TButton;
    btnAdminExit: TButton;
    btnGenReport: TButton;
    btnFreqHelp: TButton;
    pnlBackground8: TPanel;
    pnlBackGround3: TPanel;
    lblCreateUP: TLabel;
    lblAddUsername: TLabel;
    lblAddPassword: TLabel;
    lblPassHelp: TLabel;
    edtAddPassword: TEdit;
    edtAddUsername: TEdit;
    btnAddUserPass: TButton;
    btnAddAccPassHelp: TButton;
    rdgManageUsers: TRadioGroup;
    rbtShowAll: TRadioButton;
    rbtDeleteUser: TRadioButton;
    rbgSortUser: TRadioButton;
    imgBackground3: TImage;
    imgBubble1: TImage;
    pnlBackGround9: TPanel;
    imgMascot: TImage;
    lblToad1: TLabel;
    btnBackAdmin: TButton;
    lblToad2: TLabel;
    rgbReportOptions: TRadioGroup;
    memReport: TMemo;
    pnlMotivation1: TPanel;
    btnAdminMotiMsg: TButton;
    tmrChangeMascot: TTimer;
    rbtSortUserDESC: TRadioButton;
    btnReload: TBitBtn;
    btnReload1: TBitBtn;
    procedure btnConBookingClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnChangeCrewClick(Sender: TObject);
    procedure tbsStaffHomeShow(Sender: TObject);
    procedure btnViewJobDetailsClick(Sender: TObject);
    procedure btnAcceptBookingClick(Sender: TObject);
    procedure btnCreateAccountClick(Sender: TObject);
    procedure btnAddUserPassClick(Sender: TObject);
    procedure btnAddAccExitClick(Sender: TObject);
    procedure btnUpdatePaymentClick(Sender: TObject);
    procedure btnGenReportClick(Sender: TObject);
    procedure btnOutGenReportClick(Sender: TObject);
    procedure edtAddresseEnter(Sender: TObject);
    procedure btnAddresseHelpClick(Sender: TObject);
    procedure btnAddAccAddressHelpClick(Sender: TObject);
    procedure btnaddAccHelpClick(Sender: TObject);
    procedure btnAddAccPassHelpClick(Sender: TObject);
    procedure cmbFilterDAyChange(Sender: TObject);
    procedure cmbTimesChange(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnMotivationClick(Sender: TObject);
    procedure btnShowAllClick(Sender: TObject);
    procedure btnShowCertainMonthClick(Sender: TObject);
    procedure cmbSelectMonthChange(Sender: TObject);
    procedure btnCertainUserClick(Sender: TObject);
    procedure btnAllHisPAYmentsClick(Sender: TObject);
    procedure cmbPayRangeChange(Sender: TObject);
    procedure btnBossClick(Sender: TObject);
    procedure btnBosstoAdminClick(Sender: TObject);
    procedure cmbSerTypeChange(Sender: TObject);
    procedure btnFreqHelpClick(Sender: TObject);
    procedure edtAddNameChange(Sender: TObject);
    procedure edtAddSurnameChange(Sender: TObject);
    procedure edtAddCellChange(Sender: TObject);
    procedure edtAddAddresseChange(Sender: TObject);
    procedure edtAddEmailChange(Sender: TObject);
    procedure edtAddUsernameChange(Sender: TObject);
    procedure edtAddPasswordChange(Sender: TObject);
    procedure btnDisplayUserClick(Sender: TObject);
    procedure rbtShowAllClick(Sender: TObject);
    procedure rbtDeleteUserClick(Sender: TObject);
    procedure btnManageUserClick(Sender: TObject);
    procedure rbgSortUserClick(Sender: TObject);
    procedure btnAdminExitClick(Sender: TObject);
    procedure rgbReportOptionsClick(Sender: TObject);
    procedure btnBackAdminClick(Sender: TObject);
    procedure tmrChangeMascotTimer(Sender: TObject);
    procedure btnAdminMotiMsgClick(Sender: TObject);
    procedure tbsGenerateReportShow(Sender: TObject);
    procedure rbtSortUserDESCClick(Sender: TObject);
    procedure btnReloadClick(Sender: TObject);
    procedure btnReload1Click(Sender: TObject);
  
  private
    { Private declarations }
    sPropType, sAddresse, sDayofService, sServiceType, sClientName, sClientSurname, sClientEmail, sClientInvoiceIssued : string;
    bPet : boolean;
    rNumBathroom, rTotal : real;
    iNumBedroom, iServiceFreq, iSearchJob, iMascotTmr : integer;
    arrServiceTimes : array[1..6] of string;
    arrWeakPassword : array[1..15] of string;
    arrMotivationalMsg : array[1..15] of string;
    MotiLabel : TLabel;
  public
    { Public declarations }
    procedure InsertBookingInvoiceJob;
    procedure ShowOutstandingJobs;
    procedure DetermineJobID;
    function CheckCrewIDExist( iCrewID : integer) : boolean;
    function CheckUserIDExist( UserID : integer) : boolean;
    procedure DetermineUserID;
    procedure ShowStaff;
    procedure DeterminePaymentID;
    procedure CreateMotiLabel;
    function CheckSpecialChar( sLine : string) : boolean;
    function CheckForLetter ( sInputbox : string) : boolean;
    function CheckForNumber ( sInput : string) : boolean;
    function SearchForClient ( sClient : string) : boolean;
  end;

var
  frmCleanSweepMain: TfrmCleanSweepMain;
  iUserID, iInvoiceID, iBookingID, iJobID, iPaymentID : integer;
  sUserPosition : string;
  rPropType, rBathPrice, rBedPrice, rServiceType : real;

const SpecialChar : string ='!@#$%^&*()_+-={}[]|\";:<>.?/~`';


implementation

{$R *.dfm}

uses
  dmcleaningservice_u;

procedure TfrmCleanSweepMain.btnReload1Click(Sender: TObject);
begin
  if MessageDlg('Do you want to reload the page(it will return everything to default) )?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      cmbSelectMonth.ItemIndex := -1;
      cmbSelectMonth.Text := '<Select a Month>';
      cmbPayRange.ItemIndex := -1;
      cmbPayRange.Text := '<Select a Pay Range>';
      dbgAdmin.DataSource := dmCleaningService.dtsCrewMembers;
      showmessage('Page Reloaded');
    end
  else showmessage('Page was not reloaded.');
end;

procedure TfrmCleanSweepMain.btnAcceptBookingClick(Sender: TObject);
  var iChosenCrew, iCrew : integer;
  sSQL1, sSQL2, sCrewName, sSQL3, sSQL4 : string;
begin
  //Intailize VAR
  iChosenCrew := 0;
  iCrew := 0;
  sCrewName := '';
  sSQL1 := '';
  sSQL2 := '';
  sSQL3 := '';
  sSQL4 := '';

  //Confirmation from User
  if MessageDlg('Do you want to accept the job?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes
  then
    begin
      //Determine which user accepted the job
      dmCleaningService.tblqJob.SQL.Clear;
      sSQL1 := ' Select *'+
               ' From tblCrewMembers'+
               ' Where UserID = '+inttostr(iUserID)+' ';
      dmCleaningService.tblqCrewMembers.SQL.Text := sSQL1;
      dmCleaningService.tblqCrewMembers.Open;
      iCrew := dmCleaningService.tblqCrewMembers.FieldByName('CrewID').AsInteger;

      //Determine which team accepted the job
      dmCleaningService.tblqJob.SQL.Clear;
      sSQL2 := ' Select *'+
               ' From tblCrew'+
               ' Where CrewID = '+inttostr(iCrew)+' ';
      dmCleaningService.tblqCrew.SQL.Text := sSQL2;
      dmCleaningService.tblqCrew.Open;
      sCrewName := dmCleaningService.tblqCrew.FieldByName('CrewName').AsString;

      //Response to user + update tblJob
      //Update Crew
      sSQL3 := ' Update tblJob'+
               ' Set CrewAssigned = '+inttostr(iCrew)+' '+
               ' Where JobID = '+inttostr(iSearchJob)+' ';
      dmCleaningService.tblqJob.SQL.Text := sSQL3;
      dmCleaningService.tblqJob.ExecSQL;

      //Update for true
      dmCleaningService.tblqJob.SQL.Clear;
      sSQL4 := ' Update tblJob'+
               ' Set JobState = True '+
               ' Where JobID = '+inttostr(iSearchJob)+' ';
      dmCleaningService.tblqJob.SQL.Text := sSQL4;
      dmCleaningService.tblqJob.ExecSQL;
      ShowOutstandingJobs;
      showmessage('Job Accepted.'+ '' + sCrewName+'.' +''+'The job is now in your hands.');
    end
  else 
  begin
    showmessage('No job was accepted.');
    btnAcceptBooking.Enabled := false;
  end;
end;

procedure TfrmCleanSweepMain.btnAddAccAddressHelpClick(Sender: TObject);
begin
  showmessage('Please enter your addresse in the following format: StreetNumber StreetName, Area/Suburb')
end;

procedure TfrmCleanSweepMain.btnAddAccExitClick(Sender: TObject);
begin
  if MessageDlg('Are you sure you don not want to create a account?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes
  then
    begin
      showmessage('Action Cancelled. Now returning to login screen.');
      frmLogin.Show
    end
  else
  showmessage('Good Choice. Please resume creating your account.');
end;



procedure TfrmCleanSweepMain.btnaddAccHelpClick(Sender: TObject);
begin
  showmessage('You are creating an account to use our services. Please note this ONLY CREATES CLIENT ACCOUNTS.');
end;

procedure TfrmCleanSweepMain.btnAddAccPassHelpClick(Sender: TObject);
begin
  showmessage('Your password must AT LEAST contain one Uppercase, Lowercase, number and special charater for your password to be viable');
end;

procedure TfrmCleanSweepMain.btnAddresseHelpClick(Sender: TObject);
begin
  showmessage('Your addresse is preloaded from your account. If you wish to change the addresse, please enter it in the following format: StreetNumber StreetName, Area/Suburb');
end;

procedure TfrmCleanSweepMain.btnAddUserPassClick(Sender: TObject);
  var sUsername, sPassword, sSQL1, sSQL2, sSQL3, sSpecialChar : string;
  bUsername, bPassword, bWeak, bUppletter, bLowerLetter, bNum, bSpecChar : boolean;
  i, m, iUppLetter, iLowerLetter, iSpecChar, iNum: Integer;
begin
  //Intialize VAR
  sUsername := '';
  sPassword := '';
  bUsername := false;
  bPassword := false;
  bWeak := false;
  bUppletter := false;
  bLowerLetter := false;
  bNum := false;
  bSpecChar := false;
  iUppLetter := 0;
  iLowerLetter := 0;
  iSpecChar := 0;
  iNum := 0;
  i := 0;
  m := 0;
  //Assign Values + Validation
  //Username
  sUsername := trim(edtAddUsername.Text);
  if sUsername <> '' then bUsername := true;

  //Passsword
  sPassword := trim(edtAddPassword.Text);
  if length(sPassword) >= 8 then
    begin
      //Loop through arrWeakPassword
      for i := 1 to 15 do
        begin
          if sPassword = arrWeakPassword[i] then
          begin
            showmessage('Password is TOO weak. Create a stronger password.');
            bWeak := true;
          end;
        end;

      //Loop through sPassword
      for i := 1 to Length(sPassword) do
        begin
          if sPassword[i] in ['A'..'Z'] then inc(iUppLetter);
          if sPassword[i] in ['a'..'z'] then inc(iLowerLetter);
          if sPassword[i] in ['0'..'9'] then inc(iNum);
        end;
      //Determine if Password is accepable
      if iUppLetter >= 1 then bUppLetter := true;
      if iLowerLetter >= 1 then bLowerLetter := true;
      if iNum >= 1 then  bNum := true;
      if CheckSpecialChar(sPassword) = true then bSpecChar := true;
      if (bUppLetter = true) and (bLowerLetter = true) and (bNum = true) and (bSpecChar = true) then
      begin
       bPassword := true;
       pnlBackground.Visible := true;
      end
      else
        begin
          bPassword := false;
          showmessage('Password does not match criteria. Please create a password which matches the criteria.');
        end;
    end
  else
  showmessage('Password must be minimum of 8 characters');

  //Check if Username and Password is approved
  if (bUsername = true) and (bPassword = true) then
    begin
      if MessageDlg('Are you sure you want to create the account?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes
      then
        begin
          //Username
          sSQL1 := ' Update tblUser'+
                   ' Set Username = "'+sUsername+'"'+
                   ' Where UserID = '+inttostr(iUserID)+'';
          dmCleaningService.tblqUser.SQL.Text := sSQL1;
          dmCleaningService.tblqUser.ExecSQL;
          //Password
          dmCleaningService.tblqUser.SQL.Clear;
          sSQL2 := ' Update tblUser'+
                   ' Set UserPassword = "'+sPassword+'"'+
                   ' Where UserID = '+inttostr(iUserID)+'';
          dmCleaningService.tblqUser.SQL.Text := sSQL2;
          dmCleaningService.tblqUser.ExecSQL;
          showmessage('Your account was created. Now returning to login screen.');
          pnlBackGround3.Visible := false;
          btnAddAccExit.Enabled := true;
          frmLogin.Show;
        end
      else showmessage('Account not created.');
    end;
end;


procedure TfrmCleanSweepMain.btnAdminExitClick(Sender: TObject);
begin
  if MessageDlg('Are you sure you want to exit?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      showmessage('Thank you for working today( I hoped ;) ).');
      frmCleansweepMain.Close;
    end
  else
  showmessage('Thank you for choosing to stay. Be sure to take a break after working a while.');
end;

procedure TfrmCleanSweepMain.btnAdminMotiMsgClick(Sender: TObject);
  var i  : integer;
begin
  i := randomRAnge(1,6);
  MotiLabel.Caption := arrMotivationalMsg[i];
end;

procedure TfrmCleanSweepMain.btnAllHisPAYmentsClick(Sender: TObject);
begin
  dmCleaningService.tblPaymentHistory.Open;
  dbgAdmin.DataSource := dmCleaningService.dtsPaymentHistory;
end;

procedure TfrmCleanSweepMain.btnBackAdminClick(Sender: TObject);
begin
  pgcCSMain.ActivePageIndex := 3;
  rgbReportOptions.ItemIndex := -1;
  rgbReportOptions.Enabled := false;
end;

procedure TfrmCleanSweepMain.btnBackClick(Sender: TObject);
begin
  if MessageDlg('Do you want to exit?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes
  then frmCleanSweepMain.Close;
end;

procedure TfrmCleanSweepMain.btnBossClick(Sender: TObject);
begin
  if sUserPosition = 'B' then
    begin
      showmessage('Access granted. Will be taken to the staff screen.');
      pgcCSMain.ActivePageIndex := 2;
    end
  else
  showmessage('Access Denied.');

end;

procedure TfrmCleanSweepMain.btnCertainUserClick(Sender: TObject);
  var iUser : integer;
  sUser : string;
  bValidation : boolean;
begin
  //Intailize VAR
  iUser := 0;
  sUser := '';
  bValidation := false;

  //Input
  sUser := inputbox('Enter UserID', 'Which user do you want to find?','');
  //Vallidation
   if (CheckForLetter(sUser) = true) or (CheckSpecialChar(sUser) = true) then
    begin
      showmessage('Invalid use of characters. Please use numbers to search.');
      exit;
    end
  else bValidation := true;
  //If accepted
  if bValidation = true then
    begin
      iUser := strtoint(sUser);
      if CheckUserIDExist(iUser) = true then
        begin
          with dmCleaningService.tblInvoice do
            begin
              Open;
              Filtered := false;
              Filter := 'UserID = ' + inttostr(iUser);
              Filtered := true;
              if recordcount < 1 then showmessage( 'User ' + inttostr(iUser) + ' ' +'has no outstanding payments.');
              dbgAdmin.DataSource := dmCleaningservice.dtsInvoice;
            end;
        end
      else showmessage('User does not exist.');
    end;

end;

procedure TfrmCleanSweepMain.btnChangeCrewClick(Sender: TObject);
  var iSearchJobID, iCrewAssigned : integer;
  sSQL1, sSQL2, sSearchJob : string;
  bJobID, bValidation : boolean;
begin
  //Intailize VAR
  iSearchJobID := 0;
  iCrewAssigned := 0;
  bJobID := false;
  bValidation := false;
  sSearchJob := '';
  sSQL1 := '';
  sSQL2 := '';

  //Which Job need to change crew?
  DetermineJobID;
  sSearchJob := inputbox('Assign/Change Crew','Which job needs a crew change? ','');

  //Validation
  if (CheckForLetter(sSearchJob) = true) or (CheckSpecialChar(sSearchJob) = true) or (sSearchJob <> '') then
    begin
      showmessage('Invalid use of characters. Please use numbers to search');
      exit;
    end
  else bValidation := true;

  //If validation is approved
  if bValidation = true then
  begin 
    if iSearchJobID <= iJobID-1 then
    begin
      showmessage('Job does exists. Please assign the desired crew to the job in the following inputbox.');
      bJOBID := true;
    end
    else
    begin
      iSearchJobID := 0;
      showmessage('Job does not exist. Please try again');
      exit;
    end;
  end
  else exit;

  //if Searched JobID is accepted else tblJob will not update
  if bJobID = true then
  begin
    iCrewAssigned := strtoint(inputbox('Assign/Change Crew','Which crew must be assigned?',''));
    if (CheckSpecialChar(inttostr(iCrewAssigned)) = true) or (CheckforLetter(inttostr(iCrewAssigned)) = true) or ((inttostr(iCrewAssigned)) = '')   then
    begin
      showmessage('Invalid use of characters. Please use numbers to search' );
      exit;
    end;
    //Checks if crew does exsits
    if CheckCrewIdExist(iCrewAssigned) = true then
    begin
      dmCleaningService.tblqJob.SQL.Clear;
      //Update Crew
      sSQL1 := ' Update tblJob'+
               ' Set CrewAssigned = '+inttostr(iCrewAssigned)+' '+
               ' Where JobID = '+inttostr(iSearchJOBID)+' ';
      dmCleaningService.tblqJob.SQL.Text := sSQL1;
      dmCleaningService.tblqJob.ExecSQL;
      ShowOutstandingJobs;
    end
    else
    showmessage('CrewID not found.');
  end;
end;

procedure TfrmCleanSweepMain.btnConBookingClick(Sender: TObject);
  var sPet : string;
  iCountComma, iPosSpace, iAddresse, iCLTBathroom, iCLTBedroom : integer;
  bPropType, bNumBathroom, bNumBedroom, bAddresse, bServiceType, bServiceFreq, bDayOfService : boolean;
  tfBooking : textfile;
  i: Integer;
begin
  //Reset total
  rTotal := 0;

  //Intialize VAR
  sPet := '';
  iCLTBathroom := 0;
  iCLTBedroom := 0;
  iCountComma := 0;
  iPosSpace := 0;
  iAddresse := 0;
  i := 0;
  bPropType := false;
  bNumBathroom := false;
  bNumBedroom  := false;
  bAddresse := false;
  bServiceType := false;
  bServiceFreq := false;
  bDayOfService := false;

  //Assign Values to VAR + Validate Values
  //Get PropertyType
  if cmbPropType.ItemIndex = -1 then sPropType := ''
  else
  sPropType := cmbPropType.Text;
  if (sPropType = 'Single-Family') or (sPropType = 'Condo') or (sPropType = 'Other') or (sPropType = 'Apartment')
  then bPropType := true
  else
    begin
      bPropType := false;
      sPropType := '';
    end;

  //Get Number of Bathrooms
  if cmbNumBath.ItemIndex = -1 then rNumBathroom := 0
  else
  rNumBathroom := strtofloat(copy(cmbNumBath.Text,1,1));
  if cmbNumBath.ItemIndex = 8 then rNumbathroom := 5;
  if (rNumBathroom = 1) or (rNumBathroom = 1.5) or (rNumBathroom = 2) or (rNumBathroom = 2.5) or (rNumBathroom = 3) or
  (rNumBathroom = 3.5) or (rNumBathroom = 4.5) or (rNumBathroom = 5)
  then
  bNumbathroom := true
  else
    begin
      bNumBathroom := false;
      rNumBathroom := 0;
    end;

  //Get Number of Bedrooms
  if cmbNumBed.ItemIndex = -1 then iNumBedroom := 0
  else
  iNumBedroom := strtoint(copy(cmbNumBed.Text,1,1));
  if (iNumBedroom = 1) or (iNumBedroom = 2) or (iNumBedroom = 3) or (iNumBedroom = 4) or (iNumBedroom = 5)
  then
  bNumBedroom := true
  else
    begin
      bNumBedroom  := false;
      iNumBedroom := 0;
    end;

  //Get Addresse
  if edtAddresse.Text = '<Type Addresse Here>' then sAddresse := ''
  else
    begin
      sAddresse := edtAddresse.Text;
      //Search for Special Char
      if CheckSpecialChar(sAddresse) = true then
        begin
          showmessage('No special characters allowd in your addresse.');
          exit;
        end
      else
      //Check for normal validation
      iPosSpace := POS(' ',sAddresse,1);
      iAddresse := strtoint(copy( sAddresse, 1, iPosSpace - 1) );
      for i := 1 to length(sAddresse) do
      begin
        if sAddresse[i] = ',' then
      inc(iCountComma);
      end;
      if (iCountComma = 1) and ( iAddresse > 0) then
       bAddresse := true
       else
       begin
       bAddresse := false;
       sAddresse := '';
       end;
    end;

  //Does property have a Pet
  if chbPet.Checked = true then bPet := true else bPet := false;
  if bPet = true then sPet := 'YES' else sPet := 'NO';

  //Get the Service Type
  if cmbSerType.ItemIndex = -1 then sServiceType := ''
  else
  sServiceType := cmbSerType.Text;
  if (sServiceType = 'Deep Clean') or (sServiceType = 'Normal Cleaning') or (sServiceType = 'Relocating Cleaning')
  or (sServiceType = 'Office Cleaning')
  then
  bServiceType := true
  else
  begin
    bServiceType := false;
    sServiceType := '';
  end;

  //Get the Ferquency of Service
  if cmbFreqOfSer.ItemIndex = -1 then iServiceFreq := 0
  else
  iServiceFreq := strtoint(cmbFreqOfSer.Text);
  if (iServiceFreq = 1) or ( iServiceFreq = 2) or ( iServiceFreq = 3)
  or (iServiceFreq = 4)
  then
  bServiceFreq := true
  else
  begin
    bServiceFreq := false;
    iServiceFreq := 0;
  end;

  //Day of Service
  if cmbDayOfSer.ItemIndex = -1 then sDayOfService := ''
  else
  sDayOfService := cmbDayOfSer.Text;
  if (sDayOfService = 'Mon') or ( sDayOfService = 'Tue') or ( sDayOfService = 'Wed')
  or (sDayOfService = 'Thu') or ( sDayOfService = 'Fri' )
  then
  bDayOfService := true
  else
  begin
    bDayOfService := false;
    sDayOfService := '';
  end;

  //Check if Validation is a success
  if (bPropType = true) and (bNumBathroom = true ) and (bNumBedroom = true ) and (bAddresse = true )
  and ( bServiceType = true ) and ( bServiceFreq = true ) and ( bDayOfService = true )
  //if all is true, txtfile wil generate + Determine Price
  then
    begin
    //Determine Price of Service + infuence on total
      //Property
      case cmbPropType.ItemIndex of
        0 : rPropType := 200;
        1 : rPropType := 50;
        2 : rPropType := 100;
        3 : rPropType := 150;
      end;

      //Cleaning Time per Bathroom
      case cmbPropType.ItemIndex of
        0 : iCLTBathroom := 30;
        1 : iCLTBathroom := 20;
        2 : iCLTBathroom := 20;
        3 : iCLTBathroom := 30;
      end;

      //Cleaning Time per Bedroom
      case cmbPropType.ItemIndex of
        0 : iCLTBedroom := 45;
        1 : iCLTBedroom := 20;
        2 : iCLTBedroom := 30;
        3 : iCLTBedroom := 45;
      end;

      //Number Bathroom
      rBathPrice := ( rNumBathroom * iCLTBathroom);

      //Number Bedroom
      rBedPrice := (iNumBedroom * iCLTBedroom);

      //Does property have Pet
      if bPet = true then rTotal := rTotal + 70;

      //Service Type
      case cmbSerType.ItemIndex of
        0 : rServiceType := 100;
        1 : rServiceType := rTotal;
        2 : rServiceType := 200;
        3 : rServiceType := 300;
      end;

      //Frequency of Service
      case cmbFreqOfSer.ItemIndex of
        0 :  rTotal := rTotal;
        1 :  rTotal := rTotal + 50;
        2 :  rTotal := rTotal + 100;
        3 :  rTotal := rTotal + 150;
      end;

      //Grand total
      rTotal := rProptype + rBathPrice + rBedPrice + rServiceType;

      //Create amd write to txtfile
      AssignFile( tfBooking, 'Booking.txt');
      ReWrite(tfBooking);
      WriteLn( tfBooking,'CLEANSWEEP');
      WriteLn( tfBooking,'-------------------------------------------------------------------------');
      WriteLn( tfBooking,'YOUR BOOKING FOR OUR AMAZING SERVICE');
      WriteLn( tfBooking,'-------------------------------------------------------------------------');
      WriteLn( tfBooking,'   ');
      WriteLn( tfBooking,'PROPERTY DETAILS');
      WriteLn( tfBooking,'===========================');
      WriteLn( tfBooking,'Date of Booking Made :' + datetostr( Date() ) );
      WriteLn( tfBooking,'Number Of Bathrooms : ' + floattostr(rNumBathroom) );
      WriteLn( tfBooking,'Number Of Bedrooms : ' + inttostr(iNumBedroom) );
      WriteLn( tfBooking,'Do you own a Pet : ' + sPet );
      WriteLn( tfBooking,'    ');
      WriteLn( tfBooking,'SERVICE DETAILS');
      WriteLn( tfBooking,'===========================');
      WriteLn( tfBooking,'Type of Service : ' + sServiceType);
      WriteLn( tfBooking,'Frequency of Service : ' + inttostr(iServiceFreq));
      WriteLn( tfBooking,'Prevered day of Service : ' + sDayOfService);
      WriteLn( tfBooking,'-----------------------------');
      WriteLn( tfBooking,'Grand Total of Service : ' + 'R'+(floattostr(RoundTo(rTotal,2))) );

      CloseFile(tfbooking);
      if FileExists('Booking.txt') = true then
      frmConBooking.Visible := true;
      btnConBooking.Enabled := false;
    end
  //otherwise nothing will happen
  else
  showmessage('Invalid Information. Please make sure you chose the options provided by the dropdown list');


end;


procedure TfrmCleanSweepMain.btnCreateAccountClick(Sender: TObject);
  var sName, sSurname, sCellNum, sAddresse, sEmail, sSQL1 : string;
  bName, bSurname, bCellNum, bAddresse, bEmail : boolean;
  iPosSpace, iComma, iFullStop, iAapStertjie : integer;
  i: Integer;
begin
  //Intialize VAR
  sName := '';
  sSurname := '';
  sCellNum := '';
  sAddresse := '';
  sEmail := '';
  bName := false;
  bSurname := false;
  bCellNum := false;
  bAddresse := false;
  bEmail := false;
  iPosSpace := 0;
  iComma := 0;
  iFullStop := 0;
  iAapStertjie := 0;

  //Check for empty boxes
  if edtAddName.Text = '' then
    begin
      edtAddName.SetFocus;
      showmessage('No empty values accepted.');
      exit;
    end
    else if edtAddSurname.Text = '' then
           begin
             edtAddSurname.SetFocus;
             showmessage('No empty values accepted.');
             exit;
           end
           else if edtAddCell.Text = '' then
             begin
               edtAddCell.SetFocus;
               showmessage('No empty values accepted.');
               exit;
             end
             else if edtAddAddresse.Text = '' then
               begin
                 edtAddAddresse.setfocus;
                 showmessage('No empty values accepted.');
                 exit;
               end
               else if edtAddEmail.Text ='' then
                 begin
                   edtAddEmail.SetFocus;
                   showmessage('No empty values accepted.');
                   exit;
                 end;

  //Assign Values + Validate
  //Name
  sName := trim(edtAddName.Text);
  if (CheckSpecialChar(sName) = true) or (CheckForNumber(sName) = true) then
    begin
      showmessage('Characters used are not accepted. Please only use letters.');
      exit;
    end
  else
  if sName <> '' then bName := true;

  //Surname
  sSurname := trim(edtAddSurname.Text);
  if (CheckSpecialChar(sName) = true) or (CheckForNumber(sName) = true) then
    begin
      showmessage('Characters used are not accepted. Please only use letters.');
      exit;
    end
  else
  if sSurname <> '' then bSurname := true;

  //Cell Number
  sCellNum := trim(edtAddCell.text);
  if copy(sCellNum,1,1) <> '0' then
    begin
      showmessage('Cellnumber is invalid.');
      exit
    end
  else
  if (CheckSpecialChar(sCellNum) = true) or (CheckForLetter(sCellNum) = true) then
    begin
      showmessage('No special charaters or letters allowd in cell number.');
      exit;
    end
  else
  if length(sCellNum) = 10 then bCellNum := true;

  //Addresse
  sAddresse := trim(edtAddAddresse.Text);
  if CheckSpecialChar(sAddresse) = true then
    begin
      showmessage('No special charaters allowd in addresse.');
      exit;
    end;
  iPosSpace := POS(' ', sAddresse,1);
  if iPosSpace > 0 then
    begin
      for i := 1 to length(sAddresse) do
          begin
            if sAddresse[i] = ',' then
            inc(iComma);
          end;//for loop
    end;//if
  if iComma = 1 then bAddresse := true;

  //Email
  sEmail := trim(edtAddemail.Text);
  iAapStertjie := POS('@', sEmail, 1);
  delete(sEmail, 1, iAapStertjie);
  iFullStop := POS('.', sEmail,1);
  if (iAapStertjie > 0 ) and ( iFullStop > 0 ) then
    begin
      sEmail := trim(edtAddemail.Text);
      bEmail := true;
    end;

  //if Validation is succes
  if (bName = true) and (bSurname = true) and (bCellNum = true) and (bAddresse = true) and (bEmail = true) then
    begin
      DetermineUserID;
      dmCleaningService.tblUser.open;
      dmCleaningService.tblUser.insert;
      dmCleaningService.tblUser['UserID'] := iUserID;
      dmCleaningService.tblUser['Name'] := sName;
      dmCleaningService.tblUser['Surname'] := sSurname;
      dmCleaningService.tblUser['CellNumber'] := sCellNum;
      dmCleaningService.tblUser['Addresse'] := sAddresse;
      dmCleaningService.tblUser['Email'] := sEmail;
      dmCleaningService.tblUser['Username'] := 'U';
      dmCleaningService.tblUser['UserPassword'] := 'P';
      dmCleaningService.tblUser['Position'] := 'K';
      dmCleaningService.tblUser.post;
      pnlBackGround3.Visible := true;
      pnlBackGround8.Visible := true;
      btnAddAccExit.Enabled := false;
      pnlBackground.Visible := false;
    end
  else
  showmessage('Invalid Information. Please enter the required information to proceed');
end;

procedure TfrmCleanSweepMain.btnDisplayUserClick(Sender: TObject);
  var sWorkPos : string;
begin
end;

procedure TfrmCleanSweepMain.btnExitClick(Sender: TObject);
begin
  if MessageDlg('Are you sure you want to exit?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      showmessage('Thank you for working today( I hoped ;) ).');
      frmCleansweepMain.Close;
    end
  else
  showmessage('Thank you for choosing to stay. Be sure to take a break after working a while.');

end;

procedure TfrmCleanSweepMain.btnFreqHelpClick(Sender: TObject);
begin
  showmessage('This is done on a WEEKLY BASIS.');
end;

procedure TfrmCleanSweepMain.btnGenReportClick(Sender: TObject);
begin
  pgcCSMain.ActivePageIndex := 4;
  CreateMotiLabel;
end;

procedure TfrmCleanSweepMain.btnManageUserClick(Sender: TObject);
begin
  rdgManageUsers.Visible := true;
end;

procedure TfrmCleanSweepMain.btnMotivationClick(Sender: TObject);
  var i, iLimit : integer;
begin
  i := randomRAnge(1,6);
  lblMotivation.Caption := arrMotivationalMsg[i];
end;


procedure TfrmCleanSweepMain.btnOutGenReportClick(Sender: TObject);
  var iUser : integer;
  sName, sSurname, sLine : string;
  rAmount : real;
  bFlag : boolean;
  tfOutstPayments : textfile;
begin
  //Intialize VAR
  iUser := 0;
  sName := '';
  sSurname := '';
  rAmount := 0;

  //Loop tblInvoice + Create txt + and dispaly outstanding payments
  redGenReport.Lines.Clear;
  AssignFile( tfOutstPayments, 'OutstandingPayments.txt');
  ReWrite(tfOutstPayments);
  Writeln(tfOutstPayments, 'OUTSTANDING PAYMENTS');
  Writeln(tfOutstPayments, '----------------------------------------');
  dmCleaningService.tblInvoice.Open;
  dmCleaningService.tblInvoice.First;
  while not dmCleaningService.tblInvoice.Eof do
    begin
      bFlag := false;
      rAmount := dmCleaningService.tblInvoice.FieldByName('Amount').AsFloat;
      iUser := dmCleaningService.tblInvoice.FieldByName('UserID').AsInteger;
      //Get name of User
      dmCleaningService.tblUser.Open;
      dmCleaningService.tblUser.First;
      while not dmCleaningService.tblUser.Eof and bFlag = false do
        begin
          if iUser = dmCleaningService.tblUser.FieldByName('UserID').AsInteger then
            begin
              sName := dmCleaningService.tblUser.FieldByName('Name').AsString;
              sSurname := dmCleaningService.tblUser.FieldByName('Surname').AsString;
              bFlag := true;
            end//if iUser =
          else
          dmCleaningService.tblUser.Next;
        end; //while tblUser

      //Add to txtfile
      Writeln(tfOutstPayments, sName + ' '+ sSurname + ' ' + 'R' + floattostr(rAmount));
      dmCleaningService.tblInvoice.Next;
    end;// while tblInvoice
  CloseFile(tfOutstPayments);

  //Display txtfile
  redGenReport.Lines.Clear;
  if fileexists('OutstandingPayments.txt') = false then
    begin
      showmessage('File not found.');
      exit;
    end;
  AssignFile(tfOutstPayments, 'OutstandingPayments.txt');
  Reset(tfOutstPayments);
  while not eof(tfOutstPayments) do
    begin
      Readln(tfOutstPayments, sLine);
      redGenReport.Lines.Add(sLine);
    end;
  CloseFile(tfOutstPayments);

  //Activate Report Options
  rgbReportOptions.Enabled := true;

end;

procedure TfrmCleanSweepMain.btnReloadClick(Sender: TObject);
begin
  if MessageDlg('Do you want to reload the page(it will return everything to default) )?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      cmbFilterDay.ItemIndex := -1;
      cmbFilterDay.Text := '<Select an Option>';
      cmbTimes.ItemIndex := -1;
      cmbTimes.Text := '<Select an Option>';
      btnAcceptBooking.Enabled := false;
      ShowOutstandingJobs;
      dbgStaff.DataSource := dmCleaningService.dtsJob;
      showmessage('Page Reloaded');
    end
  else showmessage('Page was not reloaded.');
end;

procedure TfrmCleanSweepMain.btnShowAllClick(Sender: TObject);
begin
  dmCleaningService.tblInvoice.Open;
  dbgAdmin.DataSource := dmCleaningService.dtsInvoice;
end;

procedure TfrmCleanSweepMain.btnShowCertainMonthClick(Sender: TObject);
  var sEnteredMonth, sFilterString : string;
  iEnteredMonth : integer;
begin
  //Get entered month
  iEnteredMonth := strtoint(inputbox('','',''));

  if iEnteredMonth > 12 then showmessage(inttostr(iEnteredMonth) + ' ' + 'is not an exsiting month. Enter a real month.')
    else
    if iEnteredMonth < 10 then sEnteredMonth := '0' + inttostr(iEnteredMonth);

  //Look in DB for the month selected
  dmCleaningService.tblInvoice.Open;
  dmCleaningService.tblInvoice.Filtered := false;
  sFilterString := 'DateIssued LIKE' + quotedstr('%-' + sEnteredMonth + '-%');
  dmCleaningService.tblInvoice.Filter := sFilterString;
  dmCleaningService.tblInvoice.Filtered := true;
  dbgAdmin.DataSource := dmCleaningService.dtsInvoice;
end;

procedure TfrmCleanSweepMain.btnUpdatePaymentClick(Sender: TObject);
  var sSQL1, sUpdatedInvoice : string;
  iUpdatedInvoice : integer;
  bFlag, bAmount, bUpdate, bValidation : boolean;
begin
  //Intialize
  sSQl1 := '';
  sUpdatedInvoice := '';
  iUpdatedInvoice := 0;
  bFlag := false;
  bAmount := false;
  bUpdate := false;
  bValidation := false;

  //Get Updated Invoice
  dbgAdmin.DataSource := dmCleaningService.dtsInvoice;
  sUpdatedInvoice := inputbox('Updated Invoice','Which Invoice has been paid?','');

   //Validate Input
  if sUpdatedInvoice = '' then
    begin
      showmessage('No empty spaces allowd. Please use numbers to search.');
      exit;
    end
    else if (CheckSpecialChar(sUpdatedInvoice) = true) or (CheckForLetter(sUpdatedInvoice) = true) then
      begin
        showmessage('Invalid use of characters. Please use numbers to search.');
        exit;
      end
      else
        begin
          bValidation := true;
          iUpdatedInvoice := strtoint(sUpdatedInvoice);
        end;

  //If approved
  if bValidation = true then
    begin
      with dmCleaningservice.tblInvoice do
        begin
          Open;
          First;
          while not eof and bFlag = false do
            begin
              if iUpdatedInvoice = FieldbyName('InvoiceID').AsInteger then
                begin
                  showmessage('Invoice Found. The Invoice wil be updated.');
                  bFlag := true;
                end
              else Next;

            end;//while not eof tblInvoice

        end;//with tblInvoice

    end;//if approved
    if bFlag = false then showmessage('Invoice not found.');

  //Determine values for insert
  //PaymentID
  DeterminePaymentID;

  //Amount
  dmCleaningService.tblInvoice.First;
  while not dmCleaningService.tblInvoice.eof and bAmount = false do
    begin
      if iUpdatedInvoice = dmCleaningService.tblInvoice.FieldByName('InvoiceID').AsInteger then
        begin
          rTotal := dmCleaningService.tblInvoice.FieldByName('Amount').AsFloat;
          bAmount := true;
        end
      else
      dmCleaningService.tblInvoice.Next;
    end;

  //Insert into tblPaymentHistory +  Remove Paid invoice
  if bFlag = true then
    begin
      //Insert into PaymentHistory
      dmCleaningService.tblPaymentHistory.insert;
      dmCleaningService.tblPaymentHistory['PaymentID'] := iPaymentID;
      dmCleaningService.tblPaymentHistory['InvoiceID'] := iUpdatedInvoice;
      dmCleaningService.tblPaymentHistory['Amount'] := rTotal;
      dmCleaningService.tblPaymentHistory['DatePayed'] := date();
      dmCleaningService.tblPaymentHistory.Post;

      //Remove Paid invoice
      dmCleaningService.tblInvoice.First;
      while not dmCleaningService.tblInvoice.Eof and bUpdate = false do
        begin
          if iUpdatedInvoice = dmCleaningService.tblInvoice.FieldByName('InvoiceID').AsInteger then bUpdate := true
          else dmCleaningService.tblInvoice.Next;
        end;
      if bUpdate = true then dmCleaningService.tblInvoice.delete;
      showmessage('Invoice Updated.');
    end;

end;

procedure TfrmCleanSweepMain.btnViewJobDetailsClick(Sender: TObject);
  var  bFlag, bValidation : boolean;
  sSearchJob : string;
begin
  //Intialize VAR
  bFlag := false;
  bValidation := false;
  iSearchJob := 0;
  sSearchJob := '';

  //Re-Intailize Global VAR
  iBookingID := 0;

  //Which job does user want to view?
  sSearchJob := inputbox('View Booking Details', 'Which booking do you want to view?','');
  //Validation
  if (CheckForLetter(sSearchJob) = true) or (CheckSpecialChar(sSearchJob) = true) or (sSearchJob <> '') then
    begin
      showmessage('Invalid use of charaters. Please use number to do search.');
      exit;
    end
  else  bValidation := true;
  if bValidation = true then iSearchJob := strtoint(sSearchJob) else exit;
  //If Validation is approved
  DetermineJobID;
  if iSearchJob <= iJobID-1 then
  begin
    iBookingID := dmCleaningService.tblqJob.FieldByName('BookingID').AsInteger;
    //Search for booking
    dmCleaningService.tblBooking.Open;
    dmCleaningService.tblBooking.First;
    while not dmCleaningService.tblBooking.eof and bFlag = false do
      begin
        if iBookingID = dmCleaningService.tblBooking.FieldByName('BookingID').AsInteger then
          begin
            showmessage('Booking found. Will display details shortly.');
            bFlag := true;
          end
          else
        dmCleaningService.tblBooking.Next;
      end; //while

    //if booking found
    if bFlag = true then
      begin
        dbgStaff.DataSource := dmCleaningService.dtsBooking;
        dmCleaningService.tblBooking.open;
        dmCleaningService.tblBooking.Filtered := false;
        dmCleaningService.tblBooking.Filter := 'BookingID = ' + quotedstr(inttostr(iBookingID));
        dmCleaningService.tblBooking.Filtered := true;
        btnAcceptBooking.Enabled := true;
      end;


  end;//if

end;

procedure TfrmCleanSweepMain.btnBosstoAdminClick(Sender: TObject);
begin
  if sUserPosition = 'B' then
    begin
      showmessage('Access granted. Will be taken to the admin screen.');
      pgcCSMain.ActivePageIndex := 3;
    end
  else
  showmessage('Access Denied.');
end;

function TfrmCleanSweepMain.CheckCrewIDExist( iCrewID : integer): boolean;
  var sSQL : string;
     bFlag : boolean;
     i1 : integer;
begin
  bFlag := false;
  sSQL := ' Select CrewID'+
          ' From tblCrew'+
          ' Where CrewID = '+inttostr(iCrewID)+'';
  dmCleaningService.tblqCrew.SQL.Clear;
  dmCleaningService.tblqCrew.SQL.Text := sSQL;
  dmCleaningService.tblqCrew.Open;
  i1 := dmCleaningService.tblqCrew.FieldByName('CrewID').AsInteger;
  if i1 = iCrewID then bFlag := true;
  Result := bFlag;
end;



function TfrmCleanSweepMain.CheckForLetter(sInputbox: string): boolean;
  var i, iUpp, iLow : integer;
begin
  i := 0;
  iUpp := 0;
  iLow := 0;
  for i := 1 to Length(sInputbox) do
    begin
      if sInputbox[i] in ['A'..'Z'] then inc(iUpp);
      if sInputbox[i] in ['a'..'z'] then inc(iLow);
    end;
  if (iUpp >= 1) or (iLow >= 1) then result := true else result := false;;
end;

function TfrmCleanSweepMain.CheckForNumber(sInput: string): boolean;
  var i, iNum : integer;
begin
  iNum := 0;
  i := 0;
  for i := 1 to length(sInput) do
    begin
      if sInput[i] in ['0'..'9'] then inc(iNum);
    end;
  if iNum >= 1 then result := true else result := false;;
  
end;

function TfrmCleanSweepMain.CheckSpecialChar(sLine: string): boolean;
  var i, m, iSpecChar : integer;
begin
  i := 0;
  m := 0;
  iSpecChar := 0;
  for i := 1 to length(sLine) do
    begin
      for m := 1 to length(SpecialChar) do
        begin
          if sLine[i] = SpecialChar[m] then inc(iSpecChar);
        end;
    end;
  if iSpecChar >= 1 then result := true else result := false;
end;

function TfrmCleanSweepMain.CheckUserIDExist(UserID: integer): boolean;
  var sSQL : string;
  iLoadedUser : integer;
begin
  sSQL := ' Select UserID'+
          ' From tblUser'+
          ' Where UserID = '+inttostr(UserID)+'';
  dmCleaningService.tblqUser.SQL.Text := sSQL;
  dmCleaningService.tblqUser.Open;
  iLoadedUser := dmCleaningService.tblqUser.FieldByName('UserID').AsInteger;
  if UserID = iLoadedUser then Result := true;
end;

procedure TfrmCleanSweepMain.cmbFilterDAyChange(Sender: TObject);
  var sDay: string;
begin
  case cmbFilterDay.ItemIndex of
    -1 : sDay := '';
    0 : sDay := 'Mon';
    1 : sDay := 'Tue';
    2 : sDay := 'Wed';
    3 : sDay := 'Thu';
    4 : sDay := 'Fri';
  end;

  if sDay <> '' then
    begin
      with dmCleaningService.tblBooking do
        begin
          Open;
          Filtered := false;
          Filter := 'Day = ' + quotedstr(sDay);
          Filtered := true;
          dbgStaff.DataSource := dmCleaningService.dtsBooking;
        end;
    end
  else showmessage('Please choose a option to proceed.');
end;

procedure TfrmCleanSweepMain.cmbPayRangeChange(Sender: TObject);
  var sFilterString : string;
begin
  //Determine value for filter
  case cmbPayRange.ItemIndex of
    -1 : showmessage('Please choose an option');
    0: sFilterString := 'Amount >= 100 and Amount <= 200';
    1: sFilterString := 'Amount >= 200 and Amount <= 300';
    2: sFilterString := 'Amount >= 300 and Amount <= 400';
    3: sFilterString := 'Amount >= 400 and Amount <= 500';
    4: sFilterString := 'Amount > 500';
  end;
  //Activate the filter
  dmCleaningService.tblPaymentHistory.Open;
  dmCleaningService.tblPaymentHistory.Filtered := false;
  dmCleaningService.tblPaymentHistory.Filter := sFilterString;
  dmCleaningService.tblPaymentHistory.Filtered := true;
  dbgAdmin.DataSource := dmCleaningService.dtsPaymentHistory;
  if dmCleaningService.tblPaymentHistory.RecordCount < 1 then showmessage('No payments made fell in the chosen range.');
  
end;

procedure TfrmCleanSweepMain.cmbSelectMonthChange(Sender: TObject);
  var sMonth, sFilterString : string;
begin
  //Intialize
  sMonth := '';
  sFilterString := '';

  //Assign Month
   case cmbSelectMonth.ItemIndex of
     -1 : sMonth := '';
     0 : sMonth := '01';
     1 : sMonth := '02';
     2 : sMonth := '03';
     3 : sMonth := '04';
     4 : sMonth := '05';
     5 : sMonth := '06';
     6 : sMonth := '07';
     7 : sMonth := '08';
     8 : sMonth := '09';
     9 : sMonth := '10';
     10 : sMonth := '11';
     11 : sMonth := '12';
   end;

   //If Month has value
   if sMonth <> '' then
     begin
       dmCleaningService.tblInvoice.Open;
       sFilterString := 'DateIssued like '+ quotedstr('%' +'/' + sMonth + '/'+ '%');
       dmCleaningService.tblInvoice.Filtered := false;
       dmCleaningService.tblInvoice.Filter := sFilterString;
       dmCleaningService.tblInvoice.Filtered := true;
       dbgAdmin.DataSource := dmCleaningService.dtsInvoice;
       if dmCleaningService.tblInvoice.RecordCount = 0 then showmessage('No payments made in this month.');
     end;
end;

procedure TfrmCleanSweepMain.cmbSerTypeChange(Sender: TObject);
begin
   //If relocation cleaning
  if cmbSerType.ItemIndex = 2 then
    begin
      cmbFreqOfSer.ItemIndex := 0;
      cmbFreqOfSer.Enabled := false;
      cmbDayOfSer.SetFocus;
    end;
  if (cmbSerType.ItemIndex = 0) or (cmbSerType.ItemIndex = 1) or (cmbSerType.ItemIndex = 3) then cmbFreqOfSer.Enabled := false;

end;

procedure TfrmCleanSweepMain.cmbTimesChange(Sender: TObject);
  var sSQL : string;
begin
  if (cmbTimes.Text = '10:00') or (cmbTimes.Text = '10:30') or (cmbTimes.Text = '12:00')
  and (cmbTimes.Text = '12:30') or (cmbTimes.Text = '14:00') or (cmbTimes.Text = '14:30')  then
    begin
      sSQL := ' Select *'+
              ' From tblJob'+
              ' Where TimeOfService = "'+cmbTimes.Text+'" ';
      dmCleaningService.tblqJob.SQL.Text := sSQL;
      dmCleaningService.tblqJob.Open;
    end
  else showmessage('Job with that timeslot does not exist.');


end;

procedure TfrmCleanSweepMain.CreateMotiLabel;
begin
  //Create Dynamic Label
  MotiLabel := TLabel.Create(pnlMotivation1);
  MotiLabel.Parent := pnlMotivation1;
  //Set Property Values
  MotiLabel.Caption := '<Insert motivation here>';
  MotiLabel.Font.Name := 'Berlin Sans';
  MotiLabel.Font.Style := [fsBold];
  MotiLabel.Font.Size := 14;
  MotiLabel.Width := 400;
  MotiLabel.AutoSize := false;
  MotiLabel.Height := 23;
  MotiLabel.Alignment := taCenter;
  MotiLabel.Top := 32;
  MotiLabel.Left := 0;
end;

procedure TfrmCleanSweepMain.DetermineJobID;
  var sSQL1 : string;
begin
  sSQL1 := 'Select * from tblJob';
  dmCleaningService.tblqJob.SQL.Text := sSQl1;
  dmCleaningService.tblqJob.Open;
  dmCleaningService.tblqJob.First;
  while not dmCleaningService.tblqJob.Eof do
    begin
      inc(iJobID);
      dmCleaningService.tblqJob.Next;
    end;
   iJobID := dmCleaningService.tblqJob.RecordCount +1;
end;

procedure TfrmCleanSweepMain.DeterminePaymentID;
begin
  dmCleaningService.tblPaymentHistory.open;
  dmCleaningService.tblPaymentHistory.first;
  while not dmCleaningService.tblPaymentHistory.Eof  do
    begin
      inc(iPaymentID);
      dmCleaningService.tblPaymentHistory.next;
    end;
  iPaymentID := iPaymentID + 1;
end;

procedure TfrmCleanSweepMain.DetermineUserID;
  var sSQL : string;
  iLastRecord : integer;
begin
  dmCleaningService.tblqUser.SQL.Clear;
  sSQL := ' Select UserID from tblUser';
  dmCleaningService.tblqUser.SQL.Text := sSQL;
  dmCleaningService.tblqUser.Open;
  dmCleaningService.tblqUser.Last;
  iLastRecord := dmCleaningService.tblqUser.FieldByName('UserID').AsInteger;
  iUserID := iLastRecord + 1;
end;

procedure TfrmCleanSweepMain.edtAddAddresseChange(Sender: TObject);
begin
   if length(edtAddAddresse.Text) = 50 then showmessage('Max Characters reached. Only 50 charcters are allowd.');
end;

procedure TfrmCleanSweepMain.edtAddCellChange(Sender: TObject);
begin
   if length(edtAddCell.Text) = 10 then showmessage('Max Characters reached. Only 10 charcters are allowd.');
end;

procedure TfrmCleanSweepMain.edtAddEmailChange(Sender: TObject);
begin
   if length(edtAddEmail.Text) = 30 then showmessage('Max Characters reached. Only 15 charcters are allowd.');
end;

procedure TfrmCleanSweepMain.edtAddNameChange(Sender: TObject);
begin
   if length(edtAddName.Text) = 15 then showmessage('Max Characters reached. Only 15 charcters are allowd.');

end;

procedure TfrmCleanSweepMain.edtAddPasswordChange(Sender: TObject);
begin
   if length(edtAddPassword.Text) = 15 then showmessage('Max Characters reached. Only 15 charcters are allowd.');
end;

procedure TfrmCleanSweepMain.edtAddresseEnter(Sender: TObject);
  var sSQL : string;
begin
  sSQl := ' Select * from tblUser'+
          ' Where UserID = '+inttostr(iUserID)+'';
  dmCleaningService.tblqUser.SQL.Text := sSQL;
  dmCleaningService.tblqUser.Open;
  if dmCleaningService.tblqUser.RecordCount = 1 then edtAddresse.Text := dmCleaningService.tblqUser.FieldByName('Addresse').AsString;
end;

procedure TfrmCleanSweepMain.edtAddSurnameChange(Sender: TObject);
begin
   if length(edtAddSurname.Text) = 15 then showmessage('Max Characters reached. Only 15 charcters are allowd.');
end;

procedure TfrmCleanSweepMain.edtAddUsernameChange(Sender: TObject);
begin
   if length(edtAddUsername.Text) = 15 then showmessage('Max Characters reached. Only 15 charcters are allowd.');
end;

procedure TfrmCleanSweepMain.FormShow(Sender: TObject);
  var iPage : integer;
begin
  //Intialize global VAR
  sPropType := '';
  sAddresse := '';
  sDayofService := '';
  sServiceType := '';
  rNumBathroom := 0;
  rTotal := 0;
  iServiceFreq := 0;
  iNumBedroom := 0;
  bPet := false;
  iJobID := 0;
  iMascotTmr := 0;
  rPropType := 0;
  rBathPrice := 0;
  rBedPrice := 0;
  rServiceType := 0;

  //Load values in arrServiceTimes
  arrServiceTimes[1] := '10:00';
  arrServiceTimes[2] := '10:30';
  arrServiceTimes[3] := '12:00';
  arrServiceTimes[4] := '12:30';
  arrServiceTimes[5] := '14:00';
  arrServiceTimes[6] := '14:30';

  //Load values in arrWeakPassword
  arrWeakPassword[1] := 'password123';
  arrWeakPassword[2] := 'qwerty';
  arrWeakPassword[3] := '12345678';
  arrWeakPassword[4] := 'abcdefg';
  arrWeakPassword[5] := 'iloveyou';
  arrWeakPassword[6] := '1111111111';
  arrWeakPassword[7] := 'letmein';
  arrWeakPassword[8] := 'monkey';
  arrWeakPassword[9] := 'client';
  arrWeakPassword[10] := 'elden';
  arrWeakPassword[11] := '12345';
  arrWeakPassword[12] := 'shadow';
  arrWeakPassword[13] := 'princess';
  arrWeakPassword[14] := 'trustno1';
  arrWeakPassword[15] := 'azerty';

  //Load Values to arrMotivationMsg
  arrMotivationalMsg[1] := 'Sweep them away';
  arrMotivationalMsg[2] := 'Sweep them off their feet';
  arrMotivationalMsg[3] := 'Its sweeping time';
  arrMotivationalMsg[4] := 'Rise Cleaner, and become the cleaning lord';
  arrMotivationalMsg[5] := 'Free lunch coupon';

  //Make Tabsheets invisble
  iPage := 0;
  for iPage := 0 to pgcCSMain.PageCount - 1 do
  begin
    pgcCSMain.Pages[iPage].TabVisible := false;
  end;

end;

procedure TfrmCleanSweepMain.InsertBookingInvoiceJob;
  var sSQL, sSQL1, sDateOfService, sTimeOfService, sDay, sDate : string;
   iDay, iTime : integer;
begin
  //Activate tblqBooking
  dmCleaningService.tblBooking.Active := true;
  //1st add new Booking to tblBooking
  iBookingID := dmCleaningService.tblBooking.RecordCount +1;
  //Insert VIA Delphi Code
  dmCleaningService.tblBooking.Insert;
  dmCleaningService.tblBooking['BookingID'] := iBookingID;
  dmCleaningService.tblBooking['UserID'] := iUserID;
  dmCleaningService.tblBooking['DateOfBooking'] := date();
  dmCleaningService.tblBooking['ServiceType'] := sServiceType;
  dmCleaningService.tblBooking['Frequency'] := iServiceFreq ;
  dmCleaningService.tblBooking['Day'] := sDayOfService;
  dmCleaningService.tblBooking['NumBathroom'] := rNumBathroom;
  dmCleaningService.tblBooking['NumBedroom'] := iNumBedroom;
  dmCleaningService.tblBooking['PropertyType'] := sPropType;
  dmCleaningService.tblBooking['Pet'] := bPet ;
  dmCleaningService.tblBooking['Amount'] := rTotal;
  dmCleaningService.tblBooking.Post;

  //2nd add new Invoice to tblInvoice
  dmCleaningService.tblInvoice.Active := true;
  iInvoiceID := dmCleaningService.tblInvoice.RecordCount + 1;
  dmCleaningService.tblInvoice.Insert;
  dmCleaningService.tblInvoice['InvoiceID'] := iInvoiceID;
  dmCleaningService.tblInvoice['DateIssued'] := date();
  dmCleaningService.tblInvoice['Amount'] := rTotal;
  dmCleaningService.tblInvoice['BookingID'] := iBookingID;
  dmCleaningService.tblInvoice['UserID'] := iUserID;
  dmCleaningService.tblInvoice.Post;

  //Determine DayOfService and Time-
  //Date
  sDate := datetostr(date());
  iDay := strtoint(copy( sDate,9 , 2) ) + 2 ;
  if iDay < 10 then sDay := '0' + inttostr(iDay)
  else sDay := inttostr(iDay);
  delete(sDate,9 , 2);
  sDateOfService := sDate + sDay;

  //Time
  iTime := RandomRange(1,6);
  sTimeOfService := arrServiceTimes[iTime];

  //JobID
  DetermineJobID;

  //3rd add new Job to tblJob
  sSQL := ' Insert Into tblJob'+
          ' (JobID, BookingID, DateOfService, TimeOfService, JobAddresse, CrewAssigned, Jobstate)'+
          ' Values '+
          '('+inttostr(iJobID)+', '+inttostr(iBookingID)+', #'+sDateOfService+'#, "'+sTimeOfService+'", "'+sAddresse+'", 0, False)';
  dmCleaningService.tblqJob.SQL.Text := sSQl;
  dmCleaningService.tblqJob.ExecSQL;
end;

procedure TfrmCleanSweepMain.rbgSortUserClick(Sender: TObject);
  var sSQL1 : string;
begin
  sSQL1 := ' Select * from tblUser Order by Surname ASC';
  with dmCleaningService.tblqUser do
    begin
      SQL.Clear;
      SQL.Text := sSQL1;
      Open;
      dbgAdmin.DataSource := dmCleaningService.dtsUser;
    end;
end;

procedure TfrmCleanSweepMain.rbtDeleteUserClick(Sender: TObject);
  var sUser, sSQL1, sSQL2 : string;
  bValidation : boolean;
  iUser : integer;
begin
  //Intailize VAR
  sUser := '';
  bvalidation := false;
  iUser := 0;

  //Get User
  sUser := inputbox('Delete User','Which user do you want to delete','');
  if (CheckForLetter(sUser) = false) and (CheckSpecialChar(sUser) = false) then bValidation := true;

  //if input approved
  if bValidation = true then
    begin
      iUser := strtoint(sUser);
      with dmCleaningService.tblqUser do
        begin
          SQL.Clear;
          sSQL1 := 'Select * from tblUser Where UserID = '+inttostr(iUser)+'';
          SQL.Text := sSQL1;
          Open;
          if RecordCount = 1 then
            begin
              if MessageDlg('Are you sure you want to delete user ' + sUser +' '+'?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
                begin
                  with dmCleaningService.tblqUser do
                    begin
                      SQL.Clear;
                      sSQL2 := ' Delete from tblUser Where UserID = '+inttostr(iUser)+'';
                      SQL.Text := sSQL2;
                      ExecSQL;
                      Showmessage('User Deleted.');
                    end;//with SQL2
                end  //if yes
              else Showmessage('User was not Deleted.'); //if no
            end
          else Showmessage('User not found.');//Record exist
        end;//with SQL1
    end;//if true
end;

procedure TfrmCleanSweepMain.rbtShowAllClick(Sender: TObject);
  var sSQL : string;
begin
  dmCleaningService.tblqUser.SQL.Clear;
  sSQL := ' Select * from tblUser';
  dmCleaningService.tblqUser.SQL.Text := sSQL;
  dmCleaningService.tblqUser.Open;
  dbgAdmin.DataSource := dmCleaningService.dtsUser;
end;

procedure TfrmCleanSweepMain.rbtSortUserDESCClick(Sender: TObject);
  var sSQL1 : string;
begin
   sSQL1 := ' Select * from tblUser Order by Surname DESC';
  with dmCleaningService.tblqUser do
    begin
      SQL.Clear;
      SQL.Text := sSQL1;
      Open;
      dbgAdmin.DataSource := dmCleaningService.dtsUser;
    end;
end;

procedure TfrmCleanSweepMain.rgbReportOptionsClick(Sender: TObject);
  var tfOutstPayments : textfile;
  sLine, sName, sSearchedName, sSQL1, sSUrname, sEmail, sDateIssued :string;
  iPosSpace1, iUserID : integer;
  bInputValid, bFlag  : boolean;
begin
  //Intailize VAR
  sLine := '';
  sName := '';
  sSurname := '';
  sEmail := '';
  iPosSpace1 := 0;
  iUserID := 0;
  bInputValid := false;
  bFlag := false;

  //Get Email
  if rgbReportOptions.ItemIndex = 0 then
    begin
      sSearchedName := inputbox('Receive email of client','Enter name of user','');
      if SearchForClient(sSearchedName) = true then
        begin
          memReport.Lines.Clear;
          memReport.Lines.Add('Users with matching names :');
          memReport.Lines.Add(sClientName + ' ' + sClientSurname);
          memReport.Lines.Add(sClientEmail);
          memReport.Lines.Add('');
        end
    end;

  //Get DateIssued
  if rgbReportOptions.ItemIndex = 1 then
    begin
      sSearchedName := inputbox('Receive date of issued invice','Enter name of user','');
      if SearchForClient(sSearchedName) = true then
        begin
          memReport.Lines.Clear;
          memReport.Lines.Add('Issued invoice date :');
          memReport.Lines.Add(sClientName + ' ' + sClientSurname);
          memReport.Lines.Add(sClientInvoiceIssued);
          memReport.Lines.Add('');
        end
    end;

  //Contact Client
  if rgbReportOptions.ItemIndex = 2 then
    begin
      sSearchedName := inputbox('Receive email of client','Enter name of user','');
      if SearchForClient(sSearchedName) = true then
        begin
          memReport.Lines.Clear;
          memReport.Lines.Add('CONTACTED');
          showmessage(sClientName + ' ' + sClientSurname + ' ' + 'was contacted abot their outstanding paymant at ' + sClientEmail);
        end
    end;

  //Reset Options
  rgbReportOptions.ItemIndex := -1;

end;

function TfrmCleanSweepMain.SearchForClient(sClient: string): boolean;
  var sLine, sSQL : string;
  bValidation, bFlag : boolean;
  tfOutPayments : textfile;
  iPos, iUserID : integer;
begin
  //Intialize
  sLine := '';
  sSQL := '';
  bValidation := false;
  bFlag := false;
  iPos := 0;
  iUserID := 0;

  //Validate Input
  if sClient = '' then
    begin
      showmessage('Please a value to proceed.');
      exit;
    end;
  if (CheckSpecialChar(sClient) = false) and (CheckForNumber(sClient) = false) then bValidation := true;

  //If approved
  if bValidation then
    begin
      btnGenReport.Click;
      redGenReport.Lines.Clear;
      //Read txtfile
      if FileExists('OutstandingPayments.txt') = false  then
        begin
          showmessage('File not found');
          exit;
        end;
      AssignFile(tfOutPayments, 'OutstandingPayments.txt');
      Reset(tfOutPayments);
      while not eof(tfOutPayments) do
        begin
          Readln(tfOutPayments, sLine);
          iPos := POS(' ', sLine, 1);
          delete(sLine, iPos, length(sLine));
          //Look for name in txt
          if sClient = sLine then
            begin
              sSQL := ' Select * from tblUser Where Name like "%'+sLine+'%"';
              with dmCleaningService.tblqUser do
                begin
                  SQL.Clear;
                  SQL.Text := sSQL;
                  Open;
                  iUserID := FieldbyName('UserID').AsInteger;
                  //Check if User has an outstanding payment
                  with dmCleaningService.tblInvoice do
                    begin
                      Open;
                      First;
                      while not eof and bFlag = false do
                        begin
                          if iUserID = fieldbyname('UserID').asInteger then
                            begin
                              bFlag := true;
                              sClientInvoiceIssued := fieldbyname('DateIssued').AsString;
                            end
                          else Next;
                        end;//while not eof tblInvoice

                    end;//with tblInvoice
                  if bFlag = true then
                    begin
                      sClientName := fieldbyname('Name').AsString;
                      sClientSurname := fieldbyname('Surname').AsString;
                      sClientEmail := fieldbyname('Email').AsString;
                    end;//if bFlag = true

                end;//with tblUser

            end;//if name =

           //Result
           if bFlag = true then result := true else result := false;

        end;// while not eof txt
      CloseFile(tfOutPayments);

    end//if approved
  else showmessage('Characters not approved.');
  
end;

procedure TfrmCleanSweepMain.ShowOutstandingJobs;
  var sSQL : string;
begin
  dmCleaningService.tblqJob.SQL.Clear;
  sSQL := ' Select *'+
          ' From tblJob'+
          ' Where JobState = false';
  dmCleaningService.tblqJob.SQL.Text := sSQL;
  dmCleaningService.tblqJob.Active := true;
end;

procedure TfrmCleanSweepMain.ShowStaff;
  var sSQL : string;
begin
  dmCleaningService.tblqUser.SQL.Clear;
  sSQL := ' Select *'+
          ' From tblUser'+
          ' Where Position = "S"';
  dmCleaningService.tblqUser.SQL.Text := sSQL;
  dmCleaningService.tblqUser.Open;
end;

procedure TfrmCleanSweepMain.tbsGenerateReportShow(Sender: TObject);
begin
  //Activate Timer
  tmrChangeMascot.Enabled := true;

  //Create dynamic label
  MotiLabel := TLabel.Create(frmCleanSweepMain);
end;

procedure TfrmCleanSweepMain.tbsStaffHomeShow(Sender: TObject);
begin
  ShowOutstandingJobs;
  redGenReport.Lines.Clear;
end;
procedure TfrmCleanSweepMain.tmrChangeMascotTimer(Sender: TObject);
  var sQuote, sMascot, sImage : string;
begin
  //Change Mascot
  inc(iMascotTmr);
  if iMascotTmr = 10 then
    begin
      sQuote := '"These prices are a steal."';
      sMascot :='- CleanSweep Nabbit';
      sImage := 'CleanSweepNabbit';
      imgMascot.Picture.LoadFromFile(sImage + '.jpeg');
      lblToad1.Caption := sQuote;
      lblToad2.Caption := sMascot;
      lblToad1.Height := 18;
      lblToad1.Width := 250;
      lblToad2.Height := 18;
      lblToad2.Width := 140;
    end;
  if iMascotTmr = 20 then
    begin
      sQuote := '"Who dares not pay within 4 days"';
      sMascot :='- CleanSweep Toad';
      sImage := 'CleanSweepToad';
      imgMascot.Picture.LoadFromFile(sImage + '.jpeg');
      lblToad1.Caption := sQuote;
      lblToad2.Caption := sMascot;
      lblToad1.Height := 18;
      lblToad1.Width := 250;
      lblToad2.Height := 18;
      lblToad2.Width := 140;
      iMascottmr := 0;
    end;
end;
end.
