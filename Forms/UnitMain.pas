{ *
  * Copyright (C) 2014-2015 ozok <ozok26@gmail.com>
  *
  * This file is part of TFlickrDownloader.
  *
  * TFlickrDownloader is free software: you can redistribute it and/or modify
  * it under the terms of the GNU General Public License as published by
  * the Free Software Foundation, either version 2 of the License, or
  * (at your option) any later version.
  *
  * TFlickrDownloader is distributed in the hope that it will be useful,
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
  * along with TFlickrDownloader.  If not, see <http://www.gnu.org/licenses/>.
  *
  * }
unit UnitMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.Buttons, JvComponentBase,
  JvThreadTimer, Vcl.ImgList, ShellAPI, Jpeg, UnitFlickrDownloadWorker, UnitCommonTypes,
  JvExControls, PngImage, JvAppInst, JvComputerInfoEx, acAlphaImageList, Vcl.Menus,
  JvExComCtrls, JvListView, acPNG, Registry, ShlObj,
  sSkinManager, sDialogs, sToolBar, acProgressBar, sComboBox, sPanel, sButton,
  sListView, sTreeView, sLabel, sPageControl, sStatusBar, sBevel, sGauge,
  sBitBtn, sGroupBox, sSkinProvider, sEdit, acImage, IniFiles, JvThread,
  JvUrlListGrabber, JvUrlGrabbers, JvDragDrop, ImgSize, StrUtils, UnitFileInfo,
  UnitFlickrGroupPhotoLinksDownloader, sListBox, System.ImageList;

type
  TDownloadItemInfo = packed record
    Status: ShortInt;
    ImagePageLink: string;
    ImageLink: string;
  end;

type
  TMainForm = class(TForm)
    StatusBar: TsStatusBar;
    StatusPage: TsPageControl;
    sTabSheet1: TsTabSheet;
    sTabSheet2: TsTabSheet;
    ProgressList: TsListView;
    ProjectInfoList: TsTreeView;
    DownloadedImageList: TsListView;
    OpenDialog: TsOpenDialog;
    TimeTimer: TJvThreadTimer;
    DownloadProgressImages: TsAlphaImageList;
    PreviewImage: TImage;
    ProgressTimer: TTimer;
    DownloadThreadsList: TsComboBox;
    ThreadPageEdit: TsEdit;
    ThreadPageImgEdit: TsEdit;
    ThreadTotalProcessedImgEdit: TsEdit;
    ThreadLinkEdit: TsEdit;
    ThreadStatusEdit: TsEdit;
    RefreshDownloadedImageList: TsButton;
    PrevThreadBtn: TsButton;
    NextThreadBtn: TsButton;
    SysInfo: TJvComputerInfoEx;
    ThreadInfoPnl: TsPanel;
    Label1: TsLabel;
    ThreadAlreadyImgEdit: TsEdit;
    ThreadFailImgEdit: TsEdit;
    ThreadEndProgressBar: TsProgressBar;
    ThreadSpeedEdit: TsEdit;
    OpenProjectBtn: TsBitBtn;
    NewProjectBtn: TsBitBtn;
    EditProjectBtn: TsBitBtn;
    CloseProjectBtn: TsBitBtn;
    StartBtn: TsBitBtn;
    StopBtn: TsBitBtn;
    OpenProjectFolderBtn: TsBitBtn;
    SettingsBtn: TsBitBtn;
    ToolBarImgs: TsAlphaImageList;
    MainMenu1: TMainMenu;
    P1: TMenuItem;
    O1: TMenuItem;
    C1: TMenuItem;
    E1: TMenuItem;
    E2: TMenuItem;
    C2: TMenuItem;
    D1: TMenuItem;
    S1: TMenuItem;
    S2: TMenuItem;
    O2: TMenuItem;
    T1: TMenuItem;
    S3: TMenuItem;
    H1: TMenuItem;
    H2: TMenuItem;
    A1: TMenuItem;
    MenuImages: TsAlphaImageList;
    Image9: TImage;
    Panel1: TsGroupBox;
    GeneralAlreadyImgEdit: TsEdit;
    GeneralDownloadedImgEdit: TsEdit;
    GeneralProcessedPageEdit: TsEdit;
    GeneralProcessedImgEdit: TsEdit;
    GeneralSpeedEdit: TsEdit;
    GeneralFailedImgEdit: TsEdit;
    ImgSearchPanel: TsPanel;
    Image10: TImage;
    ProgressBar1: TsProgressBar;
    sSkinManager1: TsSkinManager;
    sPanel3: TsPanel;
    DonateBtn: TsBitBtn;
    sGroupBox1: TsGroupBox;
    sSkinProvider1: TsSkinProvider;
    sPanel2: TsGroupBox;
    Bevel1: TsBevel;
    Bevel2: TsBevel;
    Bevel3: TsBevel;
    LED1: TsImage;
    LED2: TsImage;
    LED3: TsImage;
    LED4: TsImage;
    LED5: TsImage;
    LED6: TsImage;
    LED7: TsImage;
    LED8: TsImage;
    TotalProgressBar: TsGauge;
    PageProgressBar: TsGauge;
    S4: TMenuItem;
    C3: TMenuItem;
    L1: TMenuItem;
    UpdateThread: TJvThread;
    UpdateDownloader: TJvHttpUrlGrabber;
    DragDrop: TJvDragDrop;
    LED9: TsImage;
    LED10: TsImage;
    LED12: TsImage;
    LED15: TsImage;
    LED11: TsImage;
    LED14: TsImage;
    LED16: TsImage;
    LED13: TsImage;
    sPanel1: TsPanel;
    ImageCountLabel: TsLabel;
    FuncPages: TsPageControl;
    sTabSheet3: TsTabSheet;
    sTabSheet4: TsTabSheet;
    sTabSheet5: TsTabSheet;
    VisitBtn: TsBitBtn;
    AppInstances: TJvAppInstances;
    sPanel4: TsPanel;
    sProgressBar1: TsProgressBar;
    L2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure NewProjectBtnClick(Sender: TObject);
    procedure StartBtnClick(Sender: TObject);
    procedure OpenProjectBtnClick(Sender: TObject);
    procedure TimeTimerTimer(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DownloadedImageListDblClick(Sender: TObject);
    procedure DownloadedImageListClick(Sender: TObject);
    procedure DownloadedImageListKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure OpenProjectFolderBtnClick(Sender: TObject);
    procedure StopBtnClick(Sender: TObject);
    procedure ProgressTimerTimer(Sender: TObject);
    procedure SettingsBtnClick(Sender: TObject);
    procedure CloseProjectBtnClick(Sender: TObject);
    procedure RefreshDownloadedImageListClick(Sender: TObject);
    procedure EditProjectBtnClick(Sender: TObject);
    procedure PrevThreadBtnClick(Sender: TObject);
    procedure NextThreadBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure E2Click(Sender: TObject);
    procedure AppInstancesCmdLineReceived(Sender: TObject; CmdLine: TStrings);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DonateBtnClick(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure S4Click(Sender: TObject);
    procedure H2Click(Sender: TObject);
    procedure C3Click(Sender: TObject);
    procedure L1Click(Sender: TObject);
    procedure UpdateThreadExecute(Sender: TObject; Params: Pointer);
    procedure UpdateDownloaderDoneStream(Sender: TObject; Stream: TStream; StreamSize: Integer; Url: string);
    procedure DragDropDrop(Sender: TObject; Pos: TPoint; Value: TStrings);
    procedure FormActivate(Sender: TObject);
    procedure VisitBtnClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure L2Click(Sender: TObject);
  private
    { Private declarations }

    // time passed during a download, in seconds
    TimePassed: integer;

    // download threads
    FDownloadThreads: array [0 .. 15] of TDownloadWorker;
    FDownloadedImgCounts: array [0 .. 15] of integer;

    // total size of downloaded images
    FTotalFileSize: int64;
    FPrevTotalSize: Int64;

    FStopGroupImgExt: Boolean;

    FFormActivated: Boolean;

    function IntToTime(IntTime: Integer): string;

    function GetFileSizeEx(const FilePath: string): int64;

    function ErrorMessageToStr(const ErrorMessage: TErrorMessages): string;
    function ErrorMessageToInt(const ErrorMessage: TErrorMessages): integer;

    procedure DeleteTempFiles();

    procedure RegisterFileType(const _Register: Boolean);

    procedure LoadSettings;
    procedure SaveSettings;

    procedure ParseInfoFile(const ProcessCount: integer);

    function GetGroupID(const Link: string): string;
  public
    { Public declarations }
    ProjectInfo: TProjectInfo;

    Leds: array [0 .. 15] of TsImage;

    ProjectFilePath: string;
    AppDataFolder: string;
    TempFolder: string;

    FFirstTime: Boolean;

    DoneSearchingFiles: Boolean;

    // loads project file
    function LoadProject(const ProjectFilePath: string; out outProjectInfo: TProjectInfo): Boolean;

    // arrange buttons
    procedure ProjectLoadedStatus;
    procedure ProjectUnLoadedStatus;
    procedure StartStatus;
    procedure StopStatus;

    procedure SetLedState(const StateOn: Boolean; const ThreadID: integer);
  end;

const
  BuildInt = 1053;
  Portable = False;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses UnitNewProjectForm, UnitSettings, Generics.Collections, windows7taskbar,
  UnitEditProjectForm, UnitDownloadLogForm, UnitWarning, UnitAbout;

procedure TMainForm.A1Click(Sender: TObject);
begin
  AboutForm.Show;
end;

procedure TMainForm.AppInstancesCmdLineReceived(Sender: TObject; CmdLine: TStrings);
begin
  if CmdLine.Count > 0 then
  begin
    if FileExists(CmdLine[0]) then
    begin
      if LowerCase(ExtractFileExt(CmdLine[0])) = '.fpd' then
      begin
        if LoadProject(CmdLine[0], ProjectInfo) then
        begin
          ProjectFilePath := CmdLine[0];
          ProjectLoadedStatus;
          // photos downloaded
          RefreshDownloadedImageListClick(self);
        end
        else
        begin
          ProjectUnLoadedStatus;
          ProjectFilePath := '';
          Application.MessageBox('Could not open project file.', 'Error', MB_ICONERROR);
        end;
      end;
    end;
  end;
end;

procedure TMainForm.C3Click(Sender: TObject);
begin
  ShellExecute(0, 'open', PWideChar(ExtractFileDir(Application.ExeName) + '\changelog.txt'), nil, nil, SW_SHOWNORMAL);
end;

procedure TMainForm.CloseProjectBtnClick(Sender: TObject);
begin
  ProjectInfoList.Items.Clear;
  DownloadedImageList.Items.Clear;
  PreviewImage.Picture.LoadFromFile(ExtractFileDir(Application.ExeName) + '\icon.png');
  ImageCountLabel.Caption := 'Downloaded images for this project (0):';
  ProjectFilePath := '';
  ProjectUnLoadedStatus;
end;

procedure TMainForm.DeleteTempFiles;
var
  Search: TSearchRec;
begin
  // clear temp folder
  if (FindFirst(TempFolder + '\*.*', faAnyFile, Search) = 0) then
  Begin
    repeat
      Application.ProcessMessages;
      if (Search.Name = '.') or (Search.Name = '..') then
        Continue;
      if FileExists(TempFolder + '\' + Search.Name) then
      begin
        DeleteFile(TempFolder + '\' + Search.Name)
      end;

    until (FindNext(Search) <> 0);
    FindClose(Search);
  end;
end;

procedure TMainForm.DonateBtnClick(Sender: TObject);
begin
  ShellExecute(0, 'open', 'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=YHZYV3F9LHEDL', nil, nil, SW_SHOWNORMAL);
end;

procedure TMainForm.DownloadedImageListClick(Sender: TObject);
begin
  if DownloadedImageList.ItemIndex > -1 then
  begin
    if FileExists(ProjectInfo.OutputFolder + '\' + ProjectInfo.Name + '\' + DownloadedImageList.Items[DownloadedImageList.ItemIndex].Caption) then
    begin
      if GetFileSizeEx(ProjectInfo.OutputFolder + '\' + ProjectInfo.Name + '\' + DownloadedImageList.Items[DownloadedImageList.ItemIndex].Caption) > 0 then
      begin
        PreviewImage.Picture.LoadFromFile(ProjectInfo.OutputFolder + '\' + ProjectInfo.Name + '\' + DownloadedImageList.Items[DownloadedImageList.ItemIndex].Caption);
      end
      else
      begin
        Application.MessageBox('Selected image seems to be empty.', 'Warning', MB_ICONWARNING);
      end;
    end
    else
    begin
      PreviewImage.Picture.LoadFromFile(ExtractFileDir(Application.ExeName) + '\icon.png');
    end;
  end;
end;

procedure TMainForm.DownloadedImageListDblClick(Sender: TObject);
begin
  if DownloadedImageList.ItemIndex > -1 then
  begin
    if FileExists(ProjectInfo.OutputFolder + '\' + ProjectInfo.Name + '\' + DownloadedImageList.Items[DownloadedImageList.ItemIndex].Caption) then
    begin
      ShellExecute(Handle, 'open', PChar(ProjectInfo.OutputFolder + '\' + ProjectInfo.Name + '\' + DownloadedImageList.Items[DownloadedImageList.ItemIndex].Caption), nil, nil, SW_SHOWNORMAL);
    end;
  end;
end;

procedure TMainForm.DownloadedImageListKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DOWN) or (Key = VK_UP) then
  begin
    DownloadedImageListClick(self);
  end;
end;

procedure TMainForm.DragDropDrop(Sender: TObject; Pos: TPoint; Value: TStrings);
begin
  if LowerCase(ExtractFileExt(Value[0])) = '.fpd' then
  begin
    if LoadProject(Value[0], ProjectInfo) then
    begin
      ProjectFilePath := Value[0];
      ProjectLoadedStatus;
      // photos downloaded
      RefreshDownloadedImageListClick(self);
    end
    else
    begin
      ProjectUnLoadedStatus;
      ProjectFilePath := '';
      Application.MessageBox('Could not open project file.', 'Error', MB_ICONERROR);
    end;
  end;
end;

procedure TMainForm.E2Click(Sender: TObject);
begin
  Application.Terminate
end;

procedure TMainForm.EditProjectBtnClick(Sender: TObject);
begin
  With EditProjectForm do
  begin
    PageLinkEdit.Text := ProjectInfo.PageLink;
    ProjectNameEdit.Text := ProjectInfo.Name;
    OutputDirectoryEdit.Text := ProjectInfo.OutputFolder;
    StartPageEdit.Value := ProjectInfo.StartPage;
    EndPageEdit.Value := ProjectInfo.EndPage;
    ImageTypeList.ItemIndex := ProjectInfo.ImageTypeOption;
  end;
  self.Enabled := False;
  EditProjectForm.Show;
end;

function TMainForm.ErrorMessageToInt(const ErrorMessage: TErrorMessages): integer;
begin
  case ErrorMessage of
    emOK:
      Result := 0;
    emAlreadyDownloaded:
      Result := 0;
    emEmptyFile:
      Result := 1;
    emNotDownloaded:
      Result := 1;
    emConnectionTimedOut:
      Result := 1
  else
    begin
      Result := 1;
    end;
  end;
end;

function TMainForm.ErrorMessageToStr(const ErrorMessage: TErrorMessages): string;
begin
  case ErrorMessage of
    emOK:
      Result := 'Downloaded';
    emAlreadyDownloaded:
      Result := 'Already downloaded';
    emEmptyFile:
      Result := 'Empty file';
    emNotDownloaded:
      Result := 'Not downloaded';
    emConnectionTimedOut:
      Result := 'Connection timed out';
    emUnableToExtractLink:
      Result := 'Unable to extract image link';
  end;
end;

procedure TMainForm.FormActivate(Sender: TObject);
begin
  // open a project file with the program
  if not FFormActivated then
  begin
    if ParamCount = 1 then
    begin
      if FileExists(ParamStr(1)) then
      begin
        if LowerCase(ExtractFileExt(ParamStr(1))) = '.fpd' then
        begin
          if LoadProject(ParamStr(1), ProjectInfo) then
          begin
            ProjectFilePath := ParamStr(1);
            ProjectLoadedStatus;
            // photos downloaded
            RefreshDownloadedImageListClick(self);
          end
          else
          begin
            ProjectUnLoadedStatus;
            ProjectFilePath := '';
            Application.MessageBox('Could not open project file.', 'Error', MB_ICONERROR);
          end;
        end;
      end;
    end;
  end;
  FFormActivated := True;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: integer;
begin
  self.Enabled := False;
  ThreadInfoPnl.Left := (self.Width div 2) - (ThreadInfoPnl.Width div 2);
  ThreadInfoPnl.Top := (self.Height div 2) - (ThreadInfoPnl.Height div 2);
  ThreadInfoPnl.Visible := True;
  ThreadInfoPnl.BringToFront;
  ThreadInfoPnl.Repaint;
  Sleep(100);
  try
    ThreadEndProgressBar.Max := DownloadThreadsList.Items.Count;
    for I := Low(FDownloadThreads) to High(FDownloadThreads) do
    begin
      if Assigned(FDownloadThreads[i]) then
      begin
        ThreadEndProgressBar.Position := i + 1;
        FDownloadThreads[i].Stop;
        while FDownloadThreads[i].DownloaderStatus = dsDownloading do
        begin
          Application.ProcessMessages;
          Sleep(50);
        end;
      end;
    end;
  finally
    ThreadEndProgressBar.Position := 0;
    self.Enabled := True;
    ThreadInfoPnl.Visible := False;
  end;
  DeleteTempFiles;
  SaveSettings;
end;

procedure TMainForm.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  // ClearFolder;
  Leds[0] := LED1;
  Leds[1] := LED2;
  Leds[2] := LED3;
  Leds[3] := LED4;
  Leds[4] := LED5;
  Leds[5] := LED6;
  Leds[6] := LED7;
  Leds[7] := LED8;
  Leds[8] := LED9;
  Leds[9] := LED10;
  Leds[10] := LED11;
  Leds[11] := LED12;
  Leds[12] := LED13;
  Leds[13] := LED14;
  Leds[14] := LED15;
  Leds[15] := LED16;
  // reset leds
  for I := Low(Leds) to High(Leds) do
  begin
    SetLedState(False, i);
  end;

  // windows 7 taskbar
  if CheckWin32Version(6, 1) then
  begin
    if not InitializeTaskbarAPI then
    begin
      Application.MessageBox('You seem to have Windows 7 but TFlickrDownloader can''t start taskbar progressbar!', 'Error', MB_ICONERROR);
    end;
  end;

  StatusPage.Pages[0].TabVisible := False;
  StatusPage.Pages[1].TabVisible := False;
  StatusPage.Pages[2].TabVisible := False;
  StatusPage.ActivePageIndex := 0;

  // if portable then save ini file to program folder
  if not Portable then
  begin
    AppDataFolder := SysInfo.Folders.AppData + '\TPD';
  end
  else
  begin
    AppDataFolder := ExtractFileDir(Application.ExeName)
  end;
  if not DirectoryExists(AppDataFolder) then
  begin
    if not CreateDir(AppDataFolder) then
    begin
      Application.MessageBox('Cannot create appdata folder!', 'Error', MB_ICONERROR);
      Application.Terminate;
    end;
  end;
  // temp folder is the same for portable and installed
  TempFolder := SysInfo.Folders.Temp + '\TPD';
  if not DirectoryExists(TempFolder) then
  begin
    if not CreateDir(TempFolder) then
    begin
      Application.MessageBox('Cannot create TempFolder folder!', 'Error', MB_ICONERROR);
      Application.Terminate;
    end;
  end;

  // register .fpd with this program
  if ParamCount = 1 then
  begin
    if ParamStr(1) = '/register' then
    begin
      RegisterFileType(True);
      Application.Terminate;
    end
  end;

  DeleteTempFiles;
  FFormActivated := False;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
var
  i: Integer;
begin
  for i := Low(FDownloadThreads) to High(FDownloadThreads) do
  begin
    if Assigned(FDownloadThreads[i]) then
    begin
      FDownloadThreads[i].Free;
    end;
  end;
end;

procedure TMainForm.FormResize(Sender: TObject);
begin
  ProgressList.Columns[1].Width := ProgressList.ClientWidth - ProgressList.Columns[0].Width - ProgressList.Columns[2].Width - 20;
  DownloadedImageList.Columns[0].Width := DownloadedImageList.ClientWidth - 20 - DownloadedImageList.Columns[1].Width - DownloadedImageList.Columns[2].Width - DownloadedImageList.Columns[3].Width;
  sPanel2.Left := StatusBar.Width - sPanel2.Width;
  StatusBar.Panels[1].Width := StatusBar.ClientWidth - StatusBar.Panels[0].Width - StatusBar.Panels[2].Width - sPanel2.Width;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  PreviewImage.Picture.LoadFromFile(ExtractFileDir(Application.ExeName) + '\icon.png');
  TotalProgressBar.Progress := 0;
  PageProgressBar.Progress := 0;
  LoadSettings;

  // check update
  UpdateThread.Execute(nil);
end;

function TMainForm.GetFileSizeEx(const FilePath: string): int64;
var
  FS: TFileStream;
begin
  Result := 0;

  FS := TFileStream.Create(FilePath, fmOpenRead or fmShareDenyWrite);
  try
    Result := FS.Size;
  finally
    FS.Free;
  end;
end;

function TMainForm.GetGroupID(const Link: string): string;
const
  Groups = '/groups/';
var
  LTmpStr: string;
  LPos: integer;
begin
  LTmpStr := Link;
  LPos := Pos(Groups, LTmpStr);
  if LPos > 0 then
  begin
    LTmpStr := Trim(Copy(LTmpStr, LPos + Length(Groups), MaxInt));
    LPos := Pos('/', LTmpStr);
    if LPos > 0 then
    begin
      LTmpStr := Trim(Copy(LTmpStr, 1, LPos - 1));
    end;
  end;
  Result := LTmpStr;
end;

procedure TMainForm.H2Click(Sender: TObject);
begin
  ShellExecute(0, 'open', PWideChar(ExtractFileDir(Application.ExeName) + '\tpdhelp.chm'), nil, nil, SW_SHOWNORMAL);
end;

function TMainForm.IntToTime(IntTime: Integer): string;
var
  hour: Integer;
  second: Integer;
  minute: Integer;
  strhour: string;
  strminute: string;
  strsecond: String;
begin

  if (Time > 0) then
  begin

    hour := IntTime div 3600;
    minute := (IntTime div 60) - (hour * 60);
    second := (IntTime mod 60);

    if (second < 10) then
    begin
      strsecond := '0' + FloatToStr(second);
    end
    else
    begin
      strsecond := FloatToStr(second);
    end;

    if (minute < 10) then
    begin
      strminute := '0' + FloatToStr(minute);
    end
    else
    begin
      strminute := FloatToStr(minute);
    end;

    if (hour < 10) then
    begin
      strhour := '0' + FloatToStr(hour);
    end
    else
    begin
      strhour := FloatToStr(hour);
    end;

    Result := strhour + ':' + strminute + ':' + strsecond;
  end
  else
  begin
    Result := '00:00:00';
  end;
end;

procedure TMainForm.L1Click(Sender: TObject);
begin
  ShellExecute(0, 'open', PWideChar(ExtractFileDir(Application.ExeName) + '\gpl.txt'), nil, nil, SW_SHOWNORMAL);
end;

procedure TMainForm.L2Click(Sender: TObject);
begin
  self.Enabled := False;
  DownloadLogForm.Show;
end;

function TMainForm.LoadProject(const ProjectFilePath: string; out outProjectInfo: TProjectInfo): Boolean;
var
  LProjectfile: TStringList;
  Node: TTreeNode;
  LImgType: integer;
begin
  PreviewImage.Picture.LoadFromFile(ExtractFileDir(Application.ExeName) + '\icon.png');

  Result := False;
  outProjectInfo.Name := '';
  outProjectInfo.StartPage := 0;
  outProjectInfo.EndPage := 0;
  outProjectInfo.PageLink := '';
  outProjectInfo.ImageTypeOption := -1;
  outProjectInfo.OutputFolder := '';

  if FileExists(ProjectFilePath) then
  begin
    LProjectfile := TStringList.Create;
    try
      LProjectfile.LoadFromFile(ProjectFilePath);
      if LProjectfile.Count >= 6 then
      begin
        outProjectInfo.Name := LProjectfile[0];
        outProjectInfo.StartPage := StrToInt(LProjectfile[1]);
        outProjectInfo.EndPage := StrToInt(LProjectfile[2]);
        outProjectInfo.ImageTypeOption := StrToInt(LProjectfile[3]);
        outProjectInfo.OutputFolder := LProjectfile[4];
        outProjectInfo.PageLink := StringReplace(LProjectfile[5], 'http://', 'https://', [rfIgnoreCase]);

        // project summary
        ProjectInfoList.Items.Clear;
        Node := ProjectInfoList.Items.AddChild(nil, 'Name: ' + LProjectfile[0]);
        ProjectInfoList.Items.AddChild(nil, 'Page link: ' + StringReplace(LProjectfile[5], 'http://', 'https://', [rfIgnoreCase]));
        ProjectInfoList.Items.AddChild(nil, 'Start page: ' + LProjectfile[1]);
        ProjectInfoList.Items.AddChild(nil, 'End page: ' + LProjectfile[2]);
        if TryStrToInt(LProjectfile[3], LImgType) then
        begin
          ProjectInfoList.Items.AddChild(nil, 'Image type: ' + NewProjectForm.ImageTypeList.Items[LImgType]);
        end
        else
        begin
          ProjectInfoList.Items.AddChild(nil, 'Image type: N/A');
        end;
        ProjectInfoList.Items.AddChild(nil, 'Output folder: ' + LProjectfile[4]);
        Node.Expand(True);

        Result := True;
      end;
    finally
      FreeAndNil(LProjectfile);
    end;
  end;
end;

procedure TMainForm.LoadSettings;
var
  SettingsFile: TIniFile;
begin
  SettingsFile := TIniFile.Create(AppDataFolder + '\settings.ini');
  try
    FFirstTime := SettingsFile.ReadBool('general', 'firsttime', True);
  finally
    SettingsFile.Free;
  end;
end;

procedure TMainForm.NewProjectBtnClick(Sender: TObject);
begin
  self.Enabled := False;
  NewProjectForm.Show;
end;

procedure TMainForm.NextThreadBtnClick(Sender: TObject);
begin
  if DownloadThreadsList.ItemIndex < DownloadThreadsList.Items.Count - 1 then
  begin
    DownloadThreadsList.ItemIndex := DownloadThreadsList.ItemIndex + 1;
  end;
end;

procedure TMainForm.OpenProjectBtnClick(Sender: TObject);
begin
  if OpenDialog.Execute then
  begin
    if LoadProject(OpenDialog.FileName, ProjectInfo) then
    begin
      ProjectFilePath := OpenDialog.FileName;
      ProjectLoadedStatus;
      // photos downloaded
      RefreshDownloadedImageListClick(self);
    end
    else
    begin
      ProjectUnLoadedStatus;
      ProjectFilePath := '';
      Application.MessageBox('Could not open project file.', 'Error', MB_ICONERROR);
    end;
  end;
end;

procedure TMainForm.OpenProjectFolderBtnClick(Sender: TObject);
begin
  if DirectoryExists(ProjectInfo.OutputFolder) then
  begin
    ShellExecute(Handle, 'open', PChar(ProjectInfo.OutputFolder + '\' + ProjectInfo.Name), nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure TMainForm.ParseInfoFile(const ProcessCount: integer);
var
  LFile: TStreamReader;
  LSplitList: TStringList;
  LLine: string;
  LListItem: TListItem;
  I: Integer;
  LFileName: string;
begin

  LSplitList := TStringList.Create;
  try
    LSplitList.StrictDelimiter := True;
    LSplitList.Delimiter := '|';
    for I := 0 to ProcessCount - 1 do
    begin
      if Portable then
      begin
        LFileName := ExtractFileDir(Application.ExeName) + '\info' + FloatToStr(i) + '.txt';
      end
      else
      begin
        LFileName := AppDataFolder + '\info' + FloatToStr(i) + '.txt';
      end;

      if FileExists(LFileName) then
      begin
        LFile := TStreamReader.Create(LFileName, True);
        try
          while not LFile.EndOfStream do
          begin
            LLine := LFile.ReadLine;
            LSplitList.DelimitedText := LLine;
            if LSplitList.Count = 4 then
            begin
              LListItem := DownloadedImageList.Items.Add;
              LListItem.Caption := LSplitList[0];
              LListItem.SubItems.Add(LSplitList[1]);
              LListItem.SubItems.Add(LSplitList[2]);
              LListItem.SubItems.Add(LSplitList[3]);
              LListItem.StateIndex := 0;
            end;
          end;
        finally
          LFile.Close;
          LFile.Free;
        end;
      end;
    end;
  finally
    LSplitList.Free;
  end;

end;

procedure TMainForm.PrevThreadBtnClick(Sender: TObject);
begin
  if DownloadThreadsList.ItemIndex > 0 then
  begin
    DownloadThreadsList.ItemIndex := DownloadThreadsList.ItemIndex - 1;
  end;
end;

procedure TMainForm.ProgressTimerTimer(Sender: TObject);
var
  I: Integer;
  // total number of pages downloaded
  LPageProgress: integer;
  LPageCount: integer;
  LImageProgress: integer;
  // progress of current thread
  LThreadProgresses: integer;
  LStillRunning: Boolean;
  // number of running threads
  LActiveThreadCount: integer;
  // total number of images downloaded
  LTotalDownloaded: integer;
  // total number of images already downloaded
  LTotalAlready: integer;
  // total number of image downlaods failed
  LTotalFailed: integer;
  LFailedAtEnd: Integer;
  // item to add to log form in case of a problem
  LLogItem: TListItem;
  // total progress in percentage
  LTotalProgress: Integer;
  // thread progress in percentage
  LThreadProgress: Integer;
  j: Integer;
  LDownloadedImgCount: Integer;
  LPrevDownloadedImgCount: Integer;
begin

  LPageProgress := 0;
  LThreadProgresses := 0;
  LImageProgress := 0;
  LStillRunning := False;
  LActiveThreadCount := 0;
  LTotalDownloaded := 0;
  LTotalAlready := 0;
  LTotalFailed := 0;

  // progres value all threads' values combined
  for I := Low(FDownloadThreads) to High(FDownloadThreads) do
  begin
    Application.ProcessMessages;
    if Assigned(FDownloadThreads[i]) then
    begin
      Inc(LPageProgress, FDownloadThreads[i].PageProgress);
      inc(LThreadProgresses, FDownloadThreads[i].ThreadProgress);
      inc(LImageProgress, FDownloadThreads[i].ProcessedImgCount);
      inc(LTotalDownloaded, FDownloadThreads[i].PageDownloadedImageCount);
      inc(LTotalAlready, FDownloadThreads[i].PageAlreadDownloaded);
      inc(LTotalFailed, FDownloadThreads[i].PageFailedDownload);
      LStillRunning := LStillRunning or (FDownloadThreads[i].DownloaderStatus = dsDownloading);
      Inc(LActiveThreadCount);
    end;
  end;
  // total number of images to be downloaded
  FTotalFileSize := 0;
  FPrevTotalSize := 0;
  for I := Low(FDownloadThreads) to High(FDownloadThreads) do
  begin
    if Assigned(FDownloadThreads[i]) then
    begin
      Inc(FTotalFileSize, FDownloadThreads[i].TotalSize);
      FDownloadedImgCounts[i] := FDownloadThreads[i].PageDownloadedImageCount;
    end;
  end;
  // update the speed only when downloaded file size changes
  if FTotalFileSize <> FPrevTotalSize then
  begin
    if TimePassed > 0 then
    begin
      GeneralSpeedEdit.Text := FloatToStr(FTotalFileSize div TimePassed) + ' KB/s';
    end
    else
    begin
      GeneralSpeedEdit.Text := '0 KB/s';
    end;
  end
  else
  begin
    GeneralSpeedEdit.Text := '0 KB/s';
  end;
  FPrevTotalSize := FTotalFileSize;

  // total progress
  LPageCount := ProjectInfo.EndPage - ProjectInfo.StartPage + 1;
  GeneralProcessedPageEdit.Text := FloatToStr(LPageProgress) + '/' + FloatToStr(LPageCount);
  GeneralProcessedImgEdit.Text := FloatToStr(LImageProgress);
  GeneralDownloadedImgEdit.Text := FloatToStr(LTotalDownloaded);
  GeneralAlreadyImgEdit.Text := FloatToStr(LTotalAlready);
  GeneralFailedImgEdit.Text := FloatToStr(LTotalFailed);

  // selected thread progress
  if Assigned(FDownloadThreads[DownloadThreadsList.ItemIndex]) then
  begin
    ThreadStatusEdit.Text := FDownloadThreads[DownloadThreadsList.ItemIndex].StatusText;
    ThreadLinkEdit.Text := FDownloadThreads[DownloadThreadsList.ItemIndex].CurrentLink;

    if TimePassed > 0 then
    begin
      ThreadSpeedEdit.Text := FloatToStr(FDownloadThreads[DownloadThreadsList.ItemIndex].TotalSize div TimePassed) + ' KB/s';
    end;

    ThreadPageImgEdit.Text := FloatToStr(FDownloadThreads[DownloadThreadsList.ItemIndex].PageDownloadedImageCount);
    ThreadAlreadyImgEdit.Text := FloatToStr(FDownloadThreads[DownloadThreadsList.ItemIndex].PageAlreadDownloaded);
    ThreadFailImgEdit.Text := FloatToStr(FDownloadThreads[DownloadThreadsList.ItemIndex].PageFailedDownload);
    ThreadTotalProcessedImgEdit.Text := FloatToStr(FDownloadThreads[DownloadThreadsList.ItemIndex].ProcessedImgCount);

    ThreadPageEdit.Text := FloatToStr(FDownloadThreads[DownloadThreadsList.ItemIndex].PageProgress) + '/' + FloatToStr(FDownloadThreads[DownloadThreadsList.ItemIndex].PageCount);

    LTotalProgress := 0;
    if LPageCount > 0 then
      LTotalProgress := ((100 * LPageProgress) div (LPageCount)) + ((LThreadProgresses div LPageCount) div LActiveThreadCount);

    SetProgressValue(Handle, LTotalProgress, 100);
    LThreadProgress := FDownloadThreads[DownloadThreadsList.ItemIndex].ThreadProgress;
    TotalProgressBar.Progress := LTotalProgress;
    PageProgressBar.Progress := LThreadProgress;
  end
  else
  begin
    ThreadStatusEdit.Text := 'N/A';
    ThreadLinkEdit.Text := 'N/A';
    ThreadAlreadyImgEdit.Text := 'N/A';
    ThreadFailImgEdit.Text := 'N/A';
    ThreadSpeedEdit.Text := 'N/A';
    TotalProgressBar.Progress := 0;
    PageProgressBar.Progress := 0;
    ThreadPageImgEdit.Text := 'N/A';
    ThreadTotalProcessedImgEdit.Text := 'N/A';
    ThreadPageEdit.Text := 'N/A';
  end;
  // form caption
  self.Caption := '[' + FloatToStr(LTotalProgress) + '% ' + FloatToStr(LThreadProgress) + '%] TFlickrDownloader - ' + ProjectInfo.Name;

  // done
  if not LStillRunning then
  begin
    StopStatus;

    self.BringToFront;

    // delete temp txt files
    DeleteTempFiles;

    // show if there are any failed downloads
    LFailedAtEnd := 0;
    for i := Low(FDownloadThreads) to High(FDownloadThreads) do
    begin
      if Assigned(FDownloadThreads[i]) then
      begin
        Inc(LFailedAtEnd, FDownloadThreads[i].FailedItems.Count);
        for j := 0 to FDownloadThreads[i].FailedItems.Count - 1 do
        begin
          LLogItem := DownloadLogForm.LogList.Items.Add;
          // something against empty links
          if Length(FDownloadThreads[i].FailedItems[j].Link) > 0 then
          begin
            LLogItem.Caption := FDownloadThreads[i].FailedItems[j].Link;
            LLogItem.SubItems.Add('[' + FloatToStr(i + 1) + '] ' + ErrorMessageToStr(FDownloadThreads[i].FailedItems[j].ErrorMessage));
            LLogItem.StateIndex := ErrorMessageToInt(FDownloadThreads[i].FailedItems[j].ErrorMessage);
          end
          else
          begin
            LLogItem.Caption := 'Empty link';
            LLogItem.SubItems.Add('[' + FloatToStr(i + 1) + '] Link is somehow empty.');
            LLogItem.StateIndex := 1;
          end;
        end;
      end;
    end;
    // update image list
    LPrevDownloadedImgCount := DownloadedImageList.Items.Count;
    RefreshDownloadedImageListClick(self);
    if SettingsForm.DontLoadImgBtn.Checked then
    begin
      for I := Low(FDownloadedImgCounts) to High(FDownloadedImgCounts) do
      begin
        Inc(LDownloadedImgCount, FDownloadedImgCounts[i]);
      end;
    end
    else
    begin
      LDownloadedImgCount := DownloadedImageList.Items.Count - LPrevDownloadedImgCount;
    end;

    if TimePassed < 1 then
    begin
      TimePassed := 1;
    end;
    // if some downloads failed,
    // show them to user.
    if LFailedAtEnd > 0 then
    begin
      DownloadLogForm.ProgressInfoLabel.Caption := 'Finished downloading in ' + IntToTime(TimePassed) + '.' + sLineBreak + 'Download speed: ' + FloatToStr(FTotalFileSize div TimePassed) + ' KB/s.' +
        sLineBreak + 'Downloaded image count: ' + FloatToStr(LDownloadedImgCount) + '.';
      self.Enabled := False;
      DownloadLogForm.Show;
    end
    else
    begin
      Application.MessageBox(PChar('Finished downloading in ' + IntToTime(TimePassed) + '.' + sLineBreak + 'Download speed: ' + FloatToStr(FTotalFileSize div TimePassed) + ' KB/s.' + sLineBreak +
        'Downloaded image count: ' + FloatToStr(LDownloadedImgCount) + '.'), 'Finished', MB_ICONINFORMATION);
    end;

  end;

end;

procedure TMainForm.ProjectLoadedStatus;
begin
  EditProjectBtn.Enabled := True;
  CloseProjectBtn.Enabled := True;
  StartBtn.Enabled := True;
  OpenProjectFolderBtn.Enabled := True;
  VisitBtn.Enabled := True;

  self.Caption := 'TFlickrDownloader - ' + ProjectInfo.Name;
end;

procedure TMainForm.ProjectUnLoadedStatus;
begin
  ProjectInfoList.Items.Clear;
  DownloadedImageList.Items.Clear;

  EditProjectBtn.Enabled := False;
  CloseProjectBtn.Enabled := False;
  StartBtn.Enabled := False;
  OpenProjectFolderBtn.Enabled := False;
  VisitBtn.Enabled := False;

  self.Caption := 'TFlickrDownloader';
end;

procedure TMainForm.RefreshDownloadedImageListClick(Sender: TObject);
var
  SR: TSearchRec;
  LFileExt: string;
  LFIThreads: array [0 .. 15] of TFileInfo;
  LFiles: TStringList;
  I: Integer;
  LStillRunning: Boolean;
  LProcessCount: integer;
  LOutputFiles: TStringList;
  LFilesList: array [0 .. 15] of TStringList;
begin
  if Length(ProjectFilePath) < 1 then
  begin
    Application.MessageBox('Please open a project first.', 'Warning', MB_ICONWARNING);
    exit;
  end;
  PreviewImage.Picture.LoadFromFile(ExtractFileDir(Application.ExeName) + '\icon.png');
  DownloadedImageList.Items.Clear;
  if not SettingsForm.DontLoadImgBtn.Checked then
  begin
    if DirectoryExists(ProjectInfo.OutputFolder) then
    begin
      self.Enabled := False;
      ProgressBar1.Style := pbstMarquee;
      ImgSearchPanel.Left := (self.Width div 2) - (ImgSearchPanel.Width div 2);
      ImgSearchPanel.Top := (self.Height div 2) - (ImgSearchPanel.Height div 2);
      ImgSearchPanel.Visible := True;
      ImgSearchPanel.BringToFront;
      ImgSearchPanel.Repaint;
      Sleep(100);

      // photos downloaded
      DownloadedImageList.Items.Clear;
      DownloadedImageList.Items.BeginUpdate;

      LFiles := TStringList.Create;
      LOutputFiles := TStringList.Create;
      try
        // find files
        if FindFirst(IncludeTrailingPathDelimiter(ProjectInfo.OutputFolder + '\' + ProjectInfo.Name + '\') + '*.*', faAnyFile or faDirectory, SR) = 0 then
        begin
          repeat
            LFileExt := LowerCase(ExtractFileExt(SR.Name));
            if (LFileExt = '.jpg') or (LFileExt = '.jpeg') or (LFileExt = '.png') or (LFileExt = '.bmp') or (LFileExt = '.gif') then
            begin
              LFiles.Add(IncludeTrailingPathDelimiter(ProjectInfo.OutputFolder + '\' + ProjectInfo.Name + '\') + SR.Name);
            end;
          until FindNext(SR) <> 0;
          System.SysUtils.FindClose(SR);
        end;

        // delete files from last time
        for I := 0 to 15 do
        begin
          if FileExists(AppDataFolder + '\image' + FloatToStr(i) + '.txt') then
          begin
            DeleteFile(AppDataFolder + '\image' + FloatToStr(i) + '.txt')
          end;
          if FileExists(AppDataFolder + '\info' + FloatToStr(i) + '.txt') then
          begin
            DeleteFile(AppDataFolder + '\info' + FloatToStr(i) + '.txt')
          end;
        end;

        // number of parallel process count
        if LFiles.Count > CPUCount then
        begin
          LProcessCount := CPUCount
        end
        else
        begin
          LProcessCount := LFiles.Count;
        end;
        if LProcessCount > Length(LFIThreads) then
        begin
          LProcessCount := Length(LFIThreads)
        end;

        // create and run threads
        for I := 0 to LProcessCount - 1 do
        begin
          LOutputFiles.Add(AppDataFolder + '\info' + FloatToStr(i) + '.txt');
        end;
        for I := 0 to LProcessCount - 1 do
        begin
          LFilesList[i] := TStringList.Create;
        end;
        for I := 0 to LFiles.Count - 1 do
        begin
          LFilesList[i mod LProcessCount].Add(LFiles[i]);
        end;
        for I := 0 to LProcessCount - 1 do
        begin
          LFIThreads[i] := TFileInfo.Create(LFilesList[i], LOutputFiles[i]);
        end;
        try
          LStillRunning := False;
          for I := 0 to LProcessCount - 1 do
          begin
            if Assigned(LFIThreads[i]) then
            begin
              LStillRunning := LStillRunning or (not LFIThreads[i].Done);
            end;
          end;
          while LStillRunning do
          begin
            Application.ProcessMessages;
            Sleep(50);
            LStillRunning := False;
            for I := 0 to LProcessCount - 1 do
            begin
              if Assigned(LFIThreads[i]) then
              begin
                LStillRunning := LStillRunning or (not LFIThreads[i].Done);
              end;
            end;
          end;
        finally
          ParseInfoFile(LProcessCount);
          for I := 0 to LProcessCount - 1 do
          begin
            LFIThreads[i].Free;
            LFilesList[i].Free;
          end;
        end;

      finally
        LFiles.Free;
        LOutputFiles.Free;
        DownloadedImageList.Items.EndUpdate;
        ImageCountLabel.Caption := 'Downloaded images for this project (' + FloatToStr(DownloadedImageList.Items.Count) + '):';
        ImgSearchPanel.Visible := False;
        self.Enabled := True;
        self.BringToFront;
        ProgressBar1.Style := pbstNormal;
      end;
    end
    else
    begin
      Application.MessageBox('Unable to find output folder.', 'Error', MB_ICONERROR);
      DownloadedImageList.Items.Clear;
      DownloadedImageListClick(self);
    end;
  end;
end;

procedure TMainForm.RegisterFileType(const _Register: Boolean);
begin
  with TRegistry.Create do
    try
      RootKey := HKEY_CURRENT_USER;
      if OpenKey('\Software\Classes\.fpd', True) then
        WriteString('', 'FPDFile');
      if OpenKey('\Software\Classes\FPDFile', True) then
        WriteString('', 'TFlickrDownloader Project File');
      if OpenKey('\Software\Classes\FPDFile\DefaultIcon', True) then
        WriteString('', Application.ExeName);
      if OpenKey('\Software\Classes\FPDFile\shell\open\command', True) then
        WriteString('', Application.ExeName + ' "%1"');
    finally
      Free;
    end;
  SHChangeNotify(SHCNE_ASSOCCHANGED, SHCNF_IDLIST, nil, nil);
end;

procedure TMainForm.SettingsBtnClick(Sender: TObject);
begin
  self.Enabled := False;
  SettingsForm.Show;
end;

procedure TMainForm.S4Click(Sender: TObject);
const
  NewLine = '%0D%0A';
var
  mail: PChar;
  mailbody: string;
begin
  mailbody := AboutForm.Label2.Caption;
{$IFDEF WIN32}
  mailbody := mailbody + ' 32-bit' + NewLine;
{$ENDIF}
{$IFDEF WIN64}
  mailbody := mailbody + ' 64-bit' + NewLine;
{$ENDIF}
  mailbody := mailbody + NewLine + 'Bugs: ' + NewLine + NewLine + NewLine + 'Suggestions: ' + NewLine + NewLine + NewLine;
  mail := PWideChar('mailto:ozok26@gmail.com?subject=TFlickrDownloader&body=' + mailbody);

  ShellExecute(0, 'open', mail, nil, nil, SW_SHOWNORMAL);
end;

procedure TMainForm.SaveSettings;
var
  SettingsFile: TIniFile;
begin
  SettingsFile := TIniFile.Create(AppDataFolder + '\settings.ini');
  try
    SettingsFile.WriteBool('general', 'firsttime', FFirstTime);
  finally
    SettingsFile.Free;
  end;
end;

procedure TMainForm.SetLedState(const StateOn: Boolean; const ThreadID: integer);
begin
  if Assigned(Leds[ThreadID]) then
  begin
    if StateOn then
    begin
      Leds[ThreadID].ImageIndex := 0;
    end
    else
    begin
      Leds[ThreadID].ImageIndex := 1;
    end;
  end;
end;

procedure TMainForm.StartBtnClick(Sender: TObject);
var
  LPageCount: integer;
  LNumberofThreads: integer;
  LPageAddingIndex: integer;
  I: Integer;
  LGPD: TGroupImagePageLinksDownloader;
  LGroupImageLinks: TStringList;
  LGroupLinksArray: array of TStringList;
begin

  if FFirstTime then
  begin
    WarningForm.ShowModal;
    if WarningForm.ModalResult = 1 then
    begin
      SaveSettings;
    end;
  end;

  // make sure that output folder is created
  if not DirectoryExists(ProjectInfo.OutputFolder + '\' + ProjectInfo.Name) then
  begin
    if not ForceDirectories(ProjectInfo.OutputFolder + '\' + ProjectInfo.Name) then
    begin
      Application.MessageBox('Cannot create output folder.', 'Error', MB_ICONERROR);
      exit;
    end;
  end;

  // reset progress indications
  TotalProgressBar.Progress := 0;
  PageProgressBar.Progress := 0;
  ProgressList.Items.Clear;
  LPageCount := 0;
  TimePassed := 0;
  FTotalFileSize := 0;
  FPrevTotalSize := 0;
  DeleteTempFiles;
  SetProgressState(Handle, tbpsNormal);
  SetProgressValue(Handle, 0, 1000);
  for I := Low(FDownloadedImgCounts) to High(FDownloadedImgCounts) do
    FDownloadedImgCounts[i] := 0;

  // start if project is valid
  if Length(ProjectInfo.PageLink) > 0 then
  begin
    StartStatus;

    self.Caption := '[0% 0%] TFlickrDownloader - ' + ProjectInfo.Name;
    TimeTimer.Enabled := True;

    // calculate number of threads to run
    if ContainsText(ProjectInfo.PageLink, '/groups/') then
    begin
      // number of parallel downloads isn't limited to page count here since
      // we already have the image page links
      LNumberofThreads := StrToInt(SettingsForm.ThreadNumberEdit.Text);
    end
    else
    begin
      // limit here is the number of pages
      LPageCount := ProjectInfo.EndPage - ProjectInfo.StartPage + 1;
      LNumberofThreads := StrToInt(SettingsForm.ThreadNumberEdit.Text);
      if LNumberofThreads > LPageCount then
      begin
        LNumberofThreads := LPageCount;
      end;
    end;
    // set array length
    SetLength(LGroupLinksArray, LNumberofThreads);
    // reset leds.
    for I := Low(FDownloadThreads) to High(FDownloadThreads) do
    begin
      SetLedState(False, i);
    end;
    for I := Low(LGroupLinksArray) to High(LGroupLinksArray) do
    begin
      LGroupLinksArray[i] := TStringList.Create;
    end;
    try
      // create downloader threads.
      // add thread items to the threadslist
      DownloadThreadsList.Items.Clear;

      // if project is a group then first image pages are extracted then workers
      // are started. Image page links are saved to text files.
      if ContainsText(ProjectInfo.PageLink, '/groups/') then
      begin
        FStopGroupImgExt := False;
        StartStatus;
        StatusPage.ActivePageIndex := 2;
        LGroupImageLinks := TStringList.Create;
        try
          LGPD := TGroupImagePageLinksDownloader.Create(GetGroupID(ProjectInfo.PageLink), TempFolder, ExtractFileDir(Application.ExeName) + '\GroupImagesExtractor.exe');
          try
            LGPD.Start;
            while (LGPD.ProcessID > 0) and (not FStopGroupImgExt) do
            begin
              Application.ProcessMessages;
              if FStopGroupImgExt then
              begin
                LGPD.Stop;
              end;
              Sleep(50);
            end;
            // add links
            if not FStopGroupImgExt then
            begin
              LGroupImageLinks.AddStrings(LGPD.ImageLinks);
            end;
          finally
            LGPD.Stop;
            LGPD.Free;
          end;
          // add links to downloaders
          if not FStopGroupImgExt then
          begin
            for I := 0 to LGroupImageLinks.Count - 1 do
            begin
              LGroupLinksArray[i mod LNumberofThreads].Add(LGroupImageLinks[i]);
            end;
          end;
        finally
          // save group links to a file
          if not FStopGroupImgExt then
          begin
            for I := Low(LGroupLinksArray) to High(LGroupLinksArray) do
            begin
              LGroupLinksArray[i].SaveToFile(TempFolder + '\group' + FloatToStr(i) + '.txt', TEncoding.UTF8);
            end;
            // start workers
            for I := 0 to LNumberofThreads - 1 do
            begin
              FDownloadThreads[i] := TDownloadWorker.Create(ProjectInfo, TempFolder + '\group' + FloatToStr(i) + '.txt');
              DownloadThreadsList.Items.Add('Thread ' + FloatToStr(i + 1));
              FDownloadThreads[i].ThreadID := i;
              FDownloadThreads[i].TempFolder := TempFolder;
              FDownloadThreads[i].DontDoubleDownload := SettingsForm.DontDoubleDownloadBtn.Checked;
              FDownloadThreads[i].ReverseDownloadOrder := SettingsForm.ReverseDownloadBtn.Checked;
            end;
            DownloadThreadsList.ItemIndex := 0;
          end;
        end;
        if FStopGroupImgExt then
        begin
          LGroupImageLinks.Clear;
        end;
        // start running threads
        if LGroupImageLinks.Count > 0 then
        begin
          for I := Low(FDownloadThreads) to High(FDownloadThreads) do
          begin
            if Assigned(FDownloadThreads[i]) then
            begin
              FDownloadThreads[i].Start;
            end;
          end;
          StartStatus;
          StatusPage.ActivePageIndex := 1;
          TimeTimer.Enabled := True;
          ProgressTimer.Enabled := True;
        end;
        LGroupImageLinks.Free;
      end
      else
      begin
        for I := 0 to LNumberofThreads - 1 do
        begin
          FDownloadThreads[i] := TDownloadWorker.Create(ProjectInfo, '');
          DownloadThreadsList.Items.Add('Thread ' + FloatToStr(i + 1));
          FDownloadThreads[i].ThreadID := i;
          FDownloadThreads[i].TempFolder := TempFolder;
          FDownloadThreads[i].DontDoubleDownload := SettingsForm.DontDoubleDownloadBtn.Checked;
          FDownloadThreads[i].ReverseDownloadOrder := SettingsForm.ReverseDownloadBtn.Checked;
        end;
        DownloadThreadsList.ItemIndex := 0;
        // add pages to be downloaded
        LPageAddingIndex := 0;
        for I := ProjectInfo.StartPage to ProjectInfo.EndPage do
        begin
          FDownloadThreads[(LPageAddingIndex mod LNumberofThreads)].PageList.Add(i);
          inc(LPageAddingIndex);
          inc(LPageCount);
        end;
        // start running threads
        if LPageCount > 0 then
        begin
          for I := Low(FDownloadThreads) to High(FDownloadThreads) do
          begin
            if Assigned(FDownloadThreads[i]) then
            begin
              FDownloadThreads[i].Start;
            end;
          end;
          StartStatus;
          StatusPage.ActivePageIndex := 1;
          TimeTimer.Enabled := True;
          ProgressTimer.Enabled := True;
        end;
      end;
    finally
      for I := Low(LGroupLinksArray) to High(LGroupLinksArray) do
      begin
        LGroupLinksArray[i].Free;
      end;
    end;
  end
  else
  begin
    Application.MessageBox('Project page link is too short. Please re-create this project.', 'Error', MB_ICONERROR)
  end;

end;

procedure TMainForm.StartStatus;
begin
  OpenProjectBtn.Enabled := False;
  EditProjectBtn.Enabled := False;
  NewProjectBtn.Enabled := False;
  StartBtn.Enabled := False;
  SettingsBtn.Enabled := False;
  CloseProjectBtn.Enabled := False;
  StopBtn.Enabled := True;

  MainMenu1.Items[0].Enabled := False;
  MainMenu1.Items[1].Items[0].Enabled := False;
  MainMenu1.Items[1].Items[1].Enabled := True;
  MainMenu1.Items[2].Enabled := False;
  MainMenu1.Items[3].Enabled := False;
end;

procedure TMainForm.StopBtnClick(Sender: TObject);
var
  I: Integer;
  LFailedAtEnd: integer;
  j: integer;
  LLogItem: TListItem;
  LPrevDownloadedImgCount, LDownloadedImgCount: Integer;
begin
  if ID_NO = Application.MessageBox('Do you want to stop downloading?', 'Stop', MB_ICONQUESTION or MB_YESNO) then
  begin
    exit;
  end;

  StopStatus;
  FStopGroupImgExt := True;
  self.Enabled := False;
  ThreadInfoPnl.Left := (self.Width div 2) - (ThreadInfoPnl.Width div 2);
  ThreadInfoPnl.Top := (self.Height div 2) - (ThreadInfoPnl.Height div 2);
  ThreadInfoPnl.Visible := True;
  ThreadInfoPnl.BringToFront;
  ThreadInfoPnl.Repaint;
  Sleep(100);
  try
    ThreadEndProgressBar.Max := DownloadThreadsList.Items.Count;
    for I := Low(FDownloadThreads) to High(FDownloadThreads) do
    begin
      if Assigned(FDownloadThreads[i]) then
      begin
        ThreadEndProgressBar.Position := i + 1;
        FDownloadThreads[i].Stop;
        while FDownloadThreads[i].DownloaderStatus = dsDownloading do
        begin
          Application.ProcessMessages;
          Sleep(50);
        end;
      end;
    end;
  finally
    ThreadEndProgressBar.Position := 0;
    self.Enabled := True;
    ThreadInfoPnl.Visible := False;
  end;

  // delete temp txt files
  DeleteTempFiles;

  // show if there are any failed downloads
  LFailedAtEnd := 0;
  for i := Low(FDownloadThreads) to High(FDownloadThreads) do
  begin
    if Assigned(FDownloadThreads[i]) then
    begin
      Inc(LFailedAtEnd, FDownloadThreads[i].FailedItems.Count);
      for j := 0 to FDownloadThreads[i].FailedItems.Count - 1 do
      begin
        LLogItem := DownloadLogForm.LogList.Items.Add;
        LLogItem.Caption := FDownloadThreads[i].FailedItems[j].Link;
        LLogItem.SubItems.Add('[' + FloatToStr(i + 1) + '] ' + ErrorMessageToStr(FDownloadThreads[i].FailedItems[j].ErrorMessage));
        LLogItem.StateIndex := ErrorMessageToInt(FDownloadThreads[i].FailedItems[j].ErrorMessage);
      end;
    end;
  end;
  // update image list
  LPrevDownloadedImgCount := DownloadedImageList.Items.Count;
  RefreshDownloadedImageListClick(self);
  if SettingsForm.DontLoadImgBtn.Checked then
  begin
    for I := Low(FDownloadedImgCounts) to High(FDownloadedImgCounts) do
    begin
      Inc(LDownloadedImgCount, FDownloadedImgCounts[i]);
    end;
  end
  else
  begin
    LDownloadedImgCount := DownloadedImageList.Items.Count - LPrevDownloadedImgCount;
  end;

  if TimePassed < 1 then
  begin
    TimePassed := 1;
  end;
  // if some downloads failed,
  // show them to user.
  if LFailedAtEnd > 0 then
  begin
    DownloadLogForm.ProgressInfoLabel.Caption := 'Finished downloading in ' + IntToTime(TimePassed) + '.' + sLineBreak + 'Download speed: ' + FloatToStr(FTotalFileSize div TimePassed) + ' KB/s.' +
      sLineBreak + 'Downloaded image count: ' + FloatToStr(LDownloadedImgCount) + '.';
    self.Enabled := False;
    DownloadLogForm.Show;
  end
  else
  begin
    Application.MessageBox(PChar('Finished downloading in ' + IntToTime(TimePassed) + '.' + sLineBreak + 'Download speed: ' + FloatToStr(FTotalFileSize div TimePassed) + ' KB/s.' + sLineBreak +
      'Downloaded image count: ' + FloatToStr(LDownloadedImgCount) + '.'), 'Finished', MB_ICONINFORMATION);
  end;
  for I := Low(Leds) to High(Leds) do
    SetLedState(False, i);
end;

procedure TMainForm.StopStatus;
begin
  ProgressTimer.Enabled := False;
  TimeTimer.Enabled := False;
  StatusBar.Panels[2].Text := '';
  TotalProgressBar.Progress := 0;
  PageProgressBar.Progress := 0;
  self.Caption := 'TFlickrDownloader - ' + ProjectInfo.Name;

  self.BringToFront;
  ProjectLoadedStatus;
  StopBtn.Enabled := False;
  StartBtn.Enabled := True;
  OpenProjectBtn.Enabled := True;
  NewProjectBtn.Enabled := True;
  EditProjectBtn.Enabled := True;
  StatusPage.ActivePageIndex := 0;
  SettingsBtn.Enabled := True;
  SetProgressValue(Handle, 0, 1000);
  SetProgressState(Handle, tbpsNone);

  StatusBar.Panels[2].Text := '';

  MainMenu1.Items[0].Enabled := True;
  MainMenu1.Items[1].Items[0].Enabled := True;
  MainMenu1.Items[1].Items[1].Enabled := False;
  MainMenu1.Items[2].Enabled := True;
  MainMenu1.Items[3].Enabled := True;
end;

procedure TMainForm.TimeTimerTimer(Sender: TObject);
begin
  inc(TimePassed);
  StatusBar.Panels[2].Text := IntToTime(TimePassed);
end;

procedure TMainForm.UpdateDownloaderDoneStream(Sender: TObject; Stream: TStream; StreamSize: Integer; Url: string);
var
  VersionFile: TStringList;
  LatestVersion: Integer;
begin
  VersionFile := TStringList.Create;
  try
    if StreamSize > 0 then
    begin
      VersionFile.LoadFromStream(Stream);
      if VersionFile.Count = 1 then
      begin
        if TryStrToInt(VersionFile.Strings[0], LatestVersion) then
        begin
          if LatestVersion > BuildInt then
          begin
            if ID_YES = Application.MessageBox('There is a new version. Would you like to go homepage and download it?', 'New Version', MB_ICONQUESTION or MB_YESNO) then
            begin
              ShellExecute(Application.Handle, 'open', 'https://sourceforge.net/projects/tphotodownloader/', nil, nil, SW_SHOWNORMAL);
            end;
          end;
        end;
      end;
    end;
  finally
    FreeAndNil(VersionFile);
  end;
end;

procedure TMainForm.UpdateThreadExecute(Sender: TObject; Params: Pointer);
begin
  with UpdateDownloader do
  begin
    Url := 'http://sourceforge.net/projects/tphotodownloader/files/version.txt/download';
    Start;
  end;

  UpdateThread.CancelExecute;
end;

procedure TMainForm.VisitBtnClick(Sender: TObject);
begin
  ShellExecute(0, 'open', PWideChar(ProjectInfo.PageLink), nil, nil, SW_SHOWNORMAL);
end;

end.
