default  partial alphanumeric_keys
xkb_symbols "basic" {
    name[Group1]= "Shan";

    key <TLDE> { [      grave,      asciitilde,        grave,  asciitilde ] };
    key <AE01> { [      1,      U1091,            1,      exclam ] }; //1, ႑
    key <AE02> { [      2,      U1092,            2,          at ] }; //2, ႒
    key <AE03> { [      3,      U1093,            3,  numbersign ] }; //3, ႓
    key <AE04> { [      4,      U1094,            4,      dollar ] }; //4, ႔
    key <AE05> { [      5,      U1095,            5,     percent ] }; //5, ႕
    key <AE06> { [      6,      U1096,            6, asciicircum ] }; //6, ႖
    key <AE07> { [      7,      U1097,            7,   ampersand ] }; //7, ႗
    key <AE08> { [      8,      U1098,            8,    asterisk ] }; //8, ႘
    key <AE09> { [      9,      U1099,            9,   parenleft ] }; //9, ႙
    key <AE10> { [      0,      U1090,            0,  parenright ] }; //0, ႐
    key <AE11> { [      minus, underscore,        minus,  underscore ] };
    key <AE12> { [      equal,       plus,        equal,        plus ] };

    key <AD01> { [      U1078,      U1079,            q,           Q ] }; //ၸ, ၹ
    key <AD02> { [      U1010,      U107B,            w,           W ] }; //တ, ၻ
    key <AD03> { [      U107C,      U1080,            e,           E ] }; //ၼ, ꧣ
    key <AD04> { [      U1019,      U2800,            r,           R ] }; //မ
    key <AD05> { [      U1084,      U103C,            t,           T ] }; //ႄ
    key <AD06> { [      U1015,      U107F,            y,           Y ] }; //ပ, ြ
    key <AD07> { [      U1075,      U1077,            u,           U ] }; //ၵ, ၷ
    key <AD08> { [      U1004,      U2800,            i,           I ] }; //င
    key <AD09> { [      U101E,      U101D,            o,           O ] }; //သ, ဝ
    key <AD10> { [      U107A,      bracketleft,            p,           P ] }; //ၺ
    key <AD11> { [      U1081,      bracketright,  bracketleft,   braceleft ] }; //ႁ
    key <AD12> { [      quotedblleft,      quotedblright, bracketright,  braceright ] };

    key <AC01> { [      U1031,      U1035,            a,           A ] }; //ေ, ဵ
    key <AC02> { [      U103B,      U106A,            s,           S ] }; // ျ, ှ
    key <AC03> { [      U102D,      U102E,            d,           D ] };  //ိ, ီ
    key <AC04> { [      U103A,      U1085,            f,           F ] }; // ်, ႅ
    key <AC05> { [      U1082,      U108C,            g,           G ] }; // ႂ, …
    key <AC06> { [      U1089,      U108B,            h,           H ] }; // ႉ, ံ
    key <AC07> { [      U1088,      U2800,            j,           J ] }; // ႈ
    key <AC08> { [      U102F,      U2800,            k,           K ] }; // ု
    key <AC09> { [      U1030,      U2800,            l,           L ] }; // ူ
    key <AC10> { [      U1038,      U2800,    semicolon,       colon ] }; // း
    key <AC11> { [      U108A,      U109E                           ] }; //ႊ ,႞

    key <AB01> { [      U107D,       U107E,           z,           Z ] }; //ၽ, ၾ
    key <AB02> { [      U1011,       UAA6A,           x,           X ] }; //ထ, ꩪ
    key <AB03> { [      U1076,       UA9E0,           c,           C ] }; //ၶ, ꧠ
    key <AB04> { [      U101C,       UAA6E,           v,           V ] }; //လ, ꩮ
    key <AB05> { [      U1087,       U1086,           b,           B ] }; //ႇ, ႆ
    key <AB06> { [      U1022,       U2800,           n,           N ] }; //ဢ
    key <AB07> { [      U1062,       U1083,           m,           M ] }; //ၢ, ႃ
    key <AB08> { [      U101A,        U2800,      comma,        less ] }; //ယ
    key <AB09> { [     U103D,        question,     period,     greater ] }; //ွ
    key <AB10> { [      U104A,    U104B                           ] }; //။, ၊

    key <BKSL> { [      U101B,       U109F,   backslash,         bar ] }; //ရ, ႟
};

// The following code creates the "Tilde key" phenomenon.

partial modifier_keys
xkb_symbols "tilde_switch" {
	key <TLDE> {
	symbols[Group1] = [ ISO_Level3_Latch,	asciitilde,	grave ]
	};
	modifier_map Mod5	{ ISO_Level3_Latch };
};
