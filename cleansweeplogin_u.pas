unit cleansweeplogin_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, dmCleaningService_u, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TfrmLogin = class(TForm)
    edtUsername: TEdit;
    edtPAssword: TEdit;
    btnLogin: TButton;
    btnExit: TButton;
    edtCreAcc: TButton;
    imgBAckGround1: TImage;
    lblHeadTitle: TLabel;
    lblSlogan: TLabel;
    lblUsername: TLabel;
    lblPassword: TLabel;
    procedure btnLoginClick(Sender: TObject);
    procedure edtCreAccClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtUsernameChange(Sender: TObject);
    procedure edtPAsswordChange(Sender: TObject);

  private
    { Private declarations }
    procedure LoadUser;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;


implementation

{$R *.dfm}
uses
  cleansweepmain_u;
procedure TfrmLogin.btnExitClick(Sender: TObject);
begin
  frmCleanSweepMain.Close;
end;

procedure TfrmLogin.btnLoginClick(Sender: TObject);
  var sUsername, sPassword, sSQL1 : string;
  bValidation, bFoundUser : boolean;
begin
  //Intialize VAR
  sUsername := '';
  sPassword := '';
  bValidation := false;
  bFoundUser := false;

  //Assign values to VAR
  sUsername := trim(edtUsername.Text);
  sPassword := trim(edtPassword.Text);

  //Validation for assigned values to VAR
  if (sUsername = '') or ( sPassword = '') then
  begin
    bValidation := false;
    showmessage('No blank spaces accepted. Please enter the required information.');
  end
  else
  bValidation := true;

  //Check for User
  if bValidation = true then
    begin
      sSQL1 := ' SELECT * FROM tblUser'+
               ' Where ( Username ="'+sUsername+'" ) AND ( UserPassword = "'+sPassword+'") ';
      dmCleaningService.tblqUser.SQL.Text := sSQL1;
      dmCleaningservice.tblqUser.Active := true;
      if dmCleaningService.tblqUser.RecordCount = 0  then
      begin
       bFoundUser := false;
       showmessage('Your account in not found. Username or Password is incorrect.');
      end
      else bFoundUser := true;

      //Determine Position and UserID and take to Correct Page
      if bFoundUser = true then
        begin
          LoadUser;
          if sUserPosition = 'K' then
            begin
              frmLogin.Close;
              frmCleanSweepMain.pgcCSMain.ActivePageIndex := 0;
            end
            else if sUserPosition = 'S' then
              begin
                frmLogin.Close;
                frmCleanSweepMain.pgcCSMain.ActivePageIndex := 2;
              end
              else if (sUserPosition = 'A') or ( sUserPosition = 'B') then
                     begin
                       frmLogin.Close;
                       frmCleanSweepMain.pgcCSMain.ActivePageIndex := 3;
                     end;
        end;//if of bFoundUser

    end; //if of bValidation



end;

procedure TfrmLogin.edtCreAccClick(Sender: TObject);
begin
  frmLogin.Close;
  frmCleanSweepMain.pgcCSMain.ActivePageIndex := 1;
end;

procedure TfrmLogin.edtPAsswordChange(Sender: TObject);
begin
  if length(edtPassword.text) = 15 then showmessage('Password invalid. Max characters allowd is 15.');
end;

procedure TfrmLogin.edtUsernameChange(Sender: TObject);
begin
  if length(edtUsername.text) = 15 then showmessage('Username invalid. Max characters allowd is 15.');

end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  edtUsername.SetFocus;
end;

procedure TfrmLogin.LoadUser;
begin
  iUserID := dmCleaningService.tblqUser.FieldByName('UserID').AsInteger;
  sUserPosition := dmCleaningService.tblqUser.FieldByName('Position').AsString;
end;

end.
