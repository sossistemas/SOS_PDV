object frmSuprimento: TfrmSuprimento
  Left = 507
  Top = 248
  BorderStyle = bsNone
  Caption = 'Suprimento'
  ClientHeight = 359
  ClientWidth = 344
  Color = clSilver
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pop_fechamento
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 48
    Width = 344
    Height = 246
    Align = alClient
    ExplicitWidth = 244
    ExplicitHeight = 214
  end
  object Label1: TLabel
    Left = 28
    Top = 206
    Width = 43
    Height = 19
    Caption = 'Valor:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 20
    Top = 66
    Width = 51
    Height = 19
    Caption = 'Forma:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbEdicao: TLabel
    Left = 298
    Top = 50
    Width = 31
    Height = 13
    Caption = 'Edi'#231#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label3: TLabel
    Left = 37
    Top = 250
    Width = 34
    Height = 19
    Caption = 'Obs:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 294
    Width = 344
    Height = 65
    Align = alBottom
    BevelOuter = bvNone
    Color = 6960384
    ParentBackground = False
    TabOrder = 3
    object bt_ok1: TButton
      Left = 129
      Top = 268
      Width = 75
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 0
      OnClick = bt_ok1Click
    end
    object bt_cancelar: TButton
      Left = 446
      Top = 1
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = bt_cancelarClick
    end
    object bt_ok: TAdvGlowButton
      Left = 265
      Top = 0
      Width = 79
      Height = 65
      Align = alRight
      Caption = '&Confirmar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000008864944415478DABC99EB5353F919C79F999DEDCC76A6339DDDFE01
        DDBEEBBEA9BB9D6D5F75A69D76775D47EE8B8ABA8EAE407272218AE215E4A695
        AB562E2AB99C9344C05557AD1740856C88E2B22C2190730E49B4C072B1545DA4
        482040027EFB2201091709227DF19D49CE9CCCEF73BECFEF79F27B9E4366A4D3
        6CDD45269926D388131832B89454D9A1249D2023635732B10E2571ED2AE24419
        B1A2F4B79C2095B322C37222636205692F2B488759413AACE3A5FD7A87EC2E27
        32E51C2FDDCB8AD235ACC810C7CB886D5790B15345FA072A323AE464702A48C7
        337467EC30DD4316CDE5A15001CF75EF25D6A17C9713E407599171B28214D3D2
        F12F3FCF5CB34B82AF894C17C733C7D876C5AFCF75ED22C3C35D6F06F07C6712
        E904D9DB7AA732871599219697CC83095D12E804A94FEF909D655DAAF7CE3915
        2B047C9044951DCA30AD5DD2A1B3278215560217ECAE96970C1A9DCC76836B09
        400BD283743F7093C12127AD9DC99A7EF2370136D7CD80A3259CC0509D2F8DBE
        43F63C1E324DA507A97E2A936ABD69A46F67CA356D890BEEAF3729AD5D021D2F
        A9BDE5394477A7B2E6F190B6337D46BA1F8F92A1EB10E94549C5EAB8B6B8F442
        82C5D8798074DD478398E8A63B836EBA33A8C69D493746B248D79E9455D612FF
        7F85630529D4B678687845E5B5E79954E3CEA29BEE74BAE9CE20BAD29F4C97FB
        93E9DA9314BADAAFFA33CBAF7E58174C1C5E0A9D3D0197FB92B65F7F924297FB
        93E94A7F325179EF7EAAEC3B485CE7DEB7CE5A137E5A591959A17809CE5AE3C1
        75EC79AFB2EF1095F7EE27FAE6592A5D194CA78A4E558EC6B6DAA1952C591134
        B6785474247D7DE5D911FA66309548E3DA431AE7EE77B4BCD4C7AD5A6230E044
        198A5B37A0C8F6053881012B300BDECB095268ED89D038541F685C7B880C8EDD
        A4171407593E71F5E00406F9D6B5A8ED52C3D2538E82E6B5D0099200E842BF49
        0427C8CF181CBB89F4A2823881E95B4DB802EB5A5C72650093000054779C425E
        F3A7D00989AF80649E73A2E26D6245C56F5613AED0BA0E975C1998F2022FBC80
        6F02C02450DD598402EBBA57EE574E9487132730AAD500E40419F29BD7E2A22B
        1D535E003E6078741CC3A3E3989C003005343CAAC4197E0B748BEC7D4E906A48
        2F32E52C1FDA826AFB0E94D9B7831365AFBE579421AFF9335C741D81CFFB02F0
        01EED1718C7826E01E1D8767CC1F6B6BF71DE47DB70E06A77CB128D493DE21B3
        CC3BBBCDFD1B12E538D3F62534FC4E68F80494B6C6412F2A1609AB0CF9B3E126
        FDCE4DC38D8F4F01009ABA6FE240F5C7385ABB16EAD69D38E74A9A57B8399179
        48AC207DB4145C695B1C4EB644A267D08127EE1E9C6EDB82225BCC1CC8E96CFD
        3CC8B9D9706301B81F7AAA9052F53B64D77D8A7C7334724C1128B37D85732EE5
        DCF5078815A49EA5E122E0FAA91178E1CFC2DE21178A5B37A2B835167A511E94
        10175C6998F4629E73D370CD3D3548A95A83ECBA4F516889457E7D3472BF8D9C
        81343A8320475E09A8E177E274DB66389F36020046C77C707B26801740DFD043
        14D96251D2BA1106518902EBE7B8E04CF5C3CD736E3200571D80FB64066E5A7E
        C8F0B99023A4E3A5FF592CCD4F58D743786C01008C78BC707BFC8B8E7ABC7EC8
        FF3E40716B2C321BFF888BAE54F82626170D6B734F35F6557D88AC05E016820C
        ECC941323865F7B58B24C999B6ADB8E83A8CA1D1416012708F4EF817F64C60D4
        E3035E00AEA74DB8F4E00846C7BCC161F5CC76AE06FBAA3E4476DDDF16859B0B
        79B665072A1EAA3A49DFCE7CAD5BE404A317E538D112069DC060D833044CCD86
        1CC788C7EBAF693E7F010E726ECCEF9CB5F73652AAD620ABF69325E15E424620
        C71481B3B61D0DC4F1D2FD4B65F14BC8E741902301273D635333DF673BD7D27B
        27E05CE8703390E608E49BA38CC48A8A0F963C8E8B729C6809072B3070CF7172
        B6DC9E5945B8F776C8615D4879F55138716F631C71829C58413AB01CC8859C9C
        1DD696DEDBD857F511B26A5F0FCEAF18EFC9868D3F2743FB2EE204797E28C72D
        BD28C7096B580072DAC9F1A052E20FEB47C8AAFDEB6BC3E59A2351608EA92CAA
        8F23D23854A46E57FE4A6B97800BA5FB12E528B4AE072728E0F63C072601CF98
        0F00D0FAA8CE5F4A5600576089C1F1BA089C34C7FCA1D4BC89E8D2B30374F9D9
        612AEF506AB4211EF9F5A21C852DEBC10972B83D6E0080ADAF16FBAB7FBFC2B0
        46E3D89D7094366DB973BD4345573B1444E71F1FA20B8FD3C8D0B3EF1765B6C4
        89509B26BD28C7496B38FED9F17734765F415ACD9F9055B732B83C7314B26F85
        A1CCB5FDFDF3FF5690B14F4254D9A9A28A4E155DEC4EA60B5DF24D3A7B0274A1
        36DBA21C65FC3614FE108E1CF37AE49AA25E1B2EBF3E1A397591286DDA7A5063
        FF8A4A6D5BE974CB97445543A95435944AB786D2E8C6F323A415151AF5321A77
        1D2F81C121F79F64EAA371BC2E7CF97096681CBB15863C4B94F9EA4012553FDB
        43D70676D1F5815D445C4FE64BF51D2363D721E2F8843A9D5D02560CBD9D343A
        FD47AFFCFA68E498C2971DDA9CDA28A7BA7DDB5B158F7792BE773B19025A7078
        54E74D238343F6ADA63561593DEFEB40E69822916B8A6CBF3194F2CB86A96C32
        4DA50569DEB8EB1E32E81EB2A8A243496A9BA47CB9BD88C11122A4390A79E648
        E49AA36B0A2C1B7E56EB4DA5EF719C2CC80CD2BC81A10519548F74323E5010E7
        5052C5BF94F15ABBC4EB1F6086E6E434648165E13D996B8A448E2912A7EE6F38
        50DCB499F2EBBFA0EA91FD741F47979EB0CE00BA1464702AE97C978AB482EC7D
        BD53C14ECF4F42019D1DEE69C8BCFA28E499A370B221F6EAA9A6B835254D9BA9
        A4298EF2CC31AF07A87728A9B223C93F44FF712FB10EE5C79C202B6245E67168
        D9AD804E90A0C012833C73D470BE3946F38F860D7F51B76DA392D6AD54D4B889
        8ABFDFF466008D9DC9A47324055E43C8DF6145691827484B5881A9E3FC53FFA7
        D3AF2158413AC089CC4356905ACA5D496A755BFCA67C73F4BB85E6582A6ADC48
        6ADB562A6AD91C12E0FF0600783C0BEA8110C4080000000049454E44AE426082}
      Transparent = True
      TabOrder = 2
      OnClick = bt_ok1Click
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
    end
  end
  object Panel2: TPanel
    Left = 520
    Top = 124
    Width = 252
    Height = 32
    BevelOuter = bvNone
    Caption = 'Suprimento de Caixa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object ed_valor: TRzNumericEdit
    Left = 77
    Top = 203
    Width = 252
    Height = 25
    Color = clWhite
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOnEnter = True
    TabOrder = 1
    OnKeyPress = ed_valorKeyPress
    IntegersOnly = False
    DisplayFormat = 'R$ ###,###,##0.00'
  end
  object list_Forma: TListBox
    Left = 77
    Top = 66
    Width = 252
    Height = 129
    Color = clWhite
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnKeyPress = list_FormaKeyPress
  end
  object AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel
    Left = 0
    Top = 0
    Width = 344
    Height = 48
    Cursor = crDefault
    Caption.HTMLFont.Charset = DEFAULT_CHARSET
    Caption.HTMLFont.Color = clWindowText
    Caption.HTMLFont.Height = -11
    Caption.HTMLFont.Name = 'Tahoma'
    Caption.HTMLFont.Style = []
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -16
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Line = False
    Fill.Color = 6960384
    Fill.ColorTo = clNone
    Fill.ColorMirror = clNone
    Fill.ColorMirrorTo = clNone
    Fill.GradientType = gtSolid
    Fill.GradientMirrorType = gtSolid
    Fill.BorderColor = clNone
    Fill.BorderWidth = 0
    Fill.Rounding = 0
    Fill.ShadowColor = clNone
    Fill.ShadowOffset = 0
    Fill.Glow = gmNone
    Version = '1.1.1.0'
    Align = alTop
    TabOrder = 5
    ShowExpander = False
    ExpanderColor = 16445929
    ExpanderDownColor = 15587527
    ExpanderHoverColor = 11196927
    TMSStyle = 0
    OldHeight = 48.000000000000000000
    object Label53: TLabel
      Left = 59
      Top = 14
      Width = 200
      Height = 23
      Caption = 'Suprimento de Caixa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object AdvMetroButton1: TAdvMetroButton
      Left = -3
      Top = 0
      Width = 56
      Height = 48
      Appearance.PictureColor = clWhite
      Caption = ''
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000002A0000002A0806000000C5C3C9
        5B0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A3445414132443945303444303131453538344545414445343436
        3535353531312220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A344541413244394630344430313145353834454541444534343635353535
        3131223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3445414132443943303444303131
        453538344545414445343436353535353131222073745265663A646F63756D65
        6E7449443D22786D702E6469643A344541413244394430344430313145353834
        4545414445343436353535353131222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E4B533802000004B14944415478DAD499
        7968554714C65F1215778D2651A352637109C605036EE082A2455C6A5D506825
        54105C402B05A960ABE03F820A2AA2E082FE218A2888FB52975A49085151DBB8
        15375C316AAAC625C6C4EB77E01B3D0EBEF7665EDE7BE0811FF7BE3B73CF7C77
        EEDC9973E6A5044110FA1AAC4E2DEF6F023A806EA02B680B9A8306A012FC0F1E
        82CBE02AB8092A40902CA11DC170F03DE80D5A39DCF3045C007BC1617003BC77
        6D30C5F3D54BEF4D063F832EEAFA6B50069E9337A03E7BB729C8028D54FD5B60
        0BD806AEC75BE838301FF457D72E82425002AEF135BF0255A02E878688EC0CF2
        C1401E8D9D03CBC0CEA8BD2B42A3D0002C02CF824F560C6680AE0EF76BBE05D3
        C029E5EB25580A9A45BA379AE3266003A8A15311FB07E8E029D0A61D980FCA94
        E0ED202B16A10DC13AE5A8147C07D26A29D220C36E083867894DF715BA44F564
        09E81E2781369DC009B6F31E2CE74338099DA8C6E4BF0914A9C76E09DB7B0D0A
        5C84760467D5981C9A6091867EE0A11A66B99184A682DF59B986033E25494285
        59E01DDB972150279CD0CEE0162BFE0D32922832C429EA00DB9719A1A7294B55
        53AA9C8FE6EAF3166CE0B2974C93556D13780932C1789066C4196BCAB55BEC3C
        38E2D140373EE0974C0295EE1EBE8E83629E8F0119F6CAD417BC61B72FF6785D
        23C04D5008BA7C6128FDC5E134CEC3E7AF9CAA64BC0EB3C7E84C8A7C0C463A3A
        1C4691C644540ECB72F8DBD87D30D6D1EF60D617FBCD1EA33D787CC000C3C546
        821CF57B3058CDC065357F1BCBE6AB743169FF2ECFF3EC576FBEB683A091E393
        4BAF1D0E3EB76A50C1A3B6427B6E8C804C4B3BD4ECF3598F9AE0F71143351793
        B8723A38A6AEC957DAD87CADB462C6B0571CFD56333BF8A84B0B35816D95E794
        22AFA8001C0D537E1AFC08FEF3F45BC163335B688A09516398FF5E71EE0D5716
        CB7C1C685DA9563A116264EE6312C16F06A3C2940F67DA91E5E9B7318F2F6CA1
        8FD49868E8E84CEAAE053F58BE6A548FA4B17C9D63126874A5F3BCCC167A57AD
        24998E0EE78109D635F970268193D675590E173AFA95D5E81B9EDFB18596F2D8
        0674727458C47957FB98037683B9E08C2A7BCAFA2E26EDB7E3F9257B1E1D08AA
        F46AE0882C8DF7C025D0DF2AEBC55443E2CC9F3C7CFEC279B8DAAC92BA5042BA
        220A952CB18587E301202F4C9964AA833C7C49AEB65F05D0D9B650099A17A814
        765292635183F46039752C35C1B35D294FA50387A2E5DA094096EE9D6CFF29C8
        0F17E1A7F129028658B3922C742AA864FB6B22A52221060EA5AC2CBDDB274922
        25D3BDCD76AFF3438C9A2E17A820BA280E3B23D16803FE54B9FD6C3BA90C77A3
        7C582B7993D8B1048A6D0BF6A8707023A8EFB353D2925B2C3A9E1C106791BDD5
        2E49C098383B964D32D9B4DAA51CDDE36BC9AAA540E984E9E086F22DB34CFB58
        77F38CD3556ACC1AA753406B4F81999C9FF7295F32BBAC0FD79306D78DDCBA0C
        7E6523375705D812809C026719183F61C05BCD6D7709D55A70773A9F39543FEE
        F187B8DBBC826160653CB7C6257F9FCA88BEB5BA5ECE30F131838F777C3811D9
        927533ACFA5B19C75E48C41EBEE9DD5CEEAA08BD540F4532C900FE0187F88743
        6984AC202E42751297CED7DA93E2B3D973F5D8ABD273F799D45D641A5CCEA1E1
        65B5119A54FB20C0004E7B10B44195D3E70000000049454E44AE426082}
      TabOrder = 0
      Version = '1.2.0.0'
      OnClick = AdvMetroButton1Click
    end
  end
  object edObs: TcxTextEdit
    Left = 77
    Top = 248
    Properties.CharCase = ecUpperCase
    Properties.MaxLength = 99
    TabOrder = 2
    OnKeyPress = edObsKeyPress
    Width = 252
  end
  object pop_fechamento: TAdvPopupMenu
    MenuStyler = frmModulo.estilo_menu
    Version = '2.6.5.11'
    Left = 480
    Top = 192
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = Cancelar1Click
    end
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 64
    Top = 64
  end
  object fxSangria: TfrxReport
    Version = '6.3.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintMode = pmSplit
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42970.860474629600000000
    ReportOptions.LastChange = 45057.532698912040000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeforePrint = fxSangriaBeforePrint
    Left = 144
    Top = 64
    Datasets = <
      item
        DataSet = frxEmitente
        DataSetName = 'frEmitente'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 78.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      EndlessHeight = True
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 442.205010000000000000
        Top = 18.897650000000000000
        Width = 257.008040000000000000
        object Memo6: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 117.165430000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Data: [Date]')
          ParentFont = False
          WordWrap = False
        end
        object mCaixa: TfrxMemoView
          AllowVectorExport = True
          Top = 139.842610000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Caixa: 001')
          ParentFont = False
          WordWrap = False
          Formats = <
            item
            end
            item
            end>
        end
        object mOperador: TfrxMemoView
          AllowVectorExport = True
          Left = 81.259895000000000000
          Top = 139.842610000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Operador: Marcos')
          ParentFont = False
          WordWrap = False
        end
        object Memo9: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 43.464595000000000000
          Top = 86.929190000000000000
          Width = 170.078850000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '*** SUPRIMENTO ***')
          ParentFont = False
          WordWrap = False
        end
        object Memo10: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 113.385900000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Hor'#225'rio: [Time]')
          ParentFont = False
          WordWrap = False
        end
        object Line2: TfrxLineView
          Align = baCenter
          AllowVectorExport = True
          Left = -22.677180000000000000
          Top = 162.519790000000000000
          Width = 302.362400000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Diagonal = True
        end
        object Line1: TfrxLineView
          Align = baCenter
          AllowVectorExport = True
          Left = -22.677180000000000000
          Top = 86.929190000000000000
          Width = 302.362400000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Diagonal = True
        end
        object Line3: TfrxLineView
          Align = baCenter
          AllowVectorExport = True
          Left = -22.677180000000000000
          Top = 318.582677170000000000
          Width = 302.362400000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Diagonal = True
        end
        object Memo11: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 170.078850000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
          WordWrap = False
        end
        object mValor: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 77.480365000000000000
          Top = 200.315090000000000000
          Width = 102.047310000000000000
          Height = 30.236240000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '1900,00')
          ParentFont = False
          WordWrap = False
        end
        object Line4: TfrxLineView
          Align = baCenter
          AllowVectorExport = True
          Left = -22.677180000000000000
          Top = 371.055350000000000000
          Width = 302.362400000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Diagonal = True
        end
        object Line5: TfrxLineView
          Align = baCenter
          AllowVectorExport = True
          Left = -22.677180000000000000
          Top = 427.866420000000000000
          Width = 302.362400000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 350.378170000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Ass: Caixa')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 407.189240000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Ass: Supervisor')
          ParentFont = False
          WordWrap = False
        end
        object mForma: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 244.669450000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
          WordWrap = False
        end
        object Memo2: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frEmitente."FILIAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo1: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 22.677180000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frEmitente."ENDERECO"], [frEmitente."NUMERO"]')
          ParentFont = False
          WordWrap = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo3: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 81.259895000000000000
          Top = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frEmitente."CIDADE"]/[frEmitente."UF"] - [frEmitente."CEP"]')
          ParentFont = False
          WordWrap = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo4: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 81.259895000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frEmitente."TELEFONE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 100.157545000000000000
          Top = 68.031540000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frEmitente."CNPJ"] - [frEmitente."IE"]')
          ParentFont = False
          WordWrap = False
          Formats = <
            item
            end
            item
            end>
        end
        object mObs: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 269.567100000000000000
          Width = 257.007874020000000000
          Height = 43.464566929133900000
          Restrictions = [rfDontSize]
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Obs.:')
          ParentFont = False
        end
      end
    end
  end
  object frxEmitente: TfrxDBDataset
    UserName = 'frEmitente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'FILIAL=FILIAL'
      'NOTAFISCAL=NOTAFISCAL'
      'ENDERECO=ENDERECO'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'TELEFONE=TELEFONE'
      'CNPJ=CNPJ'
      'IE=IE'
      'SEQNF=SEQNF'
      'FAX=FAX'
      'OBS1=OBS1'
      'OBS2=OBS2'
      'CONTRIBUINTE_IPI=CONTRIBUINTE_IPI'
      'SUBSTITUTO_TRIBUTARIO=SUBSTITUTO_TRIBUTARIO'
      'EMPRESA_ESTADUAL=EMPRESA_ESTADUAL'
      'OPTANTE_SIMPLES=OPTANTE_SIMPLES'
      'OPTANTE_SUPER_SIMPLES=OPTANTE_SUPER_SIMPLES'
      'ECF=ECF'
      'TIPO=TIPO'
      'IPI=IPI'
      'ISS=ISS'
      'NUMERO=NUMERO'
      'RESPONSAVEL=RESPONSAVEL'
      'COMPLEMENTO=COMPLEMENTO'
      'BAIRRO=BAIRRO'
      'FARMACIA_RESP_TECNICO=FARMACIA_RESP_TECNICO'
      'FARMACIA_CRF=FARMACIA_CRF'
      'FARMACIA_CPF=FARMACIA_CPF'
      'FARMCIA_DATA=FARMCIA_DATA'
      'FARMACIA_UF=FARMACIA_UF'
      'FARMACIA_SENHA=FARMACIA_SENHA'
      'FARMACIA_EMAIL=FARMACIA_EMAIL'
      'FARMACIA_LOGIN=FARMACIA_LOGIN'
      'FARMACIA_ENVIO=FARMACIA_ENVIO'
      'CONHECIMENTO=CONHECIMENTO'
      'INDUSTRIA=INDUSTRIA'
      'FARMACIA_NUMEROLICENCA=FARMACIA_NUMEROLICENCA'
      'COD_MUNICIPIO_IBGE=COD_MUNICIPIO_IBGE'
      'IBGE=IBGE'
      'PIS=PIS'
      'COFINS=COFINS'
      'EMAIL=EMAIL'
      'ATIVIDADE=ATIVIDADE'
      'CONTADOR_COD_MUNICIPIO_IBGE=CONTADOR_COD_MUNICIPIO_IBGE'
      'CONTADOR_NOME=CONTADOR_NOME'
      'CONTADOR_CPF=CONTADOR_CPF'
      'CONTADOR_CRC=CONTADOR_CRC'
      'CONTADOR_CNPJ=CONTADOR_CNPJ'
      'CONTADOR_CEP=CONTADOR_CEP'
      'CONTADOR_ENDERECO=CONTADOR_ENDERECO'
      'CONTADOR_NUMERO=CONTADOR_NUMERO'
      'CONTADOR_COMPLEMENTO=CONTADOR_COMPLEMENTO'
      'CONTADOR_BAIRRO=CONTADOR_BAIRRO'
      'CONTADOR_FONE=CONTADOR_FONE'
      'CONTADOR_FAX=CONTADOR_FAX'
      'CONTADOR_EMAIL=CONTADOR_EMAIL'
      'INSC_MUNICIPAL=INSC_MUNICIPAL'
      'DATA_ABERTURA=DATA_ABERTURA'
      'CNAE=CNAE'
      'CRT=CRT'
      'CONTADOR_CIDADE=CONTADOR_CIDADE'
      'CONTADOR_COD_MUNICIPIO=CONTADOR_COD_MUNICIPIO'
      'CONTADOR_UF=CONTADOR_UF'
      'PERMITE_CREDITO=PERMITE_CREDITO'
      'FANTASIA=FANTASIA'
      'DFIXAS=DFIXAS'
      'TIPOCALCULO=TIPOCALCULO'
      'SERIE_CTE=SERIE_CTE'
      'SEQ_CTE=SEQ_CTE'
      'COD_PAIS=COD_PAIS'
      'PAIS=PAIS'
      'HOMEPAGE=HOMEPAGE'
      'AIDF=AIDF'
      'NINICIAL=NINICIAL'
      'NFINAL=NFINAL'
      'N_NF_D=N_NF_D'
      'VALIDADE=VALIDADE'
      'RNTRC=RNTRC'
      'SERIE_MDFE=SERIE_MDFE'
      'NUMERO_MDFE=NUMERO_MDFE'
      'MAIL_SERVER=MAIL_SERVER'
      'MAIL_PORTA=MAIL_PORTA'
      'MAIL_USERNAME=MAIL_USERNAME'
      'MAIL_PASSWORD=MAIL_PASSWORD'
      'MAIL_CABECALHO=MAIL_CABECALHO'
      'MAIL_ASSUNTO=MAIL_ASSUNTO'
      'MAIL_MENSAGEM=MAIL_MENSAGEM'
      'MAIL_SSL=MAIL_SSL'
      'MAIL_TLS=MAIL_TLS'
      'REPTEC_CNPJ=REPTEC_CNPJ'
      'REPTEC_CONTATO=REPTEC_CONTATO'
      'REPTEC_EMAIL=REPTEC_EMAIL'
      'REPTEC_FONE=REPTEC_FONE'
      'REPTEC_IDCSRT=REPTEC_IDCSRT'
      'REPTEC_CSRT=REPTEC_CSRT')
    DataSet = frmModulo.qrfilial
    BCDToCurrency = False
    Left = 216
    Top = 64
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 144
    Top = 120
  end
  object ActionManager1: TActionManager
    Left = 24
    Top = 56
    StyleName = 'Platform Default'
    object Action1: TAction
      Caption = 'Editar'
      ShortCut = 16453
      OnExecute = Action1Execute
    end
  end
end
