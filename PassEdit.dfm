inherited PassEditForm: TPassEditForm
  BorderIcons = [biSystemMenu]
  Caption = #29992#25143#20462#25913#23494#30721
  ClientHeight = 82
  ClientWidth = 247
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel
    Left = 29
    Top = 16
    Width = 60
    Height = 12
    Caption = #29992#25143#23494#30721#65306
    FocusControl = Edit1
  end
  object Edit1: TEdit
    Left = 93
    Top = 12
    Width = 121
    Height = 20
    PasswordChar = '*'
    TabOrder = 0
  end
  object bbOk: TBitBtn
    Left = 30
    Top = 44
    Width = 75
    Height = 25
    Caption = #30830#23450'(&Y)'
    TabOrder = 1
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
    Left = 143
    Top = 44
    Width = 75
    Height = 25
    Caption = #21462#28040'(&N)'
    TabOrder = 2
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
end
