inherited UserEditPassForm: TUserEditPassForm
  Left = 508
  Top = 155
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #20462#25913#23494#30721
  ClientHeight = 135
  ClientWidth = 237
  KeyPreview = True
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel
    Left = 16
    Top = 18
    Width = 48
    Height = 12
    Caption = #21407' '#23494' '#30721
  end
  object Label2: TLabel
    Left = 16
    Top = 46
    Width = 48
    Height = 12
    Caption = #29992#25143#23494#30721
  end
  object Label3: TLabel
    Left = 16
    Top = 74
    Width = 48
    Height = 12
    Caption = #30830#35748#23494#30721
  end
  object bbOk: TBitBtn
    Left = 70
    Top = 99
    Width = 75
    Height = 25
    Caption = #30830#23450'(&Y)'
    TabOrder = 0
    OnClick = bbOkClick
    Glyph.Data = {
      42020000424D4202000000000000420000002800000010000000100000000100
      1000030000000002000000000000000000000000000000000000007C0000E003
      00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C007C00001F7C1F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C007C007C007C00001F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C007C007C007C00001F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C007C007C007C007C007C00001F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C007C007C007C007C007C007C00001F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7CEF3D007C007C00001F7C007C007C007C00001F7C1F7C1F7C
      1F7C1F7C1F7CEF3D007C00001F7C1F7C1F7C1F7C007C007C00001F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C007C007C007C00001F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C007C007C00001F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C007C007C00001F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CEF3D007C0000
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CEF3D007C
      00001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      007C007C00001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C}
  end
  object bbNo: TBitBtn
    Left = 144
    Top = 99
    Width = 75
    Height = 25
    Caption = #21462#28040'(&N)'
    TabOrder = 1
    OnClick = bbNoClick
    Glyph.Data = {
      42020000424D4202000000000000420000002800000010000000100000000100
      1000030000000002000000000000000000000000000000000000007C0000E003
      00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C00001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C00001F7C1F7C1F7C0000007C00001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C007C1F7C1F7C1F7C007C007C007C00001F7C1F7C1F7C1F7C1F7C1F7C1F7C
      00001F7C1F7C1F7C1F7C007C007C007C007C1F7C1F7C1F7C1F7C1F7C1F7C0000
      007C1F7C1F7C1F7C1F7C1F7C007C007C007C00001F7C1F7C1F7C1F7C0000007C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C007C007C007C00001F7C1F7C0000007C007C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C007C007C007C00000000007C007C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C007C007C007C007C007C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000007C007C007C00001F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000007C007C007C007C007C00001F7C
      1F7C1F7C1F7C1F7C1F7C1F7C00000000007C007C007C1F7C1F7C007C007C0000
      1F7C1F7C1F7C1F7C1F7C0000007C007C007C007C1F7C1F7C1F7C1F7C007C007C
      00001F7C1F7C1F7C1F7C007C007C007C007C1F7C1F7C1F7C1F7C1F7C1F7C007C
      007C00001F7C1F7C1F7C007C007C007C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C007C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C}
  end
  object Edit1: TEdit
    Left = 72
    Top = 14
    Width = 145
    Height = 20
    PasswordChar = '*'
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 72
    Top = 42
    Width = 145
    Height = 20
    PasswordChar = '*'
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 72
    Top = 70
    Width = 145
    Height = 20
    PasswordChar = '*'
    TabOrder = 4
  end
end