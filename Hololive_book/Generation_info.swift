//
//  Generation_info.swift
//  Hololive_book
//
//  Created by Shiroha on 2021/11/4.
//

import Foundation

struct Generation_info{
    let generation: String
    var country: String
    private let JP_gen_0 = [
        Member_info(name: "ときのそら", generation: "0期生", debut_date: "2017年9月7日",
                    birthday: "5月15日", height: "160cm", fan_name: "そらとも", illustrator: "おるだん"),
        Member_info(name: "ロボ子さん", generation: "0期生", debut_date: "2018年3月4日",
                    birthday: "5月23日", height: "154cm", fan_name: "ろぼさー", illustrator: "kuromaru9"),
        Member_info(name: "さくらみこ", generation: "0期生", debut_date: "2018年8月1日",
                    birthday: "3月5日", height: "152cm", fan_name: "35Ｐ", illustrator: "田中雄一"),
        Member_info(name: "星街すいせい", generation: "0期生", debut_date: "2018年3月22日",
                    birthday: "3月22日", height: "160cm", fan_name: "星詠み", illustrator: "手島nari"),
        Member_info(name: "AZKi", generation: "0期生", debut_date: "2018年11月15日",
                    birthday: "7月1日", height: "158cm", fan_name: "開拓者", illustrator: "加速サトウ")
    ]
    private let JP_gen_1 = [
        Member_info(name: "夜空メル", generation: "1期生", debut_date: "2018年5月13日",
                    birthday: "10月31日", height: "154cm", fan_name: "かぷ民", illustrator: "あやみ"),
        Member_info(name: "アキ・ローゼンタール", generation: "1期生", debut_date: "2018年6月1日",
                    birthday: "2月17日", height: "162cm", fan_name: "ロゼ隊", illustrator: "安曇アキタケ"),
        Member_info(name: "赤井はあと", generation: "1期生", debut_date: "2018年6月2日",
                    birthday: "8月10日", height: "154cm", fan_name: "はあとん", illustrator: "はる雪"),
        Member_info(name: "夏色まつり", generation: "1期生", debut_date: "2018年6月1日",
                    birthday: "7月22日", height: "152cm", fan_name: "まつりす", illustrator: "皆村春樹"),
        Member_info(name: "白上フブキ", generation: "1期生", debut_date: "22018年6月1日",
                    birthday: "10月5日", height: "155cm", fan_name: "すこん部", illustrator: "凪白みと")
    ]
    private let JP_gen_2 = [
        Member_info(name: "湊あくあ", generation: "2期生", debut_date: "2018年8月8日",
                    birthday: "12月1日", height: "148cm", fan_name: "あくあクルー ", illustrator: "がおう"),
        Member_info(name: "紫咲シオン", generation: "2期生", debut_date: "22018年8月17日",
                    birthday: "12月8日", height: "145cm", fan_name: "塩っ子", illustrator: "Tam-U"),
        Member_info(name: "百鬼あやめ", generation: "2期生", debut_date: "2018年9月3日",
                    birthday: "12月13日", height: "152cm", fan_name: "百鬼組", illustrator: "ななかぐら"),
        Member_info(name: "癒月ちょこ", generation: "2期生", debut_date: "2018年9月4日",
                    birthday: "02月14日", height: "165cm", fan_name: "ちょこめいと", illustrator: "桝石きのと"),
        Member_info(name: "大空スバル", generation: "2期生", debut_date: "2018年9月16日",
                    birthday: "7月2日", height: "154cm", fan_name: "スバ友", illustrator: "しぐれうい")
    ]
    private let JP_gen_3 = [
        Member_info(name: "兎田ぺこら", generation: "3期生", debut_date: "2019年7月17日",
                    birthday: "1月12日", height: "153cm", fan_name: "野うさぎ同盟", illustrator: "憂姫はぐれ"),
        Member_info(name: "潤羽るしあ", generation: "3期生", debut_date: "2019年7月18日",
                    birthday: "1月22日", height: "143cm", fan_name: "ふぁんでっど", illustrator: "やすゆき"),
        Member_info(name: "不知火フレア", generation: "3期生", debut_date: "2019年8月7日",
                    birthday: "4月2日", height: "158cm", fan_name: "エルフレンド", illustrator: "lack"),
        Member_info(name: "白銀ノエル", generation: "3期生", debut_date: "2019年8月8日",
                    birthday: "11月24日", height: "158cm", fan_name: "白銀聖騎士団", illustrator: "わたお"),
        Member_info(name: "宝鐘マリン", generation: "3期生", debut_date: "2019年8月11日",
                    birthday: "7月30日", height: "150cm", fan_name: "宝鐘の一味", illustrator: "あかさあい")
    ]
    private let JP_gen_4 = [
        Member_info(name: "天音かなた", generation: "4期生", debut_date: "2019年12月27日",
                    birthday: "4月22日", height: "149cm", fan_name: "へい民", illustrator: "おしおしお"),
        Member_info(name: "桐生ココ", generation: "4期生", debut_date: "2019年12月28日",
                    birthday: "6月17日", height: "180cm", fan_name: "たつのこ", illustrator: "yaman**"),
        Member_info(name: "角巻わため", generation: "4期生", debut_date: "2019年12月29日",
                    birthday: "6月6日", height: "151cm", fan_name: "わためいと", illustrator: "ふーみ"),
        Member_info(name: "常闇トワ", generation: "4期生", debut_date: "2020年1月3日",
                    birthday: "8月8日", height: "150cm", fan_name: "常闇眷属", illustrator: "rurudo"),
        Member_info(name: "姫森ルーナ", generation: "4期生", debut_date: "2020年1月4日",
                    birthday: "10月10日", height: "150cm", fan_name: "ルーナイト", illustrator: "かんざきひろ")
    ]
    private let JP_gen_5 = [
        Member_info(name: "雪花ラミィ", generation: "5期生", debut_date: "2020年8月12日",
                    birthday: "11月15日", height: "158cm", fan_name: "ゆきみん", illustrator: "リン☆ユウ"),
        Member_info(name: "桃鈴ねね", generation: "5期生", debut_date: "2020年8月13日",
                    birthday: "3月2日", height: "159cm", fan_name: "ねっ子", illustrator: "西沢5㍉"),
        Member_info(name: "獅白ぼたん", generation: "5期生", debut_date: "2020年8月14日",
                    birthday: "9月8日", height: "166cm", fan_name: "SSRB民", illustrator: "トマリ"),
        Member_info(name: "尾丸ポルカ", generation: "5期生", debut_date: "2020年8月16日",
                    birthday: "1月30日", height: "153cm", fan_name: "座员さん", illustrator: "こう ましろ")
    ]
    private let JP_gen_gamers = [
        Member_info(name: "白上フブキ", generation: "gamers", debut_date: "2018年6月1日",
                    birthday: "10月5日", height: "155cm", fan_name: "すこん部", illustrator: "凪白みと"),
        Member_info(name: "大神ミオ", generation: "gamers", debut_date: "2018年12月7日",
                    birthday: "8月20日", height: "165cm", fan_name: "ミオファ", illustrator: "泉彩"),
        Member_info(name: "猫又おかゆ", generation: "gamers", debut_date: "2019年4月6日",
                    birthday: "2月22日", height: "152cm", fan_name: "おにぎりゃー", illustrator: "神岡ちろる"),
        Member_info(name: "戌神ころね", generation: "gamers", debut_date: "2019年4月13日",
                    birthday: "10月1日", height: "156cm", fan_name: "ころねすきー", illustrator: "フカヒレ")
    ]
    private let EN_gen_1 = [
        Member_info(name: "森美声", generation: "1期生", debut_date: "2020年09月12日",
                    birthday: "4月4日", height: "167cm", fan_name: "N/A", illustrator: "ゆきさめ"),
        Member_info(name: "小鳥遊キアラ", generation: "1期生", debut_date: "2020年09月12日",
                    birthday: "7月6日", height: "165cm", fan_name: "N/A", illustrator: "huke"),
        Member_info(name: "一伊那尓栖", generation: "1期生", debut_date: "2020年09月13日",
                    birthday: "5月20日", height: "152cm", fan_name: "N/A", illustrator: "黒星紅白"),
        Member_info(name: "がうる・ぐら", generation: "1期生", debut_date: "2020年09月13日",
                    birthday: "6月20日", height: "141cm", fan_name: "N/A", illustrator: "甘城なつき"),
        Member_info(name: "ワトソン・アメリア", generation: "1期生", debut_date: "2020年09月13日",
                    birthday: "1月6日", height: "150cm", fan_name: "N/A", illustrator: "なび")
    ]
    private let EN_gen_2 = [
        Member_info(name: "IRyS", generation: "2期生", debut_date: "2021年07月11日",
                    birthday: "3月7日", height: "166cm", fan_name: "Irystocrats", illustrator: "redjuice"),
        Member_info(name: "九十九佐命", generation: "2期生", debut_date: "2021年08月22日",
                    birthday: "N/A", height: "N/A", fan_name: "N/A", illustrator: "pako"),
        Member_info(name: "セレス・ファウナ", generation: "2期生", debut_date: "22021年08月22日",
                    birthday: "N/A", height: "N/A", fan_name: "N/A", illustrator: "遠坂あさぎ"),
        Member_info(name: "オーロ・クロニー", generation: "2期生", debut_date: "2021年08月22日",
                    birthday: "N/A", height: "N/A", fan_name: "N/A", illustrator: "ワダアルコ"),
        Member_info(name: "七詩ムメイ", generation: "2期生", debut_date: "2021年08月22日",
                    birthday: "N/A", height: "N/A", fan_name: "N/A", illustrator: "あずーる"),
        Member_info(name: "ハコス・ベールズ", generation: "2期生", debut_date: "2021年08月22日",
                    birthday: "N/A", height: "N/A", fan_name: "N/A", illustrator: "Mika Pikazo")
    ]
    func get_gen_members()->Array<Member_info>{
        if self.country == "JP"{
            if self.generation == "0期生"{
                return self.JP_gen_0
            }
            else if self.generation == "1期生"{
                return self.JP_gen_1
            }
            else if self.generation == "2期生"{
                return self.JP_gen_2
            }
            else if self.generation == "3期生"{
                return self.JP_gen_3
            }
            else if self.generation == "4期生"{
                return self.JP_gen_4
            }
            else if self.generation == "5期生"{
                return self.JP_gen_5
            }
            else if self.generation == "gamers"{
                return self.JP_gen_gamers
            }
            
        }
        if self.country == "EN" {
            if self.generation == "1期生"{
                return self.EN_gen_1
            }
            else if self.generation == "2期生"{
                return self.EN_gen_2
            }
        }
        return self.JP_gen_1
                
    }
    func get_all_members()->Array<Member_info>{
        let re = self.JP_gen_0 + self.JP_gen_1 + self.JP_gen_2 + self.JP_gen_3 + self.JP_gen_4 + self.JP_gen_5 + self.JP_gen_gamers + self.EN_gen_1 + self.EN_gen_2
        return re
    }
    func get_country_members()->Array<Member_info>{
        var re: Array<Member_info> = []
        if self.country == "ALL"{
            re = self.JP_gen_0 + self.JP_gen_1 + self.JP_gen_2 + self.JP_gen_3 + self.JP_gen_4 + self.JP_gen_5 + self.JP_gen_gamers + self.EN_gen_1 + self.EN_gen_2
        }
        else if self.country == "JP"{
            re = self.JP_gen_0 + self.JP_gen_1 + self.JP_gen_2 + self.JP_gen_3 + self.JP_gen_4 + self.JP_gen_5
        }
        else if self.country == "EN"{
            re = self.EN_gen_1 + self.EN_gen_2
        }
        return re
    }
    func get_random_member()->Member_info {
        if self.country == "" {
            return Member_info(name: "", generation: "", debut_date: "",birthday: "", height: "", fan_name: "", illustrator: "")
        }
        else if self.country == "JP" {
            if self.generation == "0期生" {
                let temp = Int.random(in: 0..<self.JP_gen_0.count)
                return self.JP_gen_0[temp]
            }
            else if self.generation == "1期生" {
                let temp = Int.random(in: 0..<self.JP_gen_1.count)
                return self.JP_gen_1[temp]
            }
            else if self.generation == "2期生" {
                let temp = Int.random(in: 0..<self.JP_gen_2.count)
                return self.JP_gen_2[temp]
            }
            else if self.generation == "3期生" {
                let temp = Int.random(in: 0..<self.JP_gen_3.count)
                return self.JP_gen_3[temp]
            }
            else if self.generation == "4期生" {
                let temp = Int.random(in: 0..<self.JP_gen_4.count)
                return self.JP_gen_4[temp]
            }
            else if self.generation == "5期生" {
                let temp = Int.random(in: 0..<self.JP_gen_5.count)
                return self.JP_gen_5[temp]
            }
        }
        else{
            if self.generation == "1期生" {
                let temp = Int.random(in: 0..<self.EN_gen_1.count)
                return self.EN_gen_1[temp]
            }
            else if self.generation == "2期生" {
                let temp = Int.random(in: 0..<self.EN_gen_2.count)
                return self.EN_gen_2[temp]
            }
        }
        return self.JP_gen_0[0]
    }
}
