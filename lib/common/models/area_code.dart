class AreaCodeListModel {
  AreaCodeListModel({
    required this.areaCodeList,
  });

  final List<AreaCodeData> areaCodeList;

  factory AreaCodeListModel.fromJson(Map<String, dynamic> json) =>
      AreaCodeListModel(
        areaCodeList: List<AreaCodeData>.from(
            json["areaCodeList"].map((x) => AreaCodeData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "areaCodeList": List<dynamic>.from(areaCodeList.map((x) => x.toJson())),
      };

  static final child = {
    'areaCodeList': [
      {
        "english_name": "Afghanistan",
        "chinese_name": "阿富汗",
        "trad_name": "阿富汗",
        "country_code": "AF",
        "chinese_pinyin": "A",
        "phone_code": "93"
      },
      {
        "english_name": "Alaska",
        "chinese_name": "阿拉斯加",
        "trad_name": "阿拉斯加",
        "country_code": "USK",
        "chinese_pinyin": "A",
        "phone_code": "1907"
      },
      {
        "english_name": "Albania",
        "chinese_name": "阿尔巴尼亚",
        "trad_name": "阿爾巴尼亞",
        "country_code": "AL",
        "chinese_pinyin": "A",
        "phone_code": "355"
      },
      {
        "english_name": "Algeria",
        "chinese_name": "阿尔及利亚",
        "trad_name": "阿爾及利亞",
        "country_code": "DZ",
        "chinese_pinyin": "A",
        "phone_code": "213"
      },
      {
        "english_name": "American Samoa",
        "chinese_name": "美属萨摩亚",
        "trad_name": "美屬薩摩亞",
        "country_code": "AS",
        "chinese_pinyin": "M",
        "phone_code": "1684"
      },
      {
        "english_name": "Andorra",
        "chinese_name": "安道尔",
        "trad_name": "安道爾",
        "country_code": "AD",
        "chinese_pinyin": "A",
        "phone_code": "376"
      },
      {
        "english_name": "Angola",
        "chinese_name": "安哥拉",
        "trad_name": "安哥拉",
        "country_code": "AO",
        "chinese_pinyin": "A",
        "phone_code": "244"
      },
      {
        "english_name": "Anguilla",
        "chinese_name": "安圭拉",
        "trad_name": "安圭拉",
        "country_code": "AI",
        "chinese_pinyin": "A",
        "phone_code": "1264"
      },
      {
        "english_name": "Antigua and Barbuda",
        "chinese_name": "安提瓜和巴布达",
        "trad_name": "安提瓜和巴布達",
        "country_code": "AG",
        "chinese_pinyin": "A",
        "phone_code": "1268"
      },
      {
        "english_name": "Argentina",
        "chinese_name": "阿根廷",
        "trad_name": "阿根廷",
        "country_code": "AR",
        "chinese_pinyin": "A",
        "phone_code": "54"
      },
      {
        "english_name": "Armenia",
        "chinese_name": "亚美尼亚",
        "trad_name": "亞美尼亞",
        "country_code": "AM",
        "chinese_pinyin": "Y",
        "phone_code": "374"
      },
      {
        "english_name": "Aruba",
        "chinese_name": "阿鲁巴",
        "trad_name": "阿魯巴",
        "country_code": "AW",
        "chinese_pinyin": "A",
        "phone_code": "297"
      },
      {
        "english_name": "Ascension",
        "chinese_name": "阿森松",
        "trad_name": "阿森松",
        "country_code": "SH",
        "chinese_pinyin": "A",
        "phone_code": "247"
      },
      {
        "english_name": "Australia",
        "chinese_name": "澳大利亚",
        "trad_name": "澳大利亞",
        "country_code": "AU",
        "chinese_pinyin": "A",
        "phone_code": "61"
      },
      {
        "english_name": "Austria",
        "chinese_name": "奥地利",
        "trad_name": "奧地利",
        "country_code": "AT",
        "chinese_pinyin": "A",
        "phone_code": "43"
      },
      {
        "english_name": "Azerbaijan",
        "chinese_name": "阿塞拜疆",
        "trad_name": "阿塞拜疆",
        "country_code": "AZ",
        "chinese_pinyin": "A",
        "phone_code": "994"
      },
      {
        "english_name": "Bahamas",
        "chinese_name": "巴哈马",
        "trad_name": "巴哈馬",
        "country_code": "BS",
        "chinese_pinyin": "B",
        "phone_code": "1242"
      },
      {
        "english_name": "Bahrain",
        "chinese_name": "巴林",
        "trad_name": "巴林",
        "country_code": "BH",
        "chinese_pinyin": "B",
        "phone_code": "973"
      },
      {
        "english_name": "Bangladesh",
        "chinese_name": "孟加拉国",
        "trad_name": "孟加拉國",
        "country_code": "BD",
        "chinese_pinyin": "M",
        "phone_code": "880"
      },
      {
        "english_name": "Barbados",
        "chinese_name": "巴巴多斯",
        "trad_name": "巴巴多斯",
        "country_code": "BB",
        "chinese_pinyin": "B",
        "phone_code": "1246"
      },
      {
        "english_name": "Belarus",
        "chinese_name": "白俄罗斯",
        "trad_name": "白俄羅斯",
        "country_code": "BY",
        "chinese_pinyin": "B",
        "phone_code": "375"
      },
      {
        "english_name": "Belgium",
        "chinese_name": "比利时",
        "trad_name": "比利時",
        "country_code": "BE",
        "chinese_pinyin": "B",
        "phone_code": "32"
      },
      {
        "english_name": "Belize",
        "chinese_name": "伯利兹",
        "trad_name": "伯利茲",
        "country_code": "BZ",
        "chinese_pinyin": "B",
        "phone_code": "501"
      },
      {
        "english_name": "Benin",
        "chinese_name": "贝宁",
        "trad_name": "貝寧",
        "country_code": "BJ",
        "chinese_pinyin": "B",
        "phone_code": "229"
      },
      {
        "english_name": "Bermuda",
        "chinese_name": "百慕大群岛",
        "trad_name": "百慕大群島",
        "country_code": "BM",
        "chinese_pinyin": "B",
        "phone_code": "1441"
      },
      {
        "english_name": "Bhutan",
        "chinese_name": "不丹",
        "trad_name": "不丹",
        "country_code": "BT",
        "chinese_pinyin": "B",
        "phone_code": "975"
      },
      {
        "english_name": "Bolivia",
        "chinese_name": "玻利维亚",
        "trad_name": "玻利維亞",
        "country_code": "BO",
        "chinese_pinyin": "B",
        "phone_code": "591"
      },
      {
        "english_name": "Bosnia and Herzegovina",
        "chinese_name": "波斯尼亚和黑塞哥维那",
        "trad_name": "波斯尼亞和黑塞哥維那",
        "country_code": "BA",
        "chinese_pinyin": "B",
        "phone_code": "387"
      },
      {
        "english_name": "Botswana",
        "chinese_name": "博茨瓦纳",
        "trad_name": "博茨瓦納",
        "country_code": "BW",
        "chinese_pinyin": "B",
        "phone_code": "267"
      },
      {
        "english_name": "Brazil",
        "chinese_name": "巴西",
        "trad_name": "巴西",
        "country_code": "BR",
        "chinese_pinyin": "B",
        "phone_code": "55"
      },
      {
        "english_name": "Brunei",
        "chinese_name": "文莱",
        "trad_name": "文萊",
        "country_code": "BN",
        "chinese_pinyin": "W",
        "phone_code": "673"
      },
      {
        "english_name": "Bulgaria",
        "chinese_name": "保加利亚",
        "trad_name": "保加利亞",
        "country_code": "BG",
        "chinese_pinyin": "B",
        "phone_code": "359"
      },
      {
        "english_name": "Burkina Faso",
        "chinese_name": "布基纳法索",
        "trad_name": "布基納法索",
        "country_code": "BF",
        "chinese_pinyin": "B",
        "phone_code": "226"
      },
      {
        "english_name": "Burundi",
        "chinese_name": "布隆迪",
        "trad_name": "布隆迪",
        "country_code": "BI",
        "chinese_pinyin": "B",
        "phone_code": "257"
      },
      {
        "english_name": "Cambodia",
        "chinese_name": "柬埔寨",
        "trad_name": "柬埔寨",
        "country_code": "KH",
        "chinese_pinyin": "J",
        "phone_code": "855"
      },
      {
        "english_name": "Cameroon",
        "chinese_name": "喀麦隆",
        "trad_name": "喀麥隆",
        "country_code": "CM",
        "chinese_pinyin": "K",
        "phone_code": "237"
      },
      {
        "english_name": "Canada",
        "chinese_name": "加拿大",
        "trad_name": "加拿大",
        "country_code": "CA",
        "chinese_pinyin": "J",
        "phone_code": "1"
      },
      {
        "english_name": "Islas Canarias",
        "chinese_name": "加那利群岛",
        "trad_name": "加那利群島",
        "country_code": "ES",
        "chinese_pinyin": "J",
        "phone_code": "34"
      },
      {
        "english_name": "Cape Verde",
        "chinese_name": "开普",
        "trad_name": "開普",
        "country_code": "CV",
        "chinese_pinyin": "K",
        "phone_code": "238"
      },
      {
        "english_name": "Cayman Islands",
        "chinese_name": "开曼群岛",
        "trad_name": "開曼群島",
        "country_code": "KY",
        "chinese_pinyin": "K",
        "phone_code": "1345"
      },
      {
        "english_name": "Central African Republic",
        "chinese_name": "中非共和国",
        "trad_name": "中非共和國",
        "country_code": "CF",
        "chinese_pinyin": "Z",
        "phone_code": "236"
      },
      {
        "english_name": "Chad",
        "chinese_name": "乍得",
        "trad_name": "乍得",
        "country_code": "TD",
        "chinese_pinyin": "Z",
        "phone_code": "235"
      },
      {
        "english_name": "China",
        "chinese_name": "中国",
        "trad_name": "中國",
        "country_code": "CN",
        "chinese_pinyin": "Z",
        "phone_code": "86"
      },
      {
        "english_name": "Chile",
        "chinese_name": "智利",
        "trad_name": "智利",
        "country_code": "CL",
        "chinese_pinyin": "Z",
        "phone_code": "56"
      },
      {
        "english_name": "Christmas Island",
        "chinese_name": "圣诞岛",
        "trad_name": "聖誕島",
        "country_code": "CX",
        "chinese_pinyin": "S",
        "phone_code": "0061 9164"
      },
      {
        "english_name": "Cocos Island",
        "chinese_name": "科科斯岛",
        "trad_name": "科科斯島",
        "country_code": "CC",
        "chinese_pinyin": "K",
        "phone_code": "0061 9162"
      },
      {
        "english_name": "Colombia",
        "chinese_name": "哥伦比亚",
        "trad_name": "哥倫比亞",
        "country_code": "CO",
        "chinese_pinyin": "G",
        "phone_code": "57"
      },
      {
        "english_name": "Dominican Republic",
        "chinese_name": "多米尼加共和国",
        "trad_name": "多米尼加共和國",
        "country_code": "DO",
        "chinese_pinyin": "D",
        "phone_code": "1809"
      },
      {
        "english_name": "Comoros",
        "chinese_name": "科摩罗",
        "trad_name": "科摩羅",
        "country_code": "KM",
        "chinese_pinyin": "K",
        "phone_code": "269"
      },
      {
        "english_name": "Republic Of The Congo",
        "chinese_name": "刚果共和国",
        "trad_name": "剛果共和國",
        "country_code": "CG",
        "chinese_pinyin": "G",
        "phone_code": "242"
      },
      {
        "english_name": "Cook Islands",
        "chinese_name": "库克群岛",
        "trad_name": "庫克群島",
        "country_code": "CK",
        "chinese_pinyin": "K",
        "phone_code": "682"
      },
      {
        "english_name": "Costa Rica",
        "chinese_name": "哥斯达黎加",
        "trad_name": "哥斯達黎加",
        "country_code": "CR",
        "chinese_pinyin": "G",
        "phone_code": "506"
      },
      {
        "english_name": "Croatia",
        "chinese_name": "克罗地亚",
        "trad_name": "克羅地亞",
        "country_code": "HR",
        "chinese_pinyin": "K",
        "phone_code": "385"
      },
      {
        "english_name": "Cuba",
        "chinese_name": "古巴",
        "trad_name": "古巴",
        "country_code": "CU",
        "chinese_pinyin": "G",
        "phone_code": "53"
      },
      {
        "english_name": "Curacao",
        "chinese_name": "库拉索",
        "trad_name": "庫拉索",
        "country_code": "CW",
        "chinese_pinyin": "K",
        "phone_code": "599"
      },
      {
        "english_name": "Cyprus",
        "chinese_name": "塞浦路斯",
        "trad_name": "塞浦路斯",
        "country_code": "CY",
        "chinese_pinyin": "S",
        "phone_code": "357"
      },
      {
        "english_name": "Czech",
        "chinese_name": "捷克",
        "trad_name": "捷克",
        "country_code": "CZ",
        "chinese_pinyin": "J",
        "phone_code": "420"
      },
      {
        "english_name": "Denmark",
        "chinese_name": "丹麦",
        "trad_name": "丹麥",
        "country_code": "DK",
        "chinese_pinyin": "D",
        "phone_code": "45"
      },
      {
        "english_name": "Djibouti",
        "chinese_name": "吉布提",
        "trad_name": "吉布提",
        "country_code": "DJ",
        "chinese_pinyin": "J",
        "phone_code": "253"
      },
      {
        "english_name": "Dominica",
        "chinese_name": "多米尼加",
        "trad_name": "多米尼加",
        "country_code": "DM",
        "chinese_pinyin": "D",
        "phone_code": "1767"
      },
      {
        "english_name": "Dominican Republic",
        "chinese_name": "多米尼加共和国",
        "trad_name": "多米尼加共和國",
        "country_code": "DOD",
        "chinese_pinyin": "D",
        "phone_code": "1809"
      },
      {
        "english_name": "Ecuador",
        "chinese_name": "厄瓜多尔",
        "trad_name": "厄瓜多爾",
        "country_code": "EC",
        "chinese_pinyin": "E",
        "phone_code": "593"
      },
      {
        "english_name": "Egypt",
        "chinese_name": "埃及",
        "trad_name": "埃及",
        "country_code": "EG",
        "chinese_pinyin": "A",
        "phone_code": "20"
      },
      {
        "english_name": "El Salvador",
        "chinese_name": "萨尔瓦多",
        "trad_name": "薩爾瓦多",
        "country_code": "SV",
        "chinese_pinyin": "S",
        "phone_code": "503"
      },
      {
        "english_name": "Equatorial Guinea",
        "chinese_name": "赤道几内亚",
        "trad_name": "赤道幾內亞",
        "country_code": "GQ",
        "chinese_pinyin": "C",
        "phone_code": "240"
      },
      {
        "english_name": "Eritrea",
        "chinese_name": "厄立特里亚",
        "trad_name": "厄立特里亞",
        "country_code": "ER",
        "chinese_pinyin": "E",
        "phone_code": "291"
      },
      {
        "english_name": "Estonia",
        "chinese_name": "爱沙尼亚",
        "trad_name": "愛沙尼亞",
        "country_code": "EE",
        "chinese_pinyin": "A",
        "phone_code": "372"
      },
      {
        "english_name": "Ethiopia",
        "chinese_name": "埃塞俄比亚",
        "trad_name": "埃塞俄比亞",
        "country_code": "ET",
        "chinese_pinyin": "A",
        "phone_code": "251"
      },
      {
        "english_name": "Falkland Islands",
        "chinese_name": "福克兰群岛",
        "trad_name": "福克蘭群島",
        "country_code": "FK",
        "chinese_pinyin": "F",
        "phone_code": "500"
      },
      {
        "english_name": "Faroe Islands",
        "chinese_name": "法罗群岛",
        "trad_name": "法羅群島",
        "country_code": "FO",
        "chinese_pinyin": "F",
        "phone_code": "298"
      },
      {
        "english_name": "Fiji",
        "chinese_name": "斐济",
        "trad_name": "斐濟",
        "country_code": "FJ",
        "chinese_pinyin": "F",
        "phone_code": "679"
      },
      {
        "english_name": "Finland",
        "chinese_name": "芬兰",
        "trad_name": "芬蘭",
        "country_code": "FI",
        "chinese_pinyin": "F",
        "phone_code": "358"
      },
      {
        "english_name": "France",
        "chinese_name": "法国",
        "trad_name": "法國",
        "country_code": "FR",
        "chinese_pinyin": "F",
        "phone_code": "33"
      },
      {
        "english_name": "French Guiana",
        "chinese_name": "法属圭亚那",
        "trad_name": "法屬圭亞那",
        "country_code": "GF",
        "chinese_pinyin": "F",
        "phone_code": "594"
      },
      {
        "english_name": "French Polynesia",
        "chinese_name": "法属波利尼西亚",
        "trad_name": "法屬波利尼西亞",
        "country_code": "PF",
        "chinese_pinyin": "F",
        "phone_code": "689"
      },
      {
        "english_name": "Gabon",
        "chinese_name": "加蓬",
        "trad_name": "加蓬",
        "country_code": "GA",
        "chinese_pinyin": "J",
        "phone_code": "241"
      },
      {
        "english_name": "Gambia",
        "chinese_name": "冈比亚",
        "trad_name": "岡比亞",
        "country_code": "GM",
        "chinese_pinyin": "G",
        "phone_code": "220"
      },
      {
        "english_name": "Georgia",
        "chinese_name": "格鲁吉亚",
        "trad_name": "格魯吉亞",
        "country_code": "GE",
        "chinese_pinyin": "G",
        "phone_code": "995"
      },
      {
        "english_name": "Germany",
        "chinese_name": "德国",
        "trad_name": "德國",
        "country_code": "DE",
        "chinese_pinyin": "D",
        "phone_code": "49"
      },
      {
        "english_name": "Ghana",
        "chinese_name": "加纳",
        "trad_name": "加納",
        "country_code": "GH",
        "chinese_pinyin": "J",
        "phone_code": "233"
      },
      {
        "english_name": "Gibraltar",
        "chinese_name": "直布罗陀",
        "trad_name": "直布羅陀",
        "country_code": "GI",
        "chinese_pinyin": "Z",
        "phone_code": "350"
      },
      {
        "english_name": "Greece",
        "chinese_name": "希腊",
        "trad_name": "希臘",
        "country_code": "GR",
        "chinese_pinyin": "X",
        "phone_code": "30"
      },
      {
        "english_name": "Greenland",
        "chinese_name": "格陵兰岛",
        "trad_name": "格陵蘭島",
        "country_code": "GL",
        "chinese_pinyin": "G",
        "phone_code": "299"
      },
      {
        "english_name": "Grenada",
        "chinese_name": "格林纳达",
        "trad_name": "格林納達",
        "country_code": "GD",
        "chinese_pinyin": "G",
        "phone_code": "1473"
      },
      {
        "english_name": "Guadeloupe",
        "chinese_name": "瓜德罗普岛",
        "trad_name": "瓜德羅普島",
        "country_code": "GP",
        "chinese_pinyin": "G",
        "phone_code": "590"
      },
      {
        "english_name": "Guam",
        "chinese_name": "关岛",
        "trad_name": "關島",
        "country_code": "GU",
        "chinese_pinyin": "G",
        "phone_code": "1671"
      },
      {
        "english_name": "Guatemala",
        "chinese_name": "瓜地马拉",
        "trad_name": "瓜地馬拉",
        "country_code": "GT",
        "chinese_pinyin": "G",
        "phone_code": "502"
      },
      {
        "english_name": "Guinea",
        "chinese_name": "几内亚",
        "trad_name": "幾內亞",
        "country_code": "GN",
        "chinese_pinyin": "J",
        "phone_code": "224"
      },
      {
        "english_name": "Guinea-Bissau",
        "chinese_name": "几内亚比绍共和国",
        "trad_name": "幾內亞比紹共和國",
        "country_code": "GW",
        "chinese_pinyin": "J",
        "phone_code": "245"
      },
      {
        "english_name": "Guyana",
        "chinese_name": "圭亚那",
        "trad_name": "圭亞那",
        "country_code": "GY",
        "chinese_pinyin": "W",
        "phone_code": "592"
      },
      {
        "english_name": "Haiti",
        "chinese_name": "海地",
        "trad_name": "海地",
        "country_code": "HT",
        "chinese_pinyin": "H",
        "phone_code": "509"
      },
      {
        "english_name": "Hawaii",
        "chinese_name": "夏威夷",
        "trad_name": "夏威夷",
        "country_code": "USH",
        "chinese_pinyin": "X",
        "phone_code": "1808"
      },
      {
        "english_name": "Honduras",
        "chinese_name": "洪都拉斯",
        "trad_name": "洪都拉斯",
        "country_code": "HN",
        "chinese_pinyin": "H",
        "phone_code": "504"
      },
      {
        "english_name": "Hong Kong",
        "chinese_name": "香港",
        "trad_name": "香港",
        "country_code": "HK",
        "chinese_pinyin": "X",
        "phone_code": "852"
      },
      {
        "english_name": "Hungary",
        "chinese_name": "匈牙利",
        "trad_name": "匈牙利",
        "country_code": "HU",
        "chinese_pinyin": "X",
        "phone_code": "36"
      },
      {
        "english_name": "Iceland",
        "chinese_name": "冰岛",
        "trad_name": "冰島",
        "country_code": "IS",
        "chinese_pinyin": "B",
        "phone_code": "354"
      },
      {
        "english_name": "India",
        "chinese_name": "印度",
        "trad_name": "印度",
        "country_code": "IN",
        "chinese_pinyin": "Y",
        "phone_code": "91"
      },
      {
        "english_name": "Indonesia",
        "chinese_name": "印度尼西亚",
        "trad_name": "印度尼西亞",
        "country_code": "ID",
        "chinese_pinyin": "Y",
        "phone_code": "62"
      },
      {
        "english_name": "Iran",
        "chinese_name": "伊朗",
        "trad_name": "伊朗",
        "country_code": "IR",
        "chinese_pinyin": "Y",
        "phone_code": "98"
      },
      {
        "english_name": "Iraq",
        "chinese_name": "伊拉克",
        "trad_name": "伊拉克",
        "country_code": "IQ",
        "chinese_pinyin": "Y",
        "phone_code": "964"
      },
      {
        "english_name": "Ireland",
        "chinese_name": "爱尔兰",
        "trad_name": "愛爾蘭",
        "country_code": "IE",
        "chinese_pinyin": "A",
        "phone_code": "353"
      },
      {
        "english_name": "Israel",
        "chinese_name": "以色列",
        "trad_name": "以色列",
        "country_code": "IL",
        "chinese_pinyin": "Y",
        "phone_code": "972"
      },
      {
        "english_name": "Italy",
        "chinese_name": "意大利",
        "trad_name": "意大利",
        "country_code": "IT",
        "chinese_pinyin": "Y",
        "phone_code": "39"
      },
      {
        "english_name": "Ivory Coast",
        "chinese_name": "象牙海岸",
        "trad_name": "象牙海岸",
        "country_code": "CI",
        "chinese_pinyin": "X",
        "phone_code": "225"
      },
      {
        "english_name": "Jamaica",
        "chinese_name": "牙买加",
        "trad_name": "牙買加",
        "country_code": "JM",
        "chinese_pinyin": "Y",
        "phone_code": "1876"
      },
      {
        "english_name": "Japan",
        "chinese_name": "日本",
        "trad_name": "日本",
        "country_code": "JP",
        "chinese_pinyin": "R",
        "phone_code": "81"
      },
      {
        "english_name": "Jordan",
        "chinese_name": "约旦",
        "trad_name": "約旦",
        "country_code": "JO",
        "chinese_pinyin": "Y",
        "phone_code": "962"
      },
      {
        "english_name": "Kazakhstan",
        "chinese_name": "哈萨克斯坦",
        "trad_name": "哈薩克斯坦",
        "country_code": "KZ",
        "chinese_pinyin": "H",
        "phone_code": "7"
      },
      {
        "english_name": "Kenya",
        "chinese_name": "肯尼亚",
        "trad_name": "肯尼亞",
        "country_code": "KE",
        "chinese_pinyin": "K",
        "phone_code": "254"
      },
      {
        "english_name": "Kiribati",
        "chinese_name": "基里巴斯",
        "trad_name": "基里巴斯",
        "country_code": "KI",
        "chinese_pinyin": "J",
        "phone_code": "686"
      },
      {
        "english_name": "Korea Democratic Rep.",
        "chinese_name": "朝鲜",
        "trad_name": "朝鮮",
        "country_code": "KP",
        "chinese_pinyin": "C",
        "phone_code": "85"
      },
      {
        "english_name": "South Korea",
        "chinese_name": "韩国",
        "trad_name": "韓國",
        "country_code": "KR",
        "chinese_pinyin": "H",
        "phone_code": "82"
      },
      {
        "english_name": "Kuwait",
        "chinese_name": "科威特",
        "trad_name": "科威特",
        "country_code": "KW",
        "chinese_pinyin": "K",
        "phone_code": "965"
      },
      {
        "english_name": "Kyrgyzstan",
        "chinese_name": "吉尔吉斯斯坦",
        "trad_name": "吉爾吉斯斯坦",
        "country_code": "KG",
        "chinese_pinyin": "J",
        "phone_code": "996"
      },
      {
        "english_name": "Laos",
        "chinese_name": "老挝",
        "trad_name": "老撾",
        "country_code": "LA",
        "chinese_pinyin": "L",
        "phone_code": "856"
      },
      {
        "english_name": "Latvia",
        "chinese_name": "拉脱维亚",
        "trad_name": "拉脫維亞",
        "country_code": "LV",
        "chinese_pinyin": "L",
        "phone_code": "371"
      },
      {
        "english_name": "Lebanon",
        "chinese_name": "黎巴嫩",
        "trad_name": "黎巴嫩",
        "country_code": "LB",
        "chinese_pinyin": "L",
        "phone_code": "961"
      },
      {
        "english_name": "Lesotho",
        "chinese_name": "莱索托",
        "trad_name": "萊索托",
        "country_code": "LS",
        "chinese_pinyin": "L",
        "phone_code": "266"
      },
      {
        "english_name": "Liberia",
        "chinese_name": "利比里亚",
        "trad_name": "利比里亞",
        "country_code": "LR",
        "chinese_pinyin": "L",
        "phone_code": "231"
      },
      {
        "english_name": "Libya",
        "chinese_name": "利比亚",
        "trad_name": "利比亞",
        "country_code": "LY",
        "chinese_pinyin": "L",
        "phone_code": "218"
      },
      {
        "english_name": "Liechtenstein",
        "chinese_name": "列支敦士登",
        "trad_name": "列支敦士登",
        "country_code": "LI",
        "chinese_pinyin": "L",
        "phone_code": "423"
      },
      {
        "english_name": "Lithuania",
        "chinese_name": "立陶宛",
        "trad_name": "立陶宛",
        "country_code": "LT",
        "chinese_pinyin": "L",
        "phone_code": "370"
      },
      {
        "english_name": "Luxembourg",
        "chinese_name": "卢森堡",
        "trad_name": "盧森堡",
        "country_code": "LU",
        "chinese_pinyin": "L",
        "phone_code": "352"
      },
      {
        "english_name": "Macau",
        "chinese_name": "澳门",
        "trad_name": "澳門",
        "country_code": "MO",
        "chinese_pinyin": "A",
        "phone_code": "853"
      },
      {
        "english_name": "Macedonia",
        "chinese_name": "马其顿",
        "trad_name": "馬其頓",
        "country_code": "MK",
        "chinese_pinyin": "M",
        "phone_code": "389"
      },
      {
        "english_name": "Madagascar",
        "chinese_name": "马达加斯加",
        "trad_name": "馬達加斯加",
        "country_code": "MG",
        "chinese_pinyin": "M",
        "phone_code": "261"
      },
      {
        "english_name": "Malawi",
        "chinese_name": "马拉维",
        "trad_name": "馬拉維",
        "country_code": "MW",
        "chinese_pinyin": "M",
        "phone_code": "265"
      },
      {
        "english_name": "Malaysia",
        "chinese_name": "马来西亚",
        "trad_name": "馬來西亞",
        "country_code": "MY",
        "chinese_pinyin": "M",
        "phone_code": "60"
      },
      {
        "english_name": "Maldives",
        "chinese_name": "马尔代夫",
        "trad_name": "馬爾代夫",
        "country_code": "MV",
        "chinese_pinyin": "M",
        "phone_code": "960"
      },
      {
        "english_name": "Mali",
        "chinese_name": "马里",
        "trad_name": "馬里",
        "country_code": "ML",
        "chinese_pinyin": "M",
        "phone_code": "223"
      },
      {
        "english_name": "Malta",
        "chinese_name": "马耳他",
        "trad_name": "馬耳他",
        "country_code": "MT",
        "chinese_pinyin": "M",
        "phone_code": "356"
      },
      {
        "english_name": "Marshall Islands",
        "chinese_name": "马绍尔群岛",
        "trad_name": "馬紹爾群島",
        "country_code": "MH",
        "chinese_pinyin": "M",
        "phone_code": "692"
      },
      {
        "english_name": "Martinique",
        "chinese_name": "马提尼克",
        "trad_name": "馬提尼克",
        "country_code": "MQ",
        "chinese_pinyin": "M",
        "phone_code": "596"
      },
      {
        "english_name": "Mauritania",
        "chinese_name": "毛里塔尼亚",
        "trad_name": "毛里塔尼亞",
        "country_code": "MR",
        "chinese_pinyin": "M",
        "phone_code": "222"
      },
      {
        "english_name": "Mauritius",
        "chinese_name": "毛里求斯",
        "trad_name": "毛里求斯",
        "country_code": "MU",
        "chinese_pinyin": "M",
        "phone_code": "230"
      },
      {
        "english_name": "Mayotte",
        "chinese_name": "马约特",
        "trad_name": "馬約特",
        "country_code": "YT",
        "chinese_pinyin": "M",
        "phone_code": "269"
      },
      {
        "english_name": "Mexico",
        "chinese_name": "墨西哥",
        "trad_name": "墨西哥",
        "country_code": "MX",
        "chinese_pinyin": "M",
        "phone_code": "52"
      },
      {
        "english_name": "Micronesia",
        "chinese_name": "密克罗尼西亚",
        "trad_name": "密克羅尼西亞",
        "country_code": "FM",
        "chinese_pinyin": "M",
        "phone_code": "691"
      },
      {
        "english_name": "Moldova",
        "chinese_name": "摩尔多瓦",
        "trad_name": "摩爾多瓦",
        "country_code": "MD",
        "chinese_pinyin": "M",
        "phone_code": "373"
      },
      {
        "english_name": "Monaco",
        "chinese_name": "摩纳哥",
        "trad_name": "摩納哥",
        "country_code": "MC",
        "chinese_pinyin": "M",
        "phone_code": "377"
      },
      {
        "english_name": "Mongolia",
        "chinese_name": "蒙古",
        "trad_name": "蒙古",
        "country_code": "MN",
        "chinese_pinyin": "M",
        "phone_code": "976"
      },
      {
        "english_name": "Montenegro",
        "chinese_name": "黑山",
        "trad_name": "黑山",
        "country_code": "ME",
        "chinese_pinyin": "H",
        "phone_code": "382"
      },
      {
        "english_name": "Montserrat",
        "chinese_name": "蒙特塞拉特岛",
        "trad_name": "蒙特塞拉特島",
        "country_code": "MS",
        "chinese_pinyin": "M",
        "phone_code": "1664"
      },
      {
        "english_name": "Morocco",
        "chinese_name": "摩洛哥",
        "trad_name": "摩洛哥",
        "country_code": "MA",
        "chinese_pinyin": "M",
        "phone_code": "212"
      },
      {
        "english_name": "Mozambique",
        "chinese_name": "莫桑比克",
        "trad_name": "莫桑比克",
        "country_code": "MZ",
        "chinese_pinyin": "M",
        "phone_code": "258"
      },
      {
        "english_name": "Myanmar",
        "chinese_name": "缅甸",
        "trad_name": "緬甸",
        "country_code": "MM",
        "chinese_pinyin": "M",
        "phone_code": "95"
      },
      {
        "english_name": "Namibia",
        "chinese_name": "纳米比亚",
        "trad_name": "納米比亞",
        "country_code": "NA",
        "chinese_pinyin": "N",
        "phone_code": "264"
      },
      {
        "english_name": "Nauru",
        "chinese_name": "拿鲁岛",
        "trad_name": "拿魯島",
        "country_code": "NR",
        "chinese_pinyin": "N",
        "phone_code": "674"
      },
      {
        "english_name": "Nepal",
        "chinese_name": "尼泊尔",
        "trad_name": "尼泊爾",
        "country_code": "NP",
        "chinese_pinyin": "N",
        "phone_code": "977"
      },
      {
        "english_name": "Netherlands",
        "chinese_name": "荷兰",
        "trad_name": "荷蘭",
        "country_code": "NL",
        "chinese_pinyin": "H",
        "phone_code": "31"
      },
      {
        "english_name": "New Caledonia",
        "chinese_name": "新喀里多尼亚",
        "trad_name": "新喀裡多尼亞",
        "country_code": "NC",
        "chinese_pinyin": "X",
        "phone_code": "687"
      },
      {
        "english_name": "New Zealand",
        "chinese_name": "新西兰",
        "trad_name": "新西蘭",
        "country_code": "NZ",
        "chinese_pinyin": "X",
        "phone_code": "64"
      },
      {
        "english_name": "Nicaragua",
        "chinese_name": "尼加拉瓜",
        "trad_name": "尼加拉瓜",
        "country_code": "NI",
        "chinese_pinyin": "N",
        "phone_code": "505"
      },
      {
        "english_name": "Niger",
        "chinese_name": "尼日尔",
        "trad_name": "尼日爾",
        "country_code": "NE",
        "chinese_pinyin": "N",
        "phone_code": "227"
      },
      {
        "english_name": "Nigeria",
        "chinese_name": "尼日利亚",
        "trad_name": "尼日利亞",
        "country_code": "NG",
        "chinese_pinyin": "N",
        "phone_code": "234"
      },
      {
        "english_name": "Niue Island",
        "chinese_name": "纽埃岛(新)",
        "trad_name": "紐埃島(新)",
        "country_code": "NU",
        "chinese_pinyin": "N",
        "phone_code": "683"
      },
      {
        "english_name": "Norfolk Island",
        "chinese_name": "诺福克岛(澳)",
        "trad_name": "諾福克島(澳)",
        "country_code": "NF",
        "chinese_pinyin": "N",
        "phone_code": "6723"
      },
      {
        "english_name": "Norway",
        "chinese_name": "挪威",
        "trad_name": "挪威",
        "country_code": "NO",
        "chinese_pinyin": "N",
        "phone_code": "47"
      },
      {
        "english_name": "Oman",
        "chinese_name": "阿曼",
        "trad_name": "阿曼",
        "country_code": "OM",
        "chinese_pinyin": "A",
        "phone_code": "968"
      },
      {
        "english_name": "Palau",
        "chinese_name": "帕劳",
        "trad_name": "帕勞",
        "country_code": "PW",
        "chinese_pinyin": "P",
        "phone_code": "680"
      },
      {
        "english_name": "Panama",
        "chinese_name": "巴拿马",
        "trad_name": "巴拿馬",
        "country_code": "PA",
        "chinese_pinyin": "B",
        "phone_code": "507"
      },
      {
        "english_name": "Papua New Guinea",
        "chinese_name": "巴布亚新几内亚",
        "trad_name": "巴布亞新幾內亞",
        "country_code": "PG",
        "chinese_pinyin": "B",
        "phone_code": "675"
      },
      {
        "english_name": "Paraguay",
        "chinese_name": "巴拉圭",
        "trad_name": "巴拉圭",
        "country_code": "PY",
        "chinese_pinyin": "B",
        "phone_code": "595"
      },
      {
        "english_name": "Peru",
        "chinese_name": "秘鲁",
        "trad_name": "秘魯",
        "country_code": "PE",
        "chinese_pinyin": "M",
        "phone_code": "51"
      },
      {
        "english_name": "Philippines",
        "chinese_name": "菲律宾",
        "trad_name": "菲律賓",
        "country_code": "PH",
        "chinese_pinyin": "F",
        "phone_code": "63"
      },
      {
        "english_name": "Poland",
        "chinese_name": "波兰",
        "trad_name": "波蘭",
        "country_code": "PL",
        "chinese_pinyin": "B",
        "phone_code": "48"
      },
      {
        "english_name": "Portugal",
        "chinese_name": "葡萄牙",
        "trad_name": "葡萄牙",
        "country_code": "PT",
        "chinese_pinyin": "P",
        "phone_code": "351"
      },
      {
        "english_name": "Pakistan",
        "chinese_name": "巴基斯坦",
        "trad_name": "巴基斯坦",
        "country_code": "PK",
        "chinese_pinyin": "B",
        "phone_code": "92"
      },
      {
        "english_name": "Puerto Rico",
        "chinese_name": "波多黎各",
        "trad_name": "波多黎各",
        "country_code": "PR",
        "chinese_pinyin": "B",
        "phone_code": "1787"
      },
      {
        "english_name": "Qatar",
        "chinese_name": "卡塔尔",
        "trad_name": "卡塔爾",
        "country_code": "QA",
        "chinese_pinyin": "K",
        "phone_code": "974"
      },
      {
        "english_name": "Réunion Island",
        "chinese_name": "留尼汪",
        "trad_name": "留尼汪",
        "country_code": "RE",
        "chinese_pinyin": "L",
        "phone_code": "262"
      },
      {
        "english_name": "Romania",
        "chinese_name": "罗马尼亚",
        "trad_name": "羅馬尼亞",
        "country_code": "RO",
        "chinese_pinyin": "L",
        "phone_code": "40"
      },
      {
        "english_name": "Russia",
        "chinese_name": "俄罗斯",
        "trad_name": "俄羅斯",
        "country_code": "RU",
        "chinese_pinyin": "E",
        "phone_code": "7"
      },
      {
        "english_name": "Rwanda",
        "chinese_name": "卢旺达",
        "trad_name": "盧旺達",
        "country_code": "RW",
        "chinese_pinyin": "L",
        "phone_code": "250"
      },
      {
        "english_name": "Samoa,Eastern",
        "chinese_name": "东萨摩亚(美)",
        "trad_name": "東薩摩亞(美)",
        "country_code": "ASA",
        "chinese_pinyin": "D",
        "phone_code": "684"
      },
      {
        "english_name": "Samoa",
        "chinese_name": "萨摩亚",
        "trad_name": "薩摩亞",
        "country_code": "WS",
        "chinese_pinyin": "S",
        "phone_code": "685"
      },
      {
        "english_name": "San Marino",
        "chinese_name": "圣马力诺",
        "trad_name": "聖馬力諾",
        "country_code": "SM",
        "chinese_pinyin": "S",
        "phone_code": "378"
      },
      {
        "english_name": "Saint Pierre and Miquelon",
        "chinese_name": "圣彼埃尔和密克隆岛",
        "trad_name": "聖彼埃爾和密克隆",
        "country_code": "PM",
        "chinese_pinyin": "S",
        "phone_code": "508"
      },
      {
        "english_name": "Sao Tome and Principe",
        "chinese_name": "圣多美和普林西比",
        "trad_name": "聖多美和普林西比",
        "country_code": "ST",
        "chinese_pinyin": "S",
        "phone_code": "239"
      },
      {
        "english_name": "Saudi Arabia",
        "chinese_name": "沙特阿拉伯",
        "trad_name": "沙特阿拉伯",
        "country_code": "SA",
        "chinese_pinyin": "S",
        "phone_code": "966"
      },
      {
        "english_name": "Senegal",
        "chinese_name": "塞内加尔",
        "trad_name": "塞內加爾",
        "country_code": "SN",
        "chinese_pinyin": "S",
        "phone_code": "221"
      },
      {
        "english_name": "Serbia",
        "chinese_name": "塞尔维亚",
        "trad_name": "塞爾維亞",
        "country_code": "RS",
        "chinese_pinyin": "S",
        "phone_code": "381"
      },
      {
        "english_name": "Seychelles",
        "chinese_name": "塞舌尔",
        "trad_name": "塞舌爾",
        "country_code": "SC",
        "chinese_pinyin": "S",
        "phone_code": "248"
      },
      {
        "english_name": "Sierra Leone",
        "chinese_name": "塞拉利昂",
        "trad_name": "塞拉利昂",
        "country_code": "SL",
        "chinese_pinyin": "S",
        "phone_code": "232"
      },
      {
        "english_name": "Singapore",
        "chinese_name": "新加坡",
        "trad_name": "新加坡",
        "country_code": "SG",
        "chinese_pinyin": "X",
        "phone_code": "65"
      },
      {
        "english_name": "Saint Maarten (Dutch Part)",
        "chinese_name": "圣马丁岛（荷兰部分）",
        "trad_name": "聖馬丁島（荷蘭部分）",
        "country_code": "SX",
        "chinese_pinyin": "S",
        "phone_code": "1721"
      },
      {
        "english_name": "Slovakia",
        "chinese_name": "斯洛伐克",
        "trad_name": "斯洛伐克",
        "country_code": "SK",
        "chinese_pinyin": "S",
        "phone_code": "421"
      },
      {
        "english_name": "Slovenia",
        "chinese_name": "斯洛文尼亚",
        "trad_name": "斯洛文尼亞",
        "country_code": "SI",
        "chinese_pinyin": "S",
        "phone_code": "386"
      },
      {
        "english_name": "Solomon Islands",
        "chinese_name": "所罗门群岛",
        "trad_name": "所羅門群島",
        "country_code": "SB",
        "chinese_pinyin": "S",
        "phone_code": "677"
      },
      {
        "english_name": "Somalia",
        "chinese_name": "索马里",
        "trad_name": "索馬里",
        "country_code": "SO",
        "chinese_pinyin": "S",
        "phone_code": "252"
      },
      {
        "english_name": "South Africa",
        "chinese_name": "南非",
        "trad_name": "南非",
        "country_code": "ZA",
        "chinese_pinyin": "N",
        "phone_code": "27"
      },
      {
        "english_name": "Spain",
        "chinese_name": "西班牙",
        "trad_name": "西班牙",
        "country_code": "ESS",
        "chinese_pinyin": "X",
        "phone_code": "34"
      },
      {
        "english_name": "Sri Lanka",
        "chinese_name": "斯里兰卡",
        "trad_name": "斯里蘭卡",
        "country_code": "LK",
        "chinese_pinyin": "S",
        "phone_code": "94"
      },
      {
        "english_name": "St.Helena",
        "chinese_name": "圣赫勒拿",
        "trad_name": "聖赫勒拿",
        "country_code": "SHS",
        "chinese_pinyin": "S",
        "phone_code": "290"
      },
      {
        "english_name": "Saint Lucia",
        "chinese_name": "圣露西亚",
        "trad_name": "聖露西亞",
        "country_code": "LC",
        "chinese_pinyin": "S",
        "phone_code": "1758"
      },
      {
        "english_name": "Saint Vincent and The Grenadines",
        "chinese_name": "圣文森特和格林纳丁斯",
        "trad_name": "聖文森特和格林納丁斯",
        "country_code": "VC",
        "chinese_pinyin": "S",
        "phone_code": "1784"
      },
      {
        "english_name": "Sudan",
        "chinese_name": "苏丹",
        "trad_name": "蘇丹",
        "country_code": "SD",
        "chinese_pinyin": "S",
        "phone_code": "249"
      },
      {
        "english_name": "Suriname",
        "chinese_name": "苏里南",
        "trad_name": "蘇里南",
        "country_code": "SR",
        "chinese_pinyin": "S",
        "phone_code": "597"
      },
      {
        "english_name": "Swaziland",
        "chinese_name": "斯威士兰",
        "trad_name": "斯威士蘭",
        "country_code": "SZ",
        "chinese_pinyin": "S",
        "phone_code": "268"
      },
      {
        "english_name": "Sweden",
        "chinese_name": "瑞典",
        "trad_name": "瑞典",
        "country_code": "SE",
        "chinese_pinyin": "R",
        "phone_code": "46"
      },
      {
        "english_name": "Switzerland",
        "chinese_name": "瑞士",
        "trad_name": "瑞士",
        "country_code": "CH",
        "chinese_pinyin": "R",
        "phone_code": "41"
      },
      {
        "english_name": "Syria",
        "chinese_name": "叙利亚",
        "trad_name": "敘利亞",
        "country_code": "SY",
        "chinese_pinyin": "X",
        "phone_code": "963"
      },
      {
        "english_name": "Taiwan",
        "chinese_name": "台湾",
        "trad_name": "台灣",
        "country_code": "TW",
        "chinese_pinyin": "T",
        "phone_code": "886"
      },
      {
        "english_name": "Tajikistan",
        "chinese_name": "塔吉克斯坦",
        "trad_name": "塔吉克斯坦",
        "country_code": "TJ",
        "chinese_pinyin": "T",
        "phone_code": "992"
      },
      {
        "english_name": "Tanzania",
        "chinese_name": "坦桑尼亚",
        "trad_name": "坦桑尼亞",
        "country_code": "TZ",
        "chinese_pinyin": "T",
        "phone_code": "255"
      },
      {
        "english_name": "Thailand",
        "chinese_name": "泰国",
        "trad_name": "泰國",
        "country_code": "TH",
        "chinese_pinyin": "T",
        "phone_code": "66"
      },
      {
        "english_name": "Timor-Leste",
        "chinese_name": "东帝汶",
        "trad_name": "東帝汶",
        "country_code": "TL",
        "chinese_pinyin": "D",
        "phone_code": "670"
      },
      {
        "english_name": "United Arab Emirates",
        "chinese_name": "阿拉伯联合酋长国",
        "trad_name": "阿拉伯聯合酋長國",
        "country_code": "AE",
        "chinese_pinyin": "A",
        "phone_code": "971"
      },
      {
        "english_name": "Togo",
        "chinese_name": "多哥",
        "trad_name": "多哥",
        "country_code": "TG",
        "chinese_pinyin": "D",
        "phone_code": "228"
      },
      {
        "english_name": "Tokelau Is.",
        "chinese_name": "托克劳群岛(新)",
        "trad_name": "托克勞群島(新)",
        "country_code": "TK",
        "chinese_pinyin": "T",
        "phone_code": "690"
      },
      {
        "english_name": "Tonga",
        "chinese_name": "汤加",
        "trad_name": "湯加",
        "country_code": "TO",
        "chinese_pinyin": "T",
        "phone_code": "676"
      },
      {
        "english_name": "Trinidad and Tobago",
        "chinese_name": "特立尼达和多巴哥",
        "trad_name": "特立尼達和多巴哥",
        "country_code": "TT",
        "chinese_pinyin": "T",
        "phone_code": "1868"
      },
      {
        "english_name": "Tunisia",
        "chinese_name": "突尼斯",
        "trad_name": "突尼斯",
        "country_code": "TN",
        "chinese_pinyin": "T",
        "phone_code": "216"
      },
      {
        "english_name": "Turkey",
        "chinese_name": "土耳其",
        "trad_name": "土耳其",
        "country_code": "TR",
        "chinese_pinyin": "T",
        "phone_code": "90"
      },
      {
        "english_name": "Turkmenistan",
        "chinese_name": "土库曼斯坦",
        "trad_name": "土庫曼斯坦",
        "country_code": "TM",
        "chinese_pinyin": "T",
        "phone_code": "993"
      },
      {
        "english_name": "Turks and Caicos Islands",
        "chinese_name": "特克斯和凯科斯群岛",
        "trad_name": "特克斯和凱科斯群島",
        "country_code": "TC",
        "chinese_pinyin": "T",
        "phone_code": "1649"
      },
      {
        "english_name": "Tuvalu",
        "chinese_name": "图瓦卢",
        "trad_name": "圖瓦盧",
        "country_code": "TKT",
        "chinese_pinyin": "T",
        "phone_code": "688"
      },
      {
        "english_name": "United States",
        "chinese_name": "美国",
        "trad_name": "美國",
        "country_code": "US",
        "chinese_pinyin": "M",
        "phone_code": "1"
      },
      {
        "english_name": "Uganda",
        "chinese_name": "乌干达",
        "trad_name": "烏干達",
        "country_code": "UG",
        "chinese_pinyin": "W",
        "phone_code": "256"
      },
      {
        "english_name": "Ukraine",
        "chinese_name": "乌克兰",
        "trad_name": "烏克蘭",
        "country_code": "UA",
        "chinese_pinyin": "W",
        "phone_code": "380"
      },
      {
        "english_name": "United Kingdom",
        "chinese_name": "英国",
        "trad_name": "英國",
        "country_code": "GB",
        "chinese_pinyin": "Y",
        "phone_code": "44"
      },
      {
        "english_name": "Uruguay",
        "chinese_name": "乌拉圭",
        "trad_name": "烏拉圭",
        "country_code": "UY",
        "chinese_pinyin": "W",
        "phone_code": "598"
      },
      {
        "english_name": "Uzbekistan",
        "chinese_name": "乌兹别克斯坦",
        "trad_name": "烏茲別克斯坦",
        "country_code": "UZ",
        "chinese_pinyin": "W",
        "phone_code": "998"
      },
      {
        "english_name": "Vanuatu",
        "chinese_name": "瓦努阿图",
        "trad_name": "瓦努阿圖",
        "country_code": "VU",
        "chinese_pinyin": "W",
        "phone_code": "678"
      },
      {
        "english_name": "Venezuela",
        "chinese_name": "委内瑞拉",
        "trad_name": "委內瑞拉",
        "country_code": "VE",
        "chinese_pinyin": "W",
        "phone_code": "58"
      },
      {
        "english_name": "Vietnam",
        "chinese_name": "越南",
        "trad_name": "越南",
        "country_code": "VN",
        "chinese_pinyin": "Y",
        "phone_code": "84"
      },
      {
        "english_name": "Virgin Islands, British",
        "chinese_name": "英属处女群岛",
        "trad_name": "英屬處女群島",
        "country_code": "VG",
        "chinese_pinyin": "Y",
        "phone_code": "1340"
      },
      {
        "english_name": "Virgin Islands, US",
        "chinese_name": "美属维尔京群岛",
        "trad_name": "美屬維爾京群島",
        "country_code": "VI",
        "chinese_pinyin": "M",
        "phone_code": "1284"
      },
      {
        "english_name": "Wake I.",
        "chinese_name": "威克岛(美)",
        "trad_name": "威克島(美)",
        "country_code": "UM",
        "chinese_pinyin": "W",
        "phone_code": "1808"
      },
      {
        "english_name": "Yemen",
        "chinese_name": "也门",
        "trad_name": "也門",
        "country_code": "YE",
        "chinese_pinyin": "Y",
        "phone_code": "967"
      },
      {
        "english_name": "Zambia",
        "chinese_name": "赞比亚",
        "trad_name": "贊比亞",
        "country_code": "ZM",
        "chinese_pinyin": "Z",
        "phone_code": "260"
      },
      {
        "english_name": "Zanzibar",
        "chinese_name": "桑给巴尔",
        "trad_name": "桑給巴爾",
        "country_code": "TZZ",
        "chinese_pinyin": "S",
        "phone_code": "259"
      },
      {
        "english_name": "Zimbabwe",
        "chinese_name": "津巴布韦",
        "trad_name": "津巴布韋",
        "country_code": "ZW",
        "chinese_pinyin": "J",
        "phone_code": "263"
      }
    ]
  };
}

class AreaCodeData {
  AreaCodeData({
    required this.englishName,
    required this.chineseName,
    required this.tradName,
    required this.countryCode,
    required this.chinesePinyin,
    required this.phoneCode,
  });

  final String englishName;
  final String chineseName;
  final String tradName;
  final String countryCode;
  final String chinesePinyin;
  final String phoneCode;

  factory AreaCodeData.fromJson(Map<String, dynamic> json) => AreaCodeData(
        englishName: json["english_name"],
        chineseName: json["chinese_name"],
        tradName: json["trad_name"],
        countryCode: json["country_code"],
        chinesePinyin: json["chinese_pinyin"],
        phoneCode: json["phone_code"],
      );

  Map<String, dynamic> toJson() => {
        "english_name": englishName,
        "chinese_name": chineseName,
        "trad_name": tradName,
        "country_code": countryCode,
        "chinese_pinyin": chinesePinyin,
        "phone_code": phoneCode,
      };

  static Map<String, dynamic> child = {
    "english_name": '',
    "chinese_name": '',
    "trad_name": '',
    "country_code": '',
    "chinese_pinyin": '',
    "phone_code": '',
  };
}
