//
//  Member_info.swift
//  Hololive_book
//
//  Created by Shiroha on 2021/11/4.
//

import Foundation
	
struct Member_info: Identifiable{
    var id: String{name}
    let name: String
    let generation: String
    let debut_date: String
    let birthday: String
    let height: String
    let fan_name: String
    let illustrator: String
    private let introduction = [
        "ときのそら" : "「そらとものみんなー！元気ー？ときのそらです！」\n2017年9月7日より活動を開始、ホロライブプロダクション初のバーチャルアイドル。歌とホラーゲームが大好きで、活動当初からの夢は「横浜アリーナでライブをすること」。\n2019年3月にビクターエンタテインメントからメジャーデビュー。一人前のアイドルを目指すために、女優としてTVドラマ『四月一日さん家の』に出演したり、ラジオ『そらあおと！』ではMCをつとめるなど、様々なジャンルでアクティブに活動中。2019年10月6日にはときのそら初の単独ライブ「Dream!」を開催、自身の夢に一歩近づいた。",
        "AZKi" : "時間や場所、空間を飛び越えて出会う輝いた才能と一緒に、新しい世界を創るために転生した仮想世界の伴走する歌姫",
        "ロボ子さん" : "「はろーぼー！ロボ子だよー」とある荒地にいる、いつもひとりぼっちのポンコツロボット。\n今はバーチャルユーチューバーとして、たくさんの人と交流をとって毎日を楽しく過ごすことが目標。",
        "さくらみこ" : "「にゃっはろー！さくらみこだよ～！」\n電脳世界での巫女として真面目に神事をこなしてきたが、神様にお使いを頼まれ日本に訪れる。お使いをこなしていくうち、バーチャル巫女アイドルになることを決意し、日々奮闘中！",
        "白上フブキ" : "「こんばんきーつね！白上フブキです！」\n白髪ケモミミの女子高生。恥ずかしがり屋であり、おとなしめな性格だけれど、実は人と話すのが好きで、構ってもらえると喜ぶ。",
        "夏色まつり" : "「こんばんわっしょーい！夏色まつりです！」\nチア部の新入生。明るく元気で人懐っこい性格であり誰とでもすぐに仲良くなれて、友達も多い。祭りやイベントなど楽しいことが好き。",
        "夜空メル" : "「こんかぷ～夜空メルだよ！」\nバンパイアの女の子。バンパイアなのに血は苦手で、アセロラジュースが大好き。",
        "赤井はあと" : "「こんるーじゅ！赤井はあとよ！」\n生意気な後輩。普段はツンツンしているが仲良くなった相手には甘えたりする。赤いリボンとハートが好きで、髪や服によくつけている。",
        "アキ・ローゼンタール" : "「こんばんアローナ！アキロゼことアキローゼンタールです！」\n異世界から来た女子高生。好奇心旺盛であり、色々なことに積極的に手を出していく。彼女のトレードマークであるツインテールは不思議な力で浮いている。",
        "湊あくあ" : "「皆さんどうもこんあくあー！湊あくあです！」\nマリンメイド服のバーチャルメイド。本人は頑張っているがおっちょこちょいでドジっ子。",
        "癒月ちょこ" : "「Good evening!my cute students.ちょっこーん！」\n魔界学校の保健医。校内の男女からの人気は高く、特に男子からの診察依頼が絶えないという。お菓子が好きで、机の上にお菓子の袋が散乱しているのが目撃されては怒られている。",
        "百鬼あやめ" : "「人間様たちこんなきりー！百鬼あやめだぞ」\n魔界学校所属の和装鬼娘。いたずら好きで、よく鬼火を飛ばして他人をからかって遊んでいる。こう見えて実は生徒会長。",
        "紫咲シオン" : "「こんしお～、紫咲シオンだよ」\n魔界学校に出没する子供・・・ではなく本人曰く大人（らしい）。自称名門の出身で黒魔術を得意としている（らしい）\nあまり「こんしお」とは言わない。",
        "大空スバル" : "「ちわっす！大空スバルっす！」\n総合格闘技部とe-sports部のマネージャーをしている。男勝りな性格で、誰とも分け隔てなく接する、明るく元気で活発な子。ゲームは絶賛練習中。",
        "大神ミオ" : "「こんばんみぉーん！大神ミオだよ～！」\nどこからともなく現れた黒髪のケモミミ少女。神社によく出没するらしい。ゲームが大好き。",
        "猫又おかゆ" : "「もぐもぐ～おかゆ～！」\nおにぎり屋さんを経営してるおばあさんに飼われてる猫。おばあちゃんの部屋にあるPCから配信している。",
        "戌神ころね" : "「ぉぁよ～！ゆびゆび～」\n都会にあるパン屋さんにいる犬。店番をしながら空いた時間にゲームをしている。",
        "不知火フレア" : "「こんぬい～！不知火フレアだよ～！」\n普段は適当に見えるけどいざというときは頼れる姉御肌なハーフエルフ。基本少しやさぐれている。情に熱く涙もろく、褒められるのに弱い。（デレがち。）\nいつも近くにいるパンダに見える妖精の名前は「きんつば」。",
        "白銀ノエル" : "「こんばんまっする～！白銀ノエルです！」\nおっとりしているが、なんでも筋力でどうにかする物騒な面を持つ ゆるふわ脳筋女騎士。強さに憧れるあまり、つよつよな人達が集まるVTuber界に武者修行にきた。",
        "宝鐘マリン" : "「Ahoy!宝鐘海賊団船長！宝鐘マリンです～！\n 宝石、宝、お金が大好きで、海賊になって宝を探すのが夢。海賊船を買うのが目標で今は陸でVTuberをしている。\n（ようするには今はただの海賊コスプレ女）お姉さん風にふるまい、小悪魔的に誘惑したりからかったりしてくる。",
        "兎田ぺこら" : "「こんぺこ！こんぺこ！こんぺこー！兎田ぺこらぺこ！」\n寂しがり屋なうさ耳の女の子。にんじんをこよなく愛し、いつでも食べられるように持ち歩いている。",
        "潤羽るしあ" : "「こんるし～潤羽るしあなのです！」\n人前に出ることが苦手な魔界学校に所属のネクロマンサー(死霊使い)の少女。\nひとりぼっちが嫌なので死霊や屍とおしゃべりをしている。",
        "星街すいせい" : "「彗星の如く現れたスターの原石！アイドルVTuberの星街すいせいです！」\n歌とアイドルをこよなく愛する永遠の18歳のアイドルVTuber。\nいつか武道館でライブをすることを夢見て活動している。",
        "天音かなた" : "天界学園に通う天使。人を癒すための研究をしている。恥ずかしがりやな性格を隠すために、クールを装おうとする。",
        "桐生ココ" : "人間の文化に興味を持ち、異世界から日本に語学留学中の子どものドラゴン。\n仁義と任侠を重んじる正義感あふれるドラゴンで、気合で人間の姿を保っている。",
        "角巻わため" : "吟遊詩人をしながらのんびり旅をしている羊。歌が大好き。もふもふ。とにかくもふもふ。草食系なのでポテチが好物。",
        "常闇トワ" : "1人前の悪魔になる為の社会勉強として人間界にやってきた小悪魔。本来勉強をしなきゃいけないところ、ゲームに出会ってしまい、夢中になる。配信という人間達とのコミュニケーションツールを見つけそこで勉強を試みる。",
        "姫森ルーナ" : "お菓子の国のお姫様。甘えんぼで人懐っこいがわがままを言ってたびたび執事に怒られている。月のアクセは、異世界の国のマークらしい？",
        "雪花ラミィ" : "人里離れた白銀の大地に住む、雪の一族の令嬢。\nホロライブの笑顔や彩りあふれる配信に心を打たれ、\nお供のだいふくと共に家を飛び出した。\n真面目だが世間知らずで抜けたところがある。",
        "桃鈴ねね" : "アイドルにあこがれて、異世界からやってきた女の子。\n歌って踊ることとお絵描きが大好き。\nたくさんの人に愛される存在になるべく、日々特訓中。",
        "獅白ぼたん" : "見た目とは裏腹にぐうたらした性格のホワイトライオン。\n基本めんどくさがり屋だが、一度決めた事はやり通す誠実な一面もある。\n好きな言葉は「採算度外視」。",
        "尾丸ポルカ" : "VTuber界の座長となるべくホロライブに降り立ったサーカス団の団員。\n曲芸で人を楽しませるのが好きで、やるとなればやるっきゃない！の精神の持ち主。\n時々出るボロは、持ち前の愛嬌でごまかす。",
        "森美声" : "グリム・リーパーの第一弟子。医療が発達している現代においては、死神として活躍する場面がなく、その代わりにVTuber活動で他人のソウルを収穫するつもりらしい。尊死している人のソウルも彼女の元へ行く模様。\n結局のところ、発言内容や声のイメージと違って、彼女は実は面倒見がよく、優しい心の持ち主である。",
        "小鳥遊キアラ" : "ファストフードチェーンの店主になりたいアイドル。不死鳥であり、ニワトリや七面鳥ではない。（重要）\n彼女は命を削りながらすごく頑張って働いている、どうせ死んでも灰から蘇られるから。",
        "一伊那尓栖" : "こう見えても古き神の司祭である。ある日「変な本」を拾ってから触手を操れるようになった。彼女にとって触手は日常生活の一部であり、とくに何も思わない。でも、おしゃれはしてあげたい乙女心。\n力を得て以来、古き声から囁きや天啓を受け、無垢でごく普通な彼女はVTuber活動を通して人々のSAN値を削っている模様。",
        "がうる・ぐら" : "「海底つまらんすぎてワロタ」って言いながら地上にやってきたアトランティスの末裔。\n彼女がお気に入りで着ている服は（サメの被りモノも含めて）日本で買った。本人曰く暇な時は海洋生物と会話するのが好き。",
        "ワトソン・アメリア" : "ネットで喋るキツネとか魔法リスとか超人ワンコとか、色々ホロライブにまつわる変な噂を耳にし、気になって調査に出向いたところ、彼女自身もアイドルになりたくなった。\n暇つぶしに反射神経を鍛えられるFPSやパズルゲーなどを好んでやっている。「初歩的なことなんでしょう？」",
        "IRyS" : "ホロライブEnglish Project: HOPE所属歌姫 IRyS\n遥か太古、かの楽園に希望をもたらした悪魔と天使のハーフ、「ネフィリム」とも呼ばれている、IRyS。本名を██アイリス。絶望にまみれた現世は彼女を2回目の目覚めへと誘った（いざなった）。そして彼女は希望を世間に届けたいと再び歌に想いを乗せる。\n基本はハーフ状態を保っているが、種族としてはまだ幼いがため、感情や「他の要素」によってどちらかに傾く可能性がある。それによって容姿も少し変わるらしい。\n彼女は2回目の目覚めより以前のことはあまり語りたがらない。それは彼女は「希望の化身」ゆえに前向きな姿勢を示しているのか、それともーー。\n「人々の助けになるのは未来ではない。未来は自分の手で作るもの。\n救いも余計なお世話。救われるなら頑張る気にはならない。\n絶望の深淵から見える僅かな光、立ち直れる暖かさ。\nーー希望さえあれば、生きようと、頑張ろうと思える。」",
        "九十九佐命" : "「議会」の一角であり、神々より作られし最初の概念「空間」の代弁者にあたる。\n現世に顕現してからとある理由で占星術を研究しはじめ、神秘の禁忌に無自覚に触れてしまい、「古き神」の使徒に。\n「空間」とは、宇宙だけでなく、次元、物理などの概念を指す。それは果て無き概念であり、いまだ永遠に成長している概念である。未解明のことも多いため、その権現である彼女は一件意味不明なことばかりをしたり、話したりするが、本人曰く「それは人類の理解にはまだ早いだけである。」また彼女の見た目と違ってまだ......こど、、、若い。",
        "セレス・ファウナ" : "「議会」の一角であり、神々より作られし二番目の概念「自然」の番人にあたる。\n彼女は自然を守るべく「ドルイド」として顕現した。彼女には麒麟の血が流れており、従えてもいる。その角はとある樹の枝そのものであり、決して鹿の類ではない。\n「自然」とは、星の人類以外全ての有機物を指す。母なる自然である彼女の囁きには癒し効果があると語り伝えられている。その真偽は体験した者のみぞ知る。しかし、母なる自然である彼女は普段とても穏やかで少しおちゃめなところもあるが、、彼女に逆らうものは自然の恐ろしさを知ることになるのであろう。",
        "オーロ・クロニー" : "「議会」の一角であり、神々より作られし三番目の概念「時間」の典獄にあたる。\n在り方が人間によって一番歪められた概念である。刃を取り始めたのは無意識な行動ではあるが、本人もきっと喜んで動いている。「時間」から逃れられる人間はいない、ほとんど人間もまた彼女の牢獄からの解放を望まない。\n本来「時間」という概念の役割は歯車として、他の概念と連携を取るための存在であった。 ただある日、人間は日の出や日没に意味を与え、その発想は「時間」に刻まれた。それ以来「時間」は人間のみにしか認識できない概念となり、それを紡いだ罪として「時間」に囚われ始めた。然る後、彼女は生ある者を時の牢獄に捉えるためだけに動く獄吏と化した。無口でクールな性格は昔から変わってないが、今の彼女は加虐を嗜むようなプライド高き典獄である。",
        "七詩ムメイ" : "「議会」の一角であり、人類の祟りより生まれし概念「文明」の守護者にあたる。\n彼女は非常に博識で、旅を好む熟練な旅人である。だが目の当たりにしたもの、伝え聞いたもの、身で体験したものがあまりにも多く、彼女自分自身の名前でさえ忘れ去られてしまった。彼女は他の議員とは異色な存在、人間の誕生や存在証明であり、それこそが他の生命体や概念との差である。\n「文明」とは、知恵を乞った生命体、人間が作りだしたものであり、人類が築き上げたものを指す。彼女自分は「神々」に作られた概念ではないがため、自ら今の姿を選び、人類が考えた賢明の代表動物である梟を見た目に取り組んでいる。彼女はとても優しく、賢い努力家。不思議ながら不憫で可憐な雰囲気が漂っている。\nーー長い年月の旅を一人でしていると彼女は多少寂しく感じていたそうだ。だから彼女は「文明」の中でも、人間にとっても役割がかなり重要な紙を選んで友達を作った。「ボロボロになっていても友達は友達･･･。」",
        "ハコス・ベールズ" : "「議会」の一角であり、世界より作られし概念「カオス」そのものにあたる。\n神々に命じられ、「議会」の議長をやっている。基本は放任主義である。議長を一任されたことに彼女も含めて誰一人納得してない。だが任命されたからには従うのみ。見た目がネズミだからと言って侮ってはいけない、何故ならばネズミは「カオス」の前触れだ。\n「カオス」とは混沌、運気もまたは自由の類である。彼女は爛漫と輝く笑顔の持ち主であり、縛られることはなく、気のままに走り回る永久機関。彼女は世界はルールだけでは成り立たないと彼女は思っている、ゆえに彼女は世の理を全てがぶっ壊しにきた。混乱を見るのが最大の愉しみだからと、ほとんどの場合は手を出さない。"
    ]
    
    private let yt_link = [
        "ときのそら" : "https://www.youtube.com/channel/UCp6993wxpyDPHUpavwDFqgg",
        "AZKi" : "https://www.youtube.com/channel/UC0TXe_LYZ4scaW2XMyi5_kw",
        "ロボ子さん" : "https://www.youtube.com/channel/UCDqI2jOz0weumE8s7paEk6g",
        "さくらみこ" : "https://www.youtube.com/channel/UC-hM6YJuNYVAmUWxeIr9FeA",
        "白上フブキ" : "https://www.youtube.com/channel/UCdn5BQ06XqgXoAxIhbqw5Rg",
        "夏色まつり" : "https://www.youtube.com/channel/UCQ0UDLQCjY0rmuxCDE38FGg",
        "夜空メル" : "https://www.youtube.com/channel/UCD8HOxPs4Xvsm8H0ZxXGiBw",
        "赤井はあと" : "https://www.youtube.com/channel/UC1CfXB_kRs3C-zaeTG3oGyg",
        "アキ・ローゼンタール" : "https://www.youtube.com/channel/UCFTLzh12_nrtzqBPsTCqenA",
        "湊あくあ" : "https://www.youtube.com/channel/UC1opHUrw8rvnsadT-iGp7Cg",
        "癒月ちょこ" : "https://www.youtube.com/channel/UC1suqwovbL1kzsoaZgFZLKg",
        "百鬼あやめ" : "https://www.youtube.com/channel/UC7fk0CB07ly8oSl0aqKkqFg",
        "紫咲シオン" : "https://www.youtube.com/channel/UCXTpFs_3PqI41qX2d9tL2Rw",
        "大空スバル" : "https://www.youtube.com/channel/UCvzGlP9oQwU--Y0r9id_jnA",
        "大神ミオ" : "https://www.youtube.com/channel/UCp-5t9SrOQwXMU7iIjQfARg",
        "猫又おかゆ" : "https://www.youtube.com/channel/UCvaTdHTWBGv3MKj3KVqJVCw",
        "戌神ころね" : "https://www.youtube.com/channel/UChAnqc_AY5_I3Px5dig3X1Q",
        "不知火フレア" : "https://www.youtube.com/channel/UCvInZx9h3jC2JzsIzoOebWg",
        "白銀ノエル" : "https://www.youtube.com/channel/UCdyqAaZDKHXg4Ahi7VENThQ",
        "兎田ぺこら" : "https://www.youtube.com/channel/UC1DCedRgGHBdm81E1llLhOQ",
        "宝鐘マリン" : "https://www.youtube.com/channel/UCCzUftO8KOVkV4wQG1vkUvg",
        "潤羽るしあ" : "https://www.youtube.com/channel/UCl_gCybOJRIgOXw6Qb4qJzQ",
        "星街すいせい" : "https://www.youtube.com/channel/UC5CwaMl1eIgY8h02uZw7u8A",
        "天音かなた" : "https://www.youtube.com/channel/UCZlDXzGoo7d44bwdNObFacg",
        "桐生ココ" : "https://www.youtube.com/channel/UCS9uQI-jC3DE0L4IpXyvr6w",
        "角巻わため" : "https://www.youtube.com/channel/UCqm3BQLlJfvkTsX_hvm0UmA",
        "常闇トワ" : "https://www.youtube.com/channel/UC1uv2Oq6kNxgATlCiez59hw",
        "姫森ルーナ" : "https://www.youtube.com/channel/UCa9Y57gfeY0Zro_noHRVrnw",
        "雪花ラミィ" : "https://www.youtube.com/channel/UCFKOVgVbGmX65RxO3EtH3iw",
        "桃鈴ねね" : "https://www.youtube.com/channel/UCAWSyEs_Io8MtpY3m-zqILA",
        "獅白ぼたん" : "https://www.youtube.com/channel/UCUKD-uaobj9jiqB-VXt71mA",
        "尾丸ポルカ" : "https://www.youtube.com/channel/UCK9V2B22uJYu3N7eR_BT9QA",
        "森美声" : "https://www.youtube.com/channel/UCL_qhgtOy0dy1Agp8vkySQg",
        "小鳥遊キアラ" : "https://www.youtube.com/channel/UCHsx4Hqa-1ORjQTh9TYDhww",
        "一伊那尓栖" : "https://www.youtube.com/channel/UCMwGHR0BTZuLsmjY_NT5Pwg/featured",
        "がうる・ぐら" : "https://www.youtube.com/channel/UCoSrY_IQQVpmIRZ9Xf-y93g",
        "ワトソン・アメリア" : "https://www.youtube.com/channel/UCyl1z3jo3XHR1riLFKG5UAg",
        "IRyS" : "https://www.youtube.com/channel/UC8rcEBzJSleTkf_-agPM20g",
        "九十九佐命" : "https://www.youtube.com/channel/UCsUj0dszADCGbF3gNrQEuSQ",
        "セレス・ファウナ" : "https://www.youtube.com/channel/UCO_aKKYxn4tvrqPjcTzZ6EQ",
        "オーロ・クロニー" : "https://www.youtube.com/channel/UCmbs8T6MWqUHP1tIQvSgKrg",
        "七詩ムメイ" : "https://www.youtube.com/channel/UC3n5uGu18FoCy23ggWWp8tA",
        "ハコス・ベールズ" : "https://www.youtube.com/channel/UCgmPnx-EEeOrZSg5Tiw7ZRQ"
    ]
    
    private let tw_link = [
        "ときのそら" : "https://twitter.com/tokino_sora",
        "AZKi" : "https://twitter.com/AZKi_VDiVA",
        "ロボ子さん" : "https://twitter.com/robocosan",
        "さくらみこ" : "https://twitter.com/sakuramiko35",
        "白上フブキ" : "https://twitter.com/shirakamifubuki",
        "夏色まつり" : "https://twitter.com/natsuiromatsuri",
        "夜空メル" : "https://twitter.com/yozoramel",
        "赤井はあと" : "https://twitter.com/akaihaato",
        "アキ・ローゼンタール" : "https://twitter.com/akirosenthal",
        "湊あくあ" : "https://twitter.com/minatoaqua",
        "癒月ちょこ" : "https://twitter.com/yuzukichococh",
        "百鬼あやめ" : "https://twitter.com/nakiriayame",
        "紫咲シオン" : "https://twitter.com/murasakishionch",
        "大空スバル" : "https://twitter.com/oozorasubaru",
        "大神ミオ" : "https://twitter.com/ookamimio",
        "猫又おかゆ" : "https://twitter.com/nekomataokayu",
        "戌神ころね" : "https://twitter.com/inugamikorone",
        "不知火フレア" : "https://twitter.com/shiranuiflare",
        "白銀ノエル" : "https://twitter.com/shiroganenoel",
        "兎田ぺこら" : "https://twitter.com/usadapekora",
        "宝鐘マリン" : "https://twitter.com/houshoumarine",
        "潤羽るしあ" : "https://twitter.com/uruharushia",
        "星街すいせい" : "https://twitter.com/suisei_hosimati",
        "天音かなた" : "https://twitter.com/amanekanatach",
        "桐生ココ" : "https://twitter.com/kiryucoco",
        "角巻わため" : "https://twitter.com/tsunomakiwatame",
        "常闇トワ" : "https://twitter.com/tokoyamitowa",
        "姫森ルーナ" : "https://twitter.com/himemoriluna",
        "雪花ラミィ" : "https://twitter.com/yukihanalamy",
        "桃鈴ねね" : "https://twitter.com/momosuzunene",
        "獅白ぼたん" : "https://twitter.com/shishirobotan",
        "尾丸ポルカ" : "https://twitter.com/omarupolka",
        "森美声" : "https://twitter.com/manoaloe",
        "小鳥遊キアラ" : "https://twitter.com/takanashikiara",
        "一伊那尓栖" : "https://twitter.com/ninomaeinanis",
        "がうる・ぐら" : "https://twitter.com/gawrgura",
        "ワトソン・アメリア" : "https://twitter.com/watsonameliaEN",
        "IRyS" : "https://twitter.com/irys_en",
        "九十九佐命" : "https://twitter.com/tsukumosana",
        "セレス・ファウナ" : "https://twitter.com/ceresfauna",
        "オーロ・クロニー" : "https://twitter.com/ourokronii",
        "七詩ムメイ" : "https://twitter.com/nanashimumei_en",
        "ハコス・ベールズ": "https://twitter.com/hakosbaelz"
    ]

    func get_intro()->String {
        return self.introduction[self.name]!
    }
    func get_yt_link()->String {
        return self.yt_link[self.name]!
    }
    func get_tw_link()->String {
        return self.tw_link[self.name]!
    }
}
