object Form1: TForm1
  Left = 207
  Top = 157
  Width = 870
  Height = 640
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 24
    Width = 737
    Height = 137
    DataSource = DM.DataSource2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 160
    Width = 185
    Height = 105
    Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1086
    ItemIndex = 0
    Items.Strings = (
      #1060#1048#1054
      #1055#1088#1077#1076#1084#1077#1090
      #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
      #1058#1077#1084#1072
      #1041#1072#1083#1083#1099)
    TabOrder = 1
    OnClick = RadioGroup1Click
  end
  object RadioGroup2: TRadioGroup
    Left = 216
    Top = 160
    Width = 185
    Height = 105
    Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1089#1086#1088#1090#1080#1088#1086#1074#1082#1080
    ItemIndex = 0
    Items.Strings = (
      #1087#1086' '#1074#1086#1079#1088#1072#1089#1090#1072#1085#1080#1102
      #1087#1086' '#1091#1073#1099#1074#1072#1085#1080#1102)
    TabOrder = 2
    OnClick = RadioGroup1Click
  end
  object GroupBox1: TGroupBox
    Left = 408
    Top = 160
    Width = 185
    Height = 105
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1073#1072#1083#1083#1086#1074
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Top = 40
      Width = 31
      Height = 13
      Caption = #1041#1086#1083#1077#1077
    end
    object Edit1: TEdit
      Left = 48
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
      Text = '100'
    end
    object Button1: TButton
      Left = 8
      Top = 64
      Width = 75
      Height = 25
      Caption = #1048#1089#1082#1072#1090#1100
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 96
      Top = 64
      Width = 75
      Height = 25
      Caption = #1057#1073#1088#1086#1089
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object Button3: TButton
    Left = 200
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 376
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 288
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Modify'
    TabOrder = 6
    OnClick = Button5Click
  end
  object DBGrid2: TDBGrid
    Left = 16
    Top = 360
    Width = 713
    Height = 120
    DataSource = DM.DataS
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
