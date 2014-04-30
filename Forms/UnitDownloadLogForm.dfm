object DownloadLogForm: TDownloadLogForm
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Log'
  ClientHeight = 314
  ClientWidth = 645
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object ProgressInfoLabel: TsLabel
    Left = 0
    Top = 301
    Width = 645
    Height = 13
    Align = alBottom
    Caption = 'ProgressInfoLabel'
    ExplicitWidth = 87
  end
  object Label1: TsLabel
    Left = 0
    Top = 0
    Width = 645
    Height = 13
    Align = alTop
    Caption = 
      'Download of following has failed (double click to try to open in' +
      ' default browser):'
    ExplicitWidth = 383
  end
  object LogList: TJvListView
    Left = 0
    Top = 13
    Width = 645
    Height = 288
    Align = alClient
    Columns = <
      item
        Caption = 'Link'
        Width = 450
      end
      item
        Alignment = taCenter
        Caption = 'Message'
        Width = 180
      end>
    ReadOnly = True
    RowSelect = True
    StateImages = DownloadProgressImages
    TabOrder = 0
    ViewStyle = vsReport
    OnDblClick = LogListDblClick
    ColumnsOrder = '0=450,1=180'
    ExtendedColumns = <
      item
      end
      item
      end>
  end
  object DownloadProgressImages: TsAlphaImageList
    Height = 22
    Width = 22
    Items = <
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000016000000160806000000C4B46C
          3B0000000467414D410000AFC837058AE900000006624B4744000000000000F9
          43BB7F000000097048597300000048000000480046C96B3E0000000976704167
          000000160000001600DCC5E958000003A44944415438CBD5955D4C9C451486DF
          F9E6FBDBFD60C502B6C88F162A6A8381C498AE52688909B196F89BD6B4378D8D
          7A65D4188DE985573531691ABDE84563941AA2B1498D6B03D42825B1513424A0
          D02E34406DD985F25B601128ECCE3733C78B4D97D8D290D4F4C233792FCECD93
          33EF3967861111EE461877850AC00480ECC385202298DA02172E2C69830B075A
          01CAF4A1B80059123E1380A5408E840F015812BEE1834C1F30D46E3BCBF9D230
          D8D2CA8195D2FF5C311101527D74FF7DF9913DD5E1FC0D59390F642ABED39052
          17C046E4898AF26D07B655B2E6FE2B98BEFA77CB1D7BCC00F8523D0FD7EA7969
          7B55F848FD0ED63D3C85B68EC10BDAA7BD998A89288734D900A6D7BDBA262C0B
          F5495E71CE9B07773E6ABD52568AA6FECBF8EAECC551E6B37A66319101BB01E7
          7765205F26D4B31CE8BA1D54292A102645B6566C0ABF5D57819DB9B9F862F00A
          8EB7F4CFB3655DCF3D4C69A691B122E4795B6AAA4BF26CCFFE41495D06762BD4
          F7F50B4636EFA9AFDD1C3EBCAB1A4FE516E0546C149FB7FE9564F36C9FCDED01
          53D9307D77159C1893DD0F063DBC5CFF509EB4E89C9254BC7A754048FD597691
          FDED6BCF3DB6F1839A5A940636E0CCC8088E47869598D0073DC7FED1D11E82A9
          1C642DE5AD82E9BA71ACB33B417B2BC268A82B2F4A32D5AE255C25A938C555E7
          96AAD01BEFBD1836F73F1C864B0E7E9D8AA1B125468B71F5B16BF393E9DDA5F4
          61E92CED31DCEF2F5D5C1E3B1F9B2B3A54B70789A5A6F2CEB6F93ECB3342B575
          1BF35F7DF27114070A91148B185C8EA1B13586A93ED5E806F9878AC935FB6100
          80A9ADA4B9E09C6CEE8A826907EFD436A06A475659434361FE5B3575D8649660
          412C623819C7D7ED315CEDD2BF04397F7DAD5EFC0B6CF8361CE57E1A8B2657CE
          C63A50E016E2DDA79FC1BECAED307C0F0931873131826F7E1EC6D0391D7589EF
          5E6F03326013D6843F1168FF2D1AC7782A068FDD83945098177398D5E368EE8C
          A3AF0D93768AEF02C7D27AF39EB64238307D07B6708F5EEA153A3A3788593189
          8498C11CC6F1534F1CBDAD7CC1BE6E3530136300012080A5453729D33C33999E
          3D53A163E5B23DD03330BD3554C9219142D7C035747FE7A4F82CDFCF82A93F14
          3130E269290EA64CF035BC4E83957523D76C919D18FE531DDDFCC82866AE117A
          4F676963D279DF08CA33F00320190092B4FA688040B7B3C2D0564616ACA6D450
          76A2F782C4F9D321A8A1D011D3A16337486CAD8A6FD29A6083F11963C13D3119
          2949FAD17B4F99361DBA75ACD6F798FDEFFEBC7F0035D5BD37BC0A95F1000000
          25744558746372656174652D6461746500323030392D31312D31355431363A30
          383A34342D30373A30307696CE470000002574455874646174653A6372656174
          6500323031302D30322D31375430373A31323A32372D30373A3030009681FA00
          00002574455874646174653A6D6F6469667900323031302D30312D3131543039
          3A31393A32352D30373A30301495306500000035744558744C6963656E736500
          687474703A2F2F6372656174697665636F6D6D6F6E732E6F72672F6C6963656E
          7365732F4C47504C2F322E312F3BC1B41800000025744558746D6F646966792D
          6461746500323030392D31312D31355431363A30383A34342D30373A30302927
          B8730000001974455874536F6674776172650041646F626520496D6167655265
          61647971C9653C0000000D74455874536F75726365004E75766F6C61AC4F35F1
          0000003474455874536F757263655F55524C00687474703A2F2F7777772E6963
          6F6E2D6B696E672E636F6D2F70726F6A656374732F6E75766F6C612F763DB452
          0000000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000016000000160806000000C4B46C
          3B0000000467414D410000AFC837058AE900000006624B4744000000000000F9
          43BB7F000000097048597300000048000000480046C96B3E0000000976704167
          000000160000001600DCC5E958000004F94944415438CBB5956D6855651CC07F
          CF73CEB9E7ECEEDEEB76B5BCABCDE5D0CDC2EC66A8CB8265A8481B0699910446
          84AE6F96426410D1B70AA20F86100696F40673D0C8965B4AAF30A95D4CCA6EBE
          AC6D775BBB9673CDB5ED9E7B9EF33C7DD8BCCDA28FFD3FFF9F1F3FFE2FCF5F18
          63F83FC20678B1BA9A502942291FAA4D26DF220CF5F0C4C44E57EB4ECB18A431
          585A6301426BAEA98461B87E7165E547AEEB96E77FFD75AF13866F5AC6D03A33
          8304C01866B4DEB2BCAAEABDC7AAAA2A1FADA85858178DB6FB423CF05F46BE52
          8DA978FCD39675EB6E78B0B939BAACBEFE0DDFF7773057011B4009B1FDB6BABA
          23DB93492FFEF4D310863CF8DC735EA7EFB7F705C14E4FEBB6F9D0A2314D4BA2
          D18F373634C4934F3D0555556C4C246C69DBEFF49F3EBD08382001AAABAB0FED
          48A5BCF8934FC29A35D0D848E5F3CFD3EC795EBDD6478AF3CC8BB0AEC6B68F6D
          AAA9892F6A6D85DB6F878A0ADC9616363EF28853BB7AF52BC06C2984D63A1402
          2627E1F265181840DE751789FDFBB9BFACCC5BE6FBED4ACA2D4558739352DD4D
          0B17C62A5B5B91E934E472B36F2627D1C620B4D625F0F0E0E0136D232385C977
          DF8563C7A058845C0EFBCE3B59B46F1F1B6CDB5B3A3DDD7193EF7F759FE7256E
          DCB50B67F56AC4C8084C4F43364BA1AB8BCF3FFC30C8F5F63E53023B42745CEC
          EBDBD671F97261EAE851387912B4868101EC952BA9D8BB97466322F7F8BE97DC
          BD9BC835D3420173FE3CFE975FF2755797EACB645AA594870084318697522950
          8AD098EDB72E5E7C644B34EA556EDA04E934140A108B31D5D383F67DE24D4D30
          3505B68DB974893F7B7BE93973465DF8E9A73D8E10078565B12B0866A7020021
          8818D3766E7474CA2493ED5B3A3ABCC4D5ABD8AB56C1F838E5CB97CFE68D8C80
          E3A0F279A632197AB259D5D7DFBFDB96F2F0BF1644CC870BD1D97FE54A4B573C
          FEC986E3C7DD85C522CE8A15303E3E9B635904B91C13A74EF1DDC080EACFE777
          38B67D146310C6945836406C66068CC108811002DF98DF956D1B3533C3584707
          6E2E87705D1002A314334343082094D208AD7F73E6B65202D6EC505C6F2C8042
          1836D65455756DB66D2F1C1AE2AA5204DDDD14E772229E879348509E4CD2585F
          EF48DB3E3E3C30F0B0059D621E4BFE634D9B96D4D6766F8E4613CE850B044AFD
          6D025852225C1769DBA830C44C4C70773A5D764B43437B00DBE7B34A603F08D6
          D52C5B76AC25918847B3590A4A21003367B1C0B258E03858A5760802A5106363
          DCB37EBD57BB72E591001EB80EACC2B0E9E6152BBA9A93C9989BC95028164B50
          0B8847A3FCEC79EA07CB0ACA1D075B088C31082909C210F279EEDEB0C1ABBEE3
          8EF670CE5C022CAEAB6BDB9A4A2D5870EA14C579500994555672D6F3823EAD1F
          1F0CC3E61F7CBFE07A1E969418AD1152A28280483ECFBD5BB77AA974FA5009EC
          795E345A2C12FAFEEC2F3A675A9E4AF1A3EBAA0B5353AD16BC1F11E2B3DCF4F4
          B61FFFF8A350168B615916C6181082D0F7712D0B37162B2B8147B3D9FDDD8542
          A0D6AEC516021B70962E251389A8F3E3E37B2C387CADDB8E109D8363633BBF1F
          1E2ED8F1388E652101515BCB77DF7CA3877A7A5E2D812D38702E9379FC8B3054
          329DC66968E05B29D5F9D1D1DD96310705D7872D44DBE0A54BDBBEBF78B1202B
          2A706B6A3873FAB43E77E2C4B384E10BA53946085C293FF8E5ECD9985EB2E475
          A3941ECAE5F6D8421C4608FE791505E040677E64E4D15E21DE8EC4E3DE5036FB
          B203AF9572FEAF63FA1706E92D34543849D90000002574455874637265617465
          2D6461746500323030392D31312D31355431363A30383A34342D30373A303076
          96CE470000002574455874646174653A63726561746500323031302D30322D32
          305432333A32363A31352D30373A3030063B5C81000000257445587464617465
          3A6D6F6469667900323031302D30312D31315430393A31393A32372D30373A30
          30830A214C00000035744558744C6963656E736500687474703A2F2F63726561
          74697665636F6D6D6F6E732E6F72672F6C6963656E7365732F4C47504C2F322E
          312F3BC1B41800000025744558746D6F646966792D6461746500323030392D31
          312D31355431363A30383A34342D30373A30302927B873000000197445587453
          6F6674776172650041646F626520496D616765526561647971C9653C0000000D
          74455874536F75726365004E75766F6C61AC4F35F10000003474455874536F75
          7263655F55524C00687474703A2F2F7777772E69636F6E2D6B696E672E636F6D
          2F70726F6A656374732F6E75766F6C612F763DB4520000000049454E44AE4260
          82}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000016000000160806000000C4B46C
          3B0000000467414D410000B18E7CFB519300000A3D69434350696363000078DA
          9D53675453E9163DF7DEF4424B8880944B6F5215082052428B805469A2129200
          A184181240EC88A8C088A2228215191471C0D11190B1228A8541B1F701790828
          E3E0283654DE0FDE1A7DB3E6BD376FF6AFBDF639679DEF9C7D3E004660B0449A
          85AA01644A15F288001F3C362E1E2777030A542081038040982D0B89F48F0200
          E0FBF1F0EC88001FF80204E0CD6D4000006ED80486E138FC7F5017CAE40A0024
          0C00A68BC4D94200A41000327215320500320A00ECA4749902002500005B1E1B
          170F806A01003B65924F030076D224F70200B628532A0240A3004026CA148900
          D00E005897A3148B00B0600028CA91887301B09B006092A1CC940060EF00809D
          2916640310180060A2100B530108F600C0904745F000083301288C94AF78D257
          5C21CE530000F0B2648BE5929454056E21B4C41D5C5DB978A0383743AC50D884
          0984E902B908E76565CA04D2C5009333030080467644800FCEF7E3393BB83A3B
          DB38DA3A7CB5A8FF1AFC8B888D8BFF973FAFC201010084D3F545FBB3BCAC1A00
          EE1800B6F18B96B41DA0650D80D6FD2F9AC91E00D54280E6AB5FCDC3E1FBF1F0
          548542E66667979B9B6B2B110B6D85A95FF5F99F097F015FF5B3E5FBF1F0DFD7
          83FB8A9305CA0C051E11E0830BB332B294723C5B26108A719B3F1EF1DF2EFCF3
          774C8B10278BE562A9508C474BC4B912690ACECB928A240A4996149748FF9389
          7FB3EC0F98BC6B0060D57E06F6425B50BBCA06EC972E20B0E88025EC0200E477
          DF82A9D110060031068393770F0030F99BFF1D681900A0D992141C0080171185
          0B95F29CC918010080083450053668833E188305D88023B8803B78811FCC8650
          88823858004248854C90432E2C8555500425B011B64215EC865AA8874638022D
          7002CEC205B802D7E0163C805E1880E7300A6F601C411032C244588836628098
          22D68823C24566217E48301281C42189480A224594C85264355282942355C85E
          A41EF91E398E9C452E213DC83DA40F19467E433EA018CA40D9A81E6A86DAA15C
          D41B0D42A3D0F9680ABA08CD470BD10D68255A831E429BD1B3E815F416DA8B3E
          47C730C0E8180733C46C302EC6C342B1782C199363CBB162AC02ABC11AB136AC
          13BB81F56223D87B0289C022E0041B823B2190309720242C222C279412AA0807
          08CD840EC20D421F6194F099C824EA12AD896E443E31969842CC2516112B8875
          C463C4F3C45BC401E21B1289C42199935C4881A438521A6909A994B493D4443A
          43EA21F593C6C864B236D99AEC410E250BC80A7211793BF910F934F93A7980FC
          8E42A718501C29FE94788A945240A9A01CA49CA25CA70C52C6A96A5453AA1B35
          942AA22EA696516BA96DD4ABD401EA384D9D664EF3A045D1D268AB6895B446DA
          79DA43DA2B3A9D6E4477A587D325F495F44AFA61FA457A1FFD3D438361C5E031
          12184AC606C67EC619C63DC62B269369C6F462C63315CC0DCC7AE639E663E63B
          15968AAD0A5F45A4B242A55AA559E5BACA0B55AAAAA9AAB7EA02D57CD50AD5A3
          AA575547D4A86A666A3C3581DA72B56AB5E36A77D4C6D459EA0EEAA1EA99EAA5
          EA07D52FA90F699035CC34FC34441A851AFB34CE69F4B33096318BC712B256B3
          6A59E759036C12DB9CCD67A7B14BD8DFB1BBD9A39A1A9A3334A335F334AB354F
          6AF672308E1987CFC9E094718E706E733E4CD19BE23D453C65FD94C629D7A7BC
          D59AAAE5A525D62AD66AD2BAA5F5411BD7F6D34ED7DEA4DDA2FD4887A063A513
          AE93ABB34BE7BCCEC854F654F7A9C2A9C5538F4CBDAF8BEA5AE946E82ED1DDA7
          DBA53BA6A7AF17A027D3DBAE774E6F449FA3EFA59FA6BF45FF94FEB001CB6096
          81C4608BC1698367B826EE8D67E09578073E6AA86B1868A834DC6BD86D386E64
          6E34D7A8C0A8C9E89131CD986B9C6CBCC5B8DD78D4C4C024C464A94983C97D53
          AA29D734D5749B69A7E95B3373B318B3B5662D6643E65AE67CF37CF306F38716
          4C0B4F8B45163516372D49965CCB74CB9D96D7AC502B27AB54AB6AABABD6A8B5
          B3B5C47AA775CF34E234D769D26935D3EED8306CBC6D726C1A6CFA6C39B6C1B6
          05B62DB62FEC4CECE2ED36D975DA7DB677B2CFB0AFB57FE0A0E130DBA1C0A1CD
          E137472B47A163B5E3CDE9CCE9FED3574C6F9DFE7286F50CF18C5D33EE3AB19C
          429CD63AB53B7D727671963B373A0FBB98B824BAEC70B9C36573C3B8A5DC8BAE
          44571FD715AE275CDFBB39BB29DC8EB8FDEA6EE39EEE7ED07D68A6F94CF1CCDA
          99FD1E461E028FBD1EBDB3F05989B3F6CCEAF534F41478D6783EF132F61279D5
          790D7A5B7AA7791FF27EE163EF23F739E6F396E7C65BC63BE38BF906F816FB76
          FB69F8CDF5ABF27BEC6FE49FE2DFE03F1AE014B024E04C203130287053E01DBE
          1E5FC8AFE78FCE7699BD6C764710232832A82AE849B055B03CB82D040D991DB2
          39E4E11CD339D2392DA110CA0FDD1CFA28CC3C6C51D88FE1A4F0B0F0EAF0A711
          0E114B233A2359910B230F46BE89F2892A8B7A30D762AE726E7BB46A7442747D
          F4DB18DF98F298DE58BBD865B157E274E22471ADF1E4F8E8F8BAF8B1797EF3B6
          CE1B48704A284AB83DDF7C7EDEFC4B0B7416642C38B95075A160E1D14462624C
          E2C1C48F8250418D602C899FB4236954C8136E133E177989B68886C51EE272F1
          60B2477279F2508A47CAE694E154CFD48AD411094F522579991698B63BED6D7A
          68FAFEF4898C988CA64C4A6662E671A986345DDA91A59F9597D523B39615C97A
          17B92DDABA68541E24AFCB46B2E767B72AD80A99A24B69A15CA3ECCB9995539D
          F32E373AF7689E7A9E34AF6BB1D5E2F58B07F3FDF3BF5D4258225CD2BED470E9
          AAA57DCBBC97ED5D8E2C4F5ADEBEC27845E18A8195012B0FACA2AD4A5FF55381
          7D4179C1EBD531ABDB0AF50A5716F6AF0958D350A452242FBAB3D67DEDEE7584
          759275DDEBA7AFDFBEFE73B1A8F872897D4945C9C75261E9E56F1CBEA9FC6662
          43F286EE32E7B25D1B491BA51B6F6FF2DC74A05CBD3CBFBC7F73C8E6E62DF896
          E22DAFB72EDC7AA96246C5EE6DB46DCA6DBD95C195ADDB4DB66FDCFEB12AB5EA
          56B54F75D30EDD1DEB77BCDD29DA797D97D7AEC6DD7ABB4B767FD823D973776F
          C0DEE61AB39A8A7DA47D39FB9ED646D7767ECBFDB6BE4EA7AEA4EED37EE9FEDE
          0311073AEA5DEAEB0FEA1E2C6B401B940DC387120E5DFBCEF7BBD6469BC6BD4D
          9CA692C3705879F8D9F789DFDF3E1274A4FD28F768E30FA63FEC38C63A56DC8C
          342F6E1E6D496DE96D8D6BED393EFB787B9B7BDBB11F6D7FDC7FC2F044F549CD
          9365A768A70A4F4D9CCE3F3D76467666E46CCAD9FEF685ED0FCEC59EBBD911DE
          D17D3EE8FCC50BFE17CE757A779EBEE871F1C425B74BC72F732FB75C71BED2DC
          E5D475EC27A79F8E753B77375F75B9DA7ACDF55A5BCFCC9E53D73DAF9FBDE17B
          E3C24DFECD2BB7E6DCEAB93DF7F6DD3B09777AEF8AEE0EDDCBB8F7F27ECEFDF1
          072B1F121F163F527B54F158F771CDCF963F37F53AF79EECF3EDEB7A12F9E441
          BFB0FFF93FB2FFF171A0F029F369C5A0C160FD90E3D08961FFE16BCFE63D1B78
          2E7B3E3E52F48BFA2F3B5E58BCF8E157AF5FBB466347075ECA5F4EFC56FA4AFB
          D5FED7335EB78F858D3D7E93F966FC6DF13BED7707DE73DF777E88F930389EFB
          91FCB1F293E5A7B6CF419F1F4E644E4CFC130398F3FC256333A2000000206348
          524D00007A25000080830000F9FF000080E9000075300000EA6000003A980000
          176F925FC54600000006624B4744000000000000F943BB7F0000000970485973
          00000B1200000B1201D2DD7EFC0000000976704167000000160000001600DCC5
          E9580000046D4944415438CB8D945D6C544514C77F33733F76FBB16D7729B415
          AC808A201A051E24290962881289241283466B78D047438CCFBEF0E0136AF0C1
          181342227E104D402406899410137C002920129A948F8AA6059AB6DBDDEDEEBD
          73E7CEF8D0B2B65413CED3993327BFFCE7CC39471CF87C3B6FF51D213A9830DB
          5ADF6CA0F845B57EDEB7EFD89175EB56F6707FF693B7A17B195FF7EE9C77331B
          3A633D2B5776E7FF8F1404A2EE5FBC38F4822C69CDCBCB56DDA790F9E61C2825
          E6C53D01A4CEA1EE1374E2C4B9793129056A06B079F3DA6930402D4968BA4FF0
          47C57739B4F544FD9CC904789E40CA7B140394E218DBBF9B5C439603677FA5B7
          F730DFEF79FD5360473DB3ED8DE9A75BC78B6736F0DED4DE6970182025083157
          B1B87474170B1615208D31C6F0FBB9D1FD52B0AE4ADAF9CC9A15E2CA64B56DA0
          5C13578C8B87BC4B61D94CE2BF16C2C9618E6FBA0A502FC3ACCF1BF78410B96B
          0377F6FB1E5D89B69D4FAD5D5600D1E81C0220DB5270F9D62CCFE6DAC3CCA3EB
          F93BB8C1E1D277742D5E4FE72705F63D7C0CA5249E271062568D4747A6DEA954
          6A2F2D5CDCECB52F6A21680AD0514A6A529483588E89292FE2747281AB513F36
          4A59727B155F5DFC929C6BA3A76735994C863094F57200880F776D9858F9C8C2
          569B5A100A9C23D390A5D0B18005ED056E791EE74727E8FB738473C9693A5A0A
          9CF57F2337DCC6670FFD50EF8A2008F07DC1E6CD6BA74B9109C3586B8B732990
          E29C239ED494C6C718B492E67C81ADAB5713063D7CF0FC1EDE3EBD9D96E13C7F
          F40E2184C0F324524A949264B3FEDCAE485C42129BE9040FAC0394C089946A54
          254E0C0E07C0E5DB037CDCF52DA74E9D47088152122104520A7CDF67CB967A1F
          3B529D50AC444C55521A1A24B9661FE504D65A909A3831E0C0931EFDAF0ECE0C
          84AAABBD0B9652CD52EC20490CBE67199B9C64AC04F95A23EDF910671CE88424
          8AEB8AEF8E31405F5F3F4A49366D5A8373026B53989961CF0151123356AC614D
          4A5B3EA452D6340502E14B84D6445184B3FF82EFFEFEC68D4FE379D38AEFC6D2
          74D6AE48128D2F21D328C13A5C6A28D5521AF1D14A12698D7465FA7EFEE53FC7
          DCE1971D72F6DEBDE1590BCE19A4EFF0B5A05C312446D3A29A49B4C5098D3609
          1D9C400A9FD46894F2906ADA37A6C69DD1C95776BE7FECF89CC514E9A4162A49
          5233F8CAD19C75149A7D8C89D12622D10619B6A0C21C4EF848BF11A7420C1E51
          AC912E61DFA10BF2DE57C8BD07CFECB646D39415049E40484B6A53629D10EB94
          C4A4586389E3986AB5C254B54CAD5A22298FE0A71354CB930C0C8D87F78285A7
          C4F2AEBCBF6B6947B8E3B1EEE6850F763610860A9D42AC2D9E9FE1F127D60016
          612AD8B44A71A2C4D51B452E5D1F1FB93C54F9E6E6EDEA5E63ECCD3960804091
          6D0C456BCDB0BC29A3B62FC9FBDB9E5CD1B4B4734148AEB991254B3A18BD53E4
          FA5F25776E60FCDAD0ADDAD1C92973B8B5490D8E1693A2362E9AA718A0311484
          9E607CCA92F5F08D257082E5595F6CEBEEF09FF355900E0E574F46DAFD184A06
          85445762973CD01E502C1BA6228B736E0EF81F36F006BAFA577AB10000002574
          4558746372656174652D6461746500323030392D31312D32385431373A31383A
          32382D30373A30303191B22C0000002574455874646174653A63726561746500
          323031302D30322D32325431363A31303A30362D30373A3030896BE36F000000
          2574455874646174653A6D6F6469667900323031302D30312D31315430383A34
          333A35362D30373A3030945BC6EF00000035744558744C6963656E7365006874
          74703A2F2F6372656174697665636F6D6D6F6E732E6F72672F6C6963656E7365
          732F4C47504C2F322E312F3BC1B41800000025744558746D6F646966792D6461
          746500323030392D31312D32385431343A33313A35322D30373A3030D9266C8A
          0000001674455874536F75726365004372797374616C2050726F6A656374EBE3
          E48B0000002774455874536F757263655F55524C00687474703A2F2F65766572
          616C646F2E636F6D2F6372797374616C2FA591935B0000000049454E44AE4260
          82}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000016000000160806000000C4B46C
          3B0000000467414D410000B18F0BFC6105000000017352474200AECE1CE90000
          00206348524D00007A26000080840000FA00000080E8000075300000EA600000
          3A98000017709CBA513C00000006624B4744000000000000F943BB7F00000009
          70485973000009840000098401AAE26379000000097670416700000016000000
          1600DCC5E958000005364944415438CBA5D45B6C53751C07F0EFFF9CD3D3D3D3
          AEF76D5DC7D65DDA0D76615C866E086C81805C22B844C4EC0535C1684C487C31
          D171475F4C8846128D41A3184362F4450CDE2080DB0CC1015318B0B16BB75ED6
          95B5EBFD9CD3F6FC7D580406F222DFE75F3EF9E5FBF0257820A59E23F00F1F80
          ADEC608322653A5B5ADDEB0B8C8293D1B06C389C0A0C0D4CF52A59F554C4FF7E
          9FD3731881E183785CC87DF400E209182D16CDA975AD15DB9EEB58815B034104
          43311A8F4944CEA9B016192165819EB3D77B1599BC303DB62FF438989D470F22
          97E3DCF5B5D681D75E59DDB4E5F99574362E11AF7F0EFD7766495D6B2D22D114
          52B124EA5656D1B5CF36B802DED05E495E712693E89EFE4FB8D4731479952FB0
          99D98137DF68B3F94209D4369611462740A180BDC884443203778D03042A866E
          07485ECE61C3D6267670C0F72AA75D7BC2646D4B26A21717C08C7F783F18C8DF
          BCB4B3D936391D83ABA60482C0C1A0E7F1F1979710CB03A3DEBBB870691C7D83
          610CFA62988C48882614AC68716B441DCEF8470F3DFA7189E768635D6DD147E5
          1536CA8B3CD9BCB911D35119314585BBC60957451146FD73084592E0B51A4493
          0A66C371E4B32AFEBEE645CB339E12BFDFD36B2DDA389E885CB8FF31C7A8BB18
          86013896143AAD8824B35019064A8EA2D26543FF600093B329A4088388AC8237
          68A1100256A7C5AE3DED70563B40D5FC6EFFC8FE8555B00C690FCF65F073F708
          E26905942110040D6C661D7CC108A06661B08860440154A785C16A404B73195A
          97DAD1566FC3EAE5C5F4C58EC6ED0070FA6AF21ECC65957CA920F298082571F9
          4610F5CB5CF8A56704959576F8EEC661B68A6812B4B87023082AE7D0B2C4866D
          2D4BF0EE77697C76250F029688863653EF1D65744D0D5F7D0FAE7059C9982F06
          BED088A4944577BF0F35D57604E7240C4614E4284041C11A74C81219B515661C
          FE3688F3C7EA9156E61181073AF7DDAC7AB00A2E9190023A1DE792F214A3C114
          B2B743604501D74329F8332A640A700CC0EA78B0AA0A87BD00FE893E8CFACB90
          4CE7000006518391E1DB5808A7941E56E05B0B440E1A9E41A145C0D73D6368A8
          75A0AB630926E7249C1B0A63229C44269D83DDAC476676045E6F3D32E92C0040
          14359022E30BE1B44CBF37B0F9B76331895A2D06722790407B43091C2566083C
          8732AB1EBB5B0DD0922C0A752C169905C8B10026BD7E48D23CAC13782871FFA3
          5BE1A83CF0AB5862DDC4159B018B01565721DA5B5CD854E7443CAB42AF61101A
          F3E1C32F7A30E28B425F60C68EE63C943C0101A0E1284E5F6129CD26887B910D
          0EBB7E2D5BEA390A80FFCDC0E5F67016A3C0E805640983282558BCC888628380
          6291C5F0CD414C8C0E6171690EE5A63412E93CB279068AA2229E905122CE9112
          A30C7759210281E0F0BD75B3951F5A565561FADDB1CA6334543B286B144893DB
          8E9DF545984CE56117186C6CEB80602A4479552DAC561B44BD1E2CC3409625CC
          8466100D4DD26B7F76CFE1EE5F56F65F3813BB380D4DFB57BE5BDED680375C3E
          2351B84B4D8086C7582846A74209B263531B4E7CFA098A5C4BA9566F271AC108
          4A046414202D2BE8EFF99130ACA6596B2C0F730B0A27CA7468FCC81A27F35E5B
          DC77A5F3F39E9B5B44B3E84C6755924F2BD31D1B3C7F2CAF6F9E1ABB71F1AD65
          ABDE81492F82651924330AFACE9D84AAE6BB94E9BE5BCAE3467ABEF7C787B5D5
          9D5DD7D9A51EFBC1478FFF3443B7BEFE810A7D693F9E24DAE2E520652D2C788B
          BCF7F839B5EBE4551544A01A8BC7A8B1B89FC806618C600A4AD714D53D45CB9E
          5E4F89CEB6FDE11BEEFFC0548D8326E2BDE50DDB5E06C7E9A72E9F3FFDF0CD3F
          493F33C85F0A7FB300000025744558746372656174652D646174650032303039
          2D31312D31355431373A30333A30352D30373A303071DDE97B00000025744558
          74646174653A63726561746500323031302D30312D32355430383A33303A3431
          2D30373A3030A9ACF9C00000002574455874646174653A6D6F64696679003230
          31302D30312D31315430393A32353A33372D30373A3030CC7EA75D0000006774
          4558744C6963656E736500687474703A2F2F6372656174697665636F6D6D6F6E
          732E6F72672F6C6963656E7365732F62792D73612F332E302F206F7220687474
          703A2F2F6372656174697665636F6D6D6F6E732E6F72672F6C6963656E736573
          2F4C47504C2F322E312F5B8F3C6300000025744558746D6F646966792D646174
          6500323030392D30382D32375432313A35313A32332D30363A3030711D946800
          00001374455874536F75726365004F787967656E2049636F6E73EC18AEE80000
          002774455874536F757263655F55524C00687474703A2F2F7777772E6F787967
          656E2D69636F6E732E6F72672FEF37AACB0000000049454E44AE426082}
      end>
    Left = 248
    Top = 110
    Bitmap = {}
  end
end